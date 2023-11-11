import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/service/map_theme_service.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

import '../model/settings.dart';
import '../service/settings.service.dart';

// Define a constant CameraPosition named kInitialMapPosition.
final CameraPosition kInitialMapPosition = CameraPosition(
  // Set the target coordinates (latitude and longitude) for the initial position.
  target: LatLng(37.09024, -95.712891),
  // Set the initial zoom level for the map.
  zoom: 5,
  // Set the tilt angle for the map camera.
  tilt: 50,
);

/// This class is an abstract class that extends ConsumerState,
/// Implying that it is intended to be used in conjunction with a widget that consumes a provider (perhaps for a map-related functionality).
/// The class provides methods for managing the state of a map, including setting up markers, moving to specific locations, and handling user location.
abstract class MapState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T> {
  // Completer to handle asynchronous completion of GoogleMapController
  final Completer<GoogleMapController> mapController = Completer();
  // Holds the marker icon
  BitmapDescriptor? markerIcon;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // On dependency change (e.g., widget changes), get the marker pin
    getMarkerPin();
  }

  // Gets the marker pin and sets it to markerIcon if not already set
  Future<void> getMarkerPin() async {
    if (markerIcon != null) return;
    markerIcon = await getPin("pin");
  }

// Loads the marker pin from assets
  Future<BitmapDescriptor?> getPin(String imgName) async {
    // Adjusts the icon name based on device pixel ratio
    // for Android devices
    // Uses ImageConfiguration to load the image
    var iconName = imgName;
    if (Platform.isAndroid) {
      double mq = MediaQuery.of(context).devicePixelRatio;
      if (mq > 1.5 && mq < 2.5)
        iconName = "3x/$iconName";
      else if (mq >= 2.5) iconName = "3x/$iconName";
    }
    return await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
        devicePixelRatio: MediaQuery.of(context).devicePixelRatio,
      ),
      'assets/images/$iconName.png',
    );
  }

  /// Moves the map to fit a list of LatLng locations with optional delay
  Future<void> moveMapToLatLngList(List<LatLng> list,
      {bool delay = true}) async {
    // Obtains the map controller and animates the camera to fit the LatLng list
    if (delay) await Future.delayed(Duration(seconds: 1));
    final controller = await mapController.future;
    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(
        boundsFromLatLngList(list),
        100,
      ),
    );
  }

  /// Calculates bounds from a list of LatLng locations
  LatLngBounds boundsFromLatLngList(List<LatLng> list) {
    // Calculates the northeast and southwest bounds
    double? x0, x1, y0, y1;
    for (var latLng in list) {
      if (x0 == null) {
        x0 = x1 = latLng.latitude;
        y0 = y1 = latLng.longitude;
      } else {
        if (latLng.latitude > x1!) x1 = latLng.latitude;
        if (latLng.latitude < x0) x0 = latLng.latitude;
        if (latLng.longitude > y1!) y1 = latLng.longitude;
        if (latLng.longitude < y0!) y0 = latLng.longitude;
      }
    }
    return LatLngBounds(
      northeast: LatLng(x1!, y1!),
      southwest: LatLng(x0!, y0!),
    );
  }

  /// Gets the user's location
  Future<LatLng?> getUserLocation() async {
    try {
      var location = await Location().getLocation();
      return LatLng(location.latitude!, location.longitude!);
    } on PlatformException catch (error, stack) {
      if (error.code != "PERMISSION_DENIED") logError(error, stack);
      return null;
    } on Exception catch (e, stack) {
      logError(e, stack);
      return null;
    }
  }

  /// Animates the camera to fit given bounds
  void animateToBounds(LatLngBounds bounds) async {
    var con = await mapController.future;
    con.animateCamera(
      CameraUpdate.newLatLngBounds(
        bounds,
        50,
      ),
    );
  }

  /// Moves the map to a specific location with a delay
  void moveMapToLocation(LatLng location) async {
    var con = await mapController.future;
    await Future.delayed(Duration(seconds: 1));
    con.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: location,
          tilt: 40.440717697143555,
          zoom: 15.151926040649414,
        ),
      ),
    );
  }

  /// Moves the map to the user's location with a delay
  void moveToUser() async {
    var loc = await getUserLocation();
    if (loc == null) return;
    var con = await mapController.future;
    await Future.delayed(Duration(seconds: 1));
    con.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(loc.latitude, loc.longitude),
          tilt: 59.440717697143555,
          zoom: 19.151926040649414,
        ),
      ),
    );
  }
}

/// This Flutter class, CanMoveMap, is a StatefulWidget that represents a Google Map with customizable properties and functionalities.
/// It utilizes the Google Maps Flutter plugin. The class allows the user to interact with the map and handles various lifecycle events.
/// It incorporates features such as customizable markers, initial camera position, and the ability to react to user interactions like taps and camera movements.
class CanMoveMap extends StatefulWidget {
  // Constructor with default values for various map features
  // that can be customized when creating an instance.
  CanMoveMap({
    Key? key,
    this.myLocationButtonEnabled = false,
    this.zoomControlsEnabled = false,
    this.tiltGesturesEnabled = true,
    this.scrollGesturesEnabled = true,
    this.myLocationEnabled = false,
    this.compassEnabled = false,
    this.initialCameraPosition,
    this.onTap,
    required this.onMapCreated,
    this.markers = const {},
  }) : super(key: key);

  // Callback when the map is created.
  final Function(GoogleMapController, CustomInfoWindowController) onMapCreated;
  // Callback when the map is tapped.
  final Function(LatLng)? onTap;
  // Initial camera position of the map.
  final CameraPosition? initialCameraPosition;
  // Set of markers to be displayed on the map.
  final Set<Marker> markers;
  // Boolean flags for controlling map features.
  final bool myLocationButtonEnabled,
      scrollGesturesEnabled,
      zoomControlsEnabled,
      tiltGesturesEnabled,
      myLocationEnabled,
      compassEnabled;

  // Override to create the associated State object.
  @override
  State<CanMoveMap> createState() => _CanMoveMapState();
}

class _CanMoveMapState extends State<CanMoveMap> with WidgetsBindingObserver {
  // Controller for managing custom info windows.
  final _customInfoWindowController = CustomInfoWindowController();
  // Completer to handle the asynchronous initialization of GoogleMapController.
  final Completer<GoogleMapController> mapController = Completer();
  // Service for managing the map theme.
  final _mapThemeService = MapThemeService();
  // Variable to store the current theme mode.
  ThemeMode themeMode = ThemeMode.system;

  // Lifecycle method called when the state is initialized.
  @override
  void initState() {
    super.initState();
    // Add the widget as an observer to lifecycle events.
    WidgetsBinding.instance.addObserver(this);
  }

  // Lifecycle method called when dependencies change.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  // Lifecycle method called when the platform brightness changes.
  @override
  void didChangePlatformBrightness() {
    _getBrightness();
  }

  // Lifecycle method called when the state is disposed.
  @override
  void dispose() {
    // Remove the widget as an observer.
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // Build method to construct the widget tree.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      // Rebuilds the widget tree when settings change.
      valueListenable: SettingsService.box.listenable(),
      builder: (context, box, __) {
        // Read the current settings.
        final settings = SettingsService.read();
        // Determine the current theme mode.
        themeMode = getThemeMode(settings.themeMode);
        _getBrightness();

        // Return a GoogleMap widget with customized properties.
        return GoogleMap(
          myLocationButtonEnabled: widget.myLocationButtonEnabled,
          zoomControlsEnabled: widget.zoomControlsEnabled,
          tiltGesturesEnabled: widget.tiltGesturesEnabled,
          scrollGesturesEnabled: widget.scrollGesturesEnabled,
          myLocationEnabled: widget.myLocationEnabled,
          compassEnabled: widget.compassEnabled,
          initialCameraPosition:
              widget.initialCameraPosition ?? kInitialMapPosition,
          onTap: (position) {
            // Hide info window on map tap.
            _customInfoWindowController.hideInfoWindow?.call();
            // Trigger the onTap callback.
            widget.onTap?.call(position);
          },
          onCameraMove: (position) {
            // Trigger the onCameraMove callback.
            _customInfoWindowController.onCameraMove?.call();
          },
          onMapCreated: (con) {
            // Complete the map controller initialization.
            mapController.complete(con);
            // Connect the info window controller to the map controller.
            _customInfoWindowController.googleMapController = con;
            // Trigger the onMapCreated callback.
            widget.onMapCreated(con, _customInfoWindowController);
          },
          markers: widget.markers.toSet(),
        );
      },
    );
  }

  // Method to determine the brightness and update the map theme accordingly.
  _getBrightness() {
    Brightness newBright = PlatformDispatcher.instance.platformBrightness;
    if (themeMode == ThemeMode.light) {
      newBright = Brightness.light;
    } else if (themeMode == ThemeMode.dark) {
      newBright = Brightness.dark;
    }
    _changeMapTheme(newBright);
  }

  // Method to change the map theme based on brightness.
  Future<void> _changeMapTheme([Brightness? platformBrightness]) {
    return mapController.future.then(
      (GoogleMapController controller) async => controller.setMapStyle(
        await _mapThemeService.getTheme(platformBrightness ?? Brightness.dark),
      ),
    );
  }
}
