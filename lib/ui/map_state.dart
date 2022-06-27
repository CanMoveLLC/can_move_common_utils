import 'dart:async';
import 'dart:io';

import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/service/map_theme_service.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:location/location.dart';

import '../model/settings.dart';
import '../service/settings.service.dart';

final CameraPosition kInitialMapPosition = CameraPosition(
  target: LatLng(37.09024, -95.712891),
  zoom: 5,
  tilt: 50,
);

abstract class MapState<T extends StatefulWidget> extends State<T> {
  final Completer<GoogleMapController> mapController = Completer();
  BitmapDescriptor? markerIcon;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getMarkerPin();
  }

  Future<BitmapDescriptor?> getMarkerPin() async {
    if (markerIcon != null) return markerIcon;
    var iconName = "pin";
    if (Platform.isAndroid) {
      double mq = MediaQuery.of(context).devicePixelRatio;
      if (mq > 1.5 && mq < 2.5)
        iconName = "3x/pin";
      else if (mq >= 2.5) iconName = "3x/pin";
    }
    markerIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
        devicePixelRatio: MediaQuery.of(context).devicePixelRatio,
      ),
      'assets/images/$iconName.png',
    );
    return markerIcon;
  }

  Future<void> moveMapToLatLngList(List<LatLng> list,
      {bool delay = true}) async {
    if (delay) await Future.delayed(Duration(seconds: 1));
    final controller = await mapController.future;
    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(
        boundsFromLatLngList(list),
        50,
      ),
    );
  }

  LatLngBounds boundsFromLatLngList(List<LatLng> list) {
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

  void animateToBounds(LatLngBounds bounds) async {
    var con = await mapController.future;
    con.animateCamera(
      CameraUpdate.newLatLngBounds(
        bounds,
        50,
      ),
    );
  }

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

class CanMoveMap extends StatefulWidget {
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

  final Function(GoogleMapController, CustomInfoWindowController) onMapCreated;
  final Function(LatLng)? onTap;
  final CameraPosition? initialCameraPosition;
  final Set<Marker> markers;
  final bool myLocationButtonEnabled,
      scrollGesturesEnabled,
      zoomControlsEnabled,
      tiltGesturesEnabled,
      myLocationEnabled,
      compassEnabled;

  @override
  State<CanMoveMap> createState() => _CanMoveMapState();
}

class _CanMoveMapState extends State<CanMoveMap> with WidgetsBindingObserver {
  final _customInfoWindowController = CustomInfoWindowController();
  final Completer<GoogleMapController> mapController = Completer();
  final _mapThemeService = MapThemeService();
  ThemeMode themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didChangePlatformBrightness() {
    _getBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: SettingsService.box.listenable(),
      builder: (context, box, __) {
        final settings = SettingsService.read();
        themeMode = getThemeMode(settings.themeMode);
        _getBrightness();

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
            _customInfoWindowController.hideInfoWindow?.call();
            widget.onTap?.call(position);
          },
          onCameraMove: (position) {
            _customInfoWindowController.onCameraMove?.call();
          },
          onMapCreated: (con) {
            mapController.complete(con);
            _customInfoWindowController.googleMapController = con;
            widget.onMapCreated(con, _customInfoWindowController);
          },
          markers: widget.markers.toSet(),
        );
      },
    );
  }

  _getBrightness() {
    var newBright = WidgetsBinding.instance.window.platformBrightness;
    if (themeMode == ThemeMode.light)
      newBright = Brightness.light;
    else if (themeMode == ThemeMode.dark) newBright = Brightness.dark;
    _changeMapTheme(newBright);
  }

  Future _changeMapTheme([Brightness? platformBrightness]) async {
    var style = await _mapThemeService.getTheme(
      platformBrightness ?? Brightness.dark,
    );
    final controller = await mapController.future;
    controller.setMapStyle(style);
  }
}
