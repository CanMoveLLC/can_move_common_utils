import 'package:can_move_common_utils/model/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:google_maps_webservice/directions.dart';
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
  gm.LatLng? location;
  final Stream<loc.LocationData> locationStream =
      loc.Location().onLocationChanged;

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

  Future<gm.LatLng?> getUserLocation() async {
    try {
      var l = await loc.Location().getLocation();
      location = gm.LatLng(l.latitude!, l.longitude!);
      return location;
    } on PlatformException catch (error, stack) {
      if (error.code != "PERMISSION_DENIED") logError(error, stack);
      return null;
    } on Exception catch (e, stack) {
      logError(e, stack);
      return null;
    }
  }

  Future setLocation(
      {required double latitude, required double longitude}) async {
    if (location?.latitude == latitude && location?.longitude == longitude)
      return;
    location = gm.LatLng(latitude, longitude);
    var uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;
    try {
      await FirebaseFirestore.instance
          .collection(usersCollection)
          .doc(uid)
          .update({"location": GeoPoint(latitude, longitude)});
    } on Exception catch (error, stack) {
      logError(error, stack);
    }
  }

  Future<LoadRouteInformation?> getDirections({
    required LoadLocation origin,
    required LoadLocation destination,
  }) async {
    try {
      var directions = GoogleMapsDirections(apiKey: mapKey);
      var res = await directions.directionsWithLocation(
        Location(
          lat: origin.location.latitude,
          lng: origin.location.longitude,
        ),
        Location(
          lat: destination.location.latitude,
          lng: destination.location.longitude,
        ),
      );
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
