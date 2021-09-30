import 'dart:async';

import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/service/map_theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

abstract class MapState<T extends StatefulWidget> extends State<T>
    with WidgetsBindingObserver {
  final Completer<GoogleMapController> mapController = Completer();
  final _mapThemeService = MapThemeService();

  Brightness get brightness {
    return WidgetsBinding.instance?.window.platformBrightness ??
        Brightness.light;
  }

  @override
  void didChangePlatformBrightness() {
    _getBrightness();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    _getBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  _getBrightness() {
    var newBright = WidgetsBinding.instance?.window.platformBrightness;
    changeMapTheme(newBright);
  }

  Future changeMapTheme([Brightness? platformBrightness]) async {
    var style = await _mapThemeService.getTheme(
      platformBrightness ?? Brightness.dark,
    );
    final controller = await mapController.future;
    controller.setMapStyle(style);
  }

  Future<void> moveMapToLatLngList(List<LatLng> list, {bool delay = true}) async {
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
        northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
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
