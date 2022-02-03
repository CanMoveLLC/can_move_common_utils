import 'dart:convert';

import 'package:can_move_common_utils/ui/notify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:google_maps_webservice/directions.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart' as loc;

import '../helpers/utils.dart';
import '../model/load.dart';

class LoadRouteInformation {
  final gm.Polyline polyline;
  final double distance;
  final double price;
  final gm.LatLngBounds bounds;

  LoadRouteInformation({
    required this.price,
    required this.polyline,
    required this.distance,
    required this.bounds,
  });
}

class MapsService {
  Future changeLocationSettings({
    loc.LocationAccuracy? accuracy = loc.LocationAccuracy.high,
    int? interval = 10000,
    double? distanceFilter = 200,
  }) async {
    try {
      return await loc.Location().changeSettings(
        interval: interval,
        accuracy: accuracy,
        distanceFilter: distanceFilter,
      );
    } on Exception catch (error, stack) {
      logError(error, stack);
      return false;
    }
  }

  Future<LocationPermission> requestPermission() async {
    try {
      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.whileInUse ||
          perm == LocationPermission.always) perm;
      return await Geolocator.requestPermission();
    } on PlatformException catch (e, stack) {
      logError(e, stack);
      return LocationPermission.denied;
    }
  }

  Future<gm.LatLng?> getUserLocation() async {
    try {
      // Test if location services are enabled.
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        notify('Location services are disabled.');
        return null;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          notify('Location permissions are denied');
          return null;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        notify(
            'Location permissions are permanently denied, we cannot request permissions.');
        return null;
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      var position = await Geolocator.getCurrentPosition();
      return gm.LatLng(position.latitude, position.longitude);
    } on PlatformException catch (error, stack) {
      if (error.code != "PERMISSION_DENIED") logError(error, stack);
      return null;
    } on Exception catch (e, stack) {
      logError(e, stack);
      return null;
    }
  }

  Future<DirectionsResponse> getWebDirections({
    required LoadLocation origin,
    required LoadLocation destination,
    List<Waypoint>? waypoints,
  }) async {
    var org = Uri.encodeComponent(
        "${origin.location.latitude},${origin.location.longitude}");
    var dest = Uri.encodeComponent(
        "${destination.location.latitude},${destination.location.longitude}");
    var mapUrl =
        "$mapApiUrl/directions/json?origin=$org&destination=$dest&key=$mapKey";
    if (waypoints?.isNotEmpty == true) {
      mapUrl = "$mapUrl&waypoints=${Uri.encodeComponent(waypoints!.join("|"))}";
    }
    var url = Uri.parse('$proxyUrl/$mapUrl');
    var response = await http.get(url);
    return DirectionsResponse.fromJson(json.decode(response.body));
  }

  Future<LoadRouteInformation?> getDirections({
    required LoadLocation origin,
    required LoadLocation destination,
  }) async {
    DirectionsResponse res;
    try {
      if (kIsWeb)
        res = await getWebDirections(origin: origin, destination: destination);
      else {
        var directions = GoogleMapsDirections(apiKey: mapKey);
        res = await directions.directionsWithLocation(
          Location(
            lat: origin.location.latitude,
            lng: origin.location.longitude,
          ),
          Location(
            lat: destination.location.latitude,
            lng: destination.location.longitude,
          ),
        );
      }
      if (res.isOkay &&
          res.routes.isNotEmpty &&
          res.routes.first.legs.isNotEmpty) {
        var distance = 0.0;
        for (var leg in res.routes.first.legs) {
          distance += leg.distance.value.toDouble();
        }
        distance = distance / 1609; // convert meters to miles
        return LoadRouteInformation(
          price: distance.round() * 1.0 /* dollar */,
          polyline: _createRoute(res.routes.first.overviewPolyline.points),
          distance: distance,
          bounds: gm.LatLngBounds(
            northeast: gm.LatLng(
              res.routes.first.bounds.northeast.lat,
              res.routes.first.bounds.northeast.lng,
            ),
            southwest: gm.LatLng(
              res.routes.first.bounds.southwest.lat,
              res.routes.first.bounds.southwest.lng,
            ),
          ),
        );
      } else {
        return null;
      }
    } on Exception catch (e, stack) {
      logError(e, stack);
      return null;
    }
  }

  Future<LoadRouteInformation?> getDirection({
    required LoadLocation origin,
    required List<LoadLocation> destinations,
  }) async {
    DirectionsResponse res;
    try {
      if (kIsWeb)
        res = await getWebDirections(
          origin: origin,
          destination: destinations.last,
          waypoints: destinations
              .sublist(0, destinations.length - 1)
              .map((e) => Waypoint.fromLocation(Location(
                    lat: e.location.latitude,
                    lng: e.location.longitude,
                  )))
              .toList(),
        );
      else {
        var directions = GoogleMapsDirections(apiKey: mapKey);
        res = await directions.directionsWithLocation(
          Location(
            lat: origin.location.latitude,
            lng: origin.location.longitude,
          ),
          Location(
            lat: destinations.last.location.latitude,
            lng: destinations.last.location.longitude,
          ),
          waypoints: destinations
              .sublist(0, destinations.length - 1)
              .map((e) => Waypoint.fromLocation(Location(
                    lat: e.location.latitude,
                    lng: e.location.longitude,
                  )))
              .toList(),
        );
      }
      if (res.isOkay &&
          res.routes.isNotEmpty &&
          res.routes.first.legs.isNotEmpty) {
        var distance = 0.0;
        for (var leg in res.routes.first.legs) {
          distance += leg.distance.value.toDouble();
        }
        distance = distance / 1609; // convert meters to miles
        return LoadRouteInformation(
          price: distance.round() * 1.0 /* dollar */,
          polyline: _createRoute(res.routes.first.overviewPolyline.points),
          distance: distance,
          bounds: gm.LatLngBounds(
            northeast: gm.LatLng(
              res.routes.first.bounds.northeast.lat,
              res.routes.first.bounds.northeast.lng,
            ),
            southwest: gm.LatLng(
              res.routes.first.bounds.southwest.lat,
              res.routes.first.bounds.southwest.lng,
            ),
          ),
        );
      } else {
        return null;
      }
    } on Exception catch (e, stack) {
      logError(e, stack);
      return null;
    }
  }

  gm.Polyline _createRoute(String encondedPoly) {
    var result = PolylinePoints().decodePolyline(encondedPoly);
    var points = result.map((e) => gm.LatLng(e.latitude, e.longitude)).toList();
    // var points = _convertToLatLng(_decodePoly(encondedPoly));
    return gm.Polyline(
      polylineId: gm.PolylineId('polylineid'),
      color: Color(0xFFFB8C00),
      // jointType: gm.JointType.round,
      // endCap: gm.Cap.roundCap,
      // startCap: gm.Cap.roundCap,
      points: points,
      // width: 5,
    );
  }
}
