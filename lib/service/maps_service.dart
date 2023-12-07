import 'dart:convert';

import 'package:can_move_common_utils/ui/notify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:google_maps_webservice/directions.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart' as loc;

import '../helpers/utils.dart';
import '../model/move.dart';

// Class representing route information for a move
class MoveRouteInformation {
  final gm.Polyline polyline;
  final double distance;
  final double price;
  final gm.LatLngBounds bounds;

  MoveRouteInformation({
    required this.price,
    required this.polyline,
    required this.distance,
    required this.bounds,
  });
}

// Service class for handling map-related functionalities
class MapsService {
  // Method to change location settings
  Future<bool> changeLocationSettings({
    int? interval = 10000,
    double? distanceFilter = 200,
    loc.LocationAccuracy? accuracy = loc.LocationAccuracy.high,
  }) {
    try {
      return loc.Location().changeSettings(
        interval: interval,
        accuracy: accuracy,
        distanceFilter: distanceFilter,
      );
    } on Exception catch (error, stack) {
      logError(error, stack);
      return Future<bool>.value(false);
    }
  }

  // Method to request location permission
  Future<LocationPermission> requestPermission() async {
    try {
      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.whileInUse ||
          perm == LocationPermission.always) {}
      return await Geolocator.requestPermission();
    } on PlatformException catch (e, stack) {
      logError(e, stack);
      return LocationPermission.denied;
    }
  }

  // Method to get the user's current location
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

  // Method to get directions for a move
  Future<DirectionsResponse> getWebDirections({
    required MoveLocation origin,
    required MoveLocation destination,
    List<Waypoint>? waypoints,
  }) async {
    final String org = Uri.encodeComponent(
      "${origin.location.latitude},${origin.location.longitude}",
    );
    final String dest = Uri.encodeComponent(
      "${destination.location.latitude},${destination.location.longitude}",
    );
    String mapUrl =
        "$mapApiUrl/directions/json?origin=$org&destination=$dest&key=$mapKey";
    if (waypoints?.isNotEmpty == true) {
      mapUrl = "$mapUrl&waypoints=${Uri.encodeComponent(waypoints!.join("|"))}";
    }
    final Uri url = Uri.parse('$proxyUrl/$mapUrl');
    final http.Response response = await http.get(url);
    return DirectionsResponse.fromJson(json.decode(response.body));
  }

  // Method to get route information for a move
  Future<MoveRouteInformation?> getDirections({
    required MoveLocation origin,
    required MoveLocation destination,
  }) async {
    DirectionsResponse res;
    try {
      if (kIsWeb) {
        res = await getWebDirections(
          origin: origin,
          destination: destination,
        );
      } else {
        final GoogleMapsDirections directions = GoogleMapsDirections(
          apiKey: mapKey,
        );
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
        double distance = 0.0;
        for (final Leg leg in res.routes.first.legs) {
          distance += leg.distance.value.toDouble();
        }
        distance = distance / 1609; // convert meters to miles
        return MoveRouteInformation(
          distance: distance,
          price: (distance.round() * 1.0) /* dollar */,
          polyline: _createRoute(res.routes.first.overviewPolyline.points),
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

  // Method to get route information for a move with multiple destinations
  Future<MoveRouteInformation?> getDirection({
    required MoveLocation origin,
    required List<MoveLocation> destinations,
  }) async {
    DirectionsResponse res;
    try {
      if (kIsWeb) {
        res = await getWebDirections(
          origin: origin,
          destination: destinations.last,
          waypoints: destinations
              .sublist(0, destinations.length - 1)
              .map<Waypoint>((MoveLocation e) {
            return Waypoint.fromLocation(Location(
              lat: e.location.latitude,
              lng: e.location.longitude,
            ));
          }).toList(),
        );
      } else {
        final GoogleMapsDirections directions =
            GoogleMapsDirections(apiKey: mapKey);
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
              .map<Waypoint>((MoveLocation e) {
            return Waypoint.fromLocation(Location(
              lat: e.location.latitude,
              lng: e.location.longitude,
            ));
          }).toList(),
        );
      }
      if (res.isOkay &&
          res.routes.isNotEmpty &&
          res.routes.first.legs.isNotEmpty) {
        double distance = 0.0;
        for (final Leg leg in res.routes.first.legs) {
          distance += leg.distance.value.toDouble();
        }
        distance = distance / 1609; // convert meters to miles
        return MoveRouteInformation(
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

  // Method to create a Google Maps Polyline from encoded points
  gm.Polyline _createRoute(String encondedPoly) {
    final List<PointLatLng> result = PolylinePoints().decodePolyline(
      encondedPoly,
    );
    final List<gm.LatLng> points = result.map<gm.LatLng>((PointLatLng e) {
      return gm.LatLng(e.latitude, e.longitude);
    }).toList();
    return gm.Polyline(
      points: points,
      color: const Color(0xFFFB8C00),
      polylineId: const gm.PolylineId('polylineid'),
    );
  }
}
