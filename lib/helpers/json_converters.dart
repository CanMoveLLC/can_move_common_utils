import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';

import '../model/driver.dart';
import '../model/move.dart';
import '../model/shipper.dart';

// Converts JSON to DriverMin and vice versa, handling null values
class NullDriverMinConverter implements JsonConverter<DriverMin?, Object?> {
  const NullDriverMinConverter();

  @override
  DriverMin? fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      // Convert JSON to DriverMin, handling null values
      return DriverMin(
        location: json["location"],
        uid: json["uid"],
        // firstName: json["firstName"],
        // lastName: json["lastName"],
        name: json["name"],
          payID: json["payID"],
      );
    }
    return json as DriverMin?;
  }

  @override
  Object? toJson(DriverMin? object) {
    if (object == null) return null;
    // Convert DriverMin to JSON
    return {
      "location": object.location,
      // "firstName": object.firstName,
      // "lastName": object.lastName,
      "name":object.name,
      "uid": object.uid,
      "userType": object.userType.toString().split('.').last,
    };
  }
}

// Converts JSON to ShipperMin and vice versa
class UserMinConverter implements JsonConverter<ShipperMin, Object> {
  const UserMinConverter();

  @override
  ShipperMin fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      // Convert JSON to ShipperMin
      return ShipperMin(
        uid: json["uid"],
        firstName: json["firstName"],
        lastName: json["lastName"],
      );
    }
    return json as ShipperMin;
  }

  @override
  Object toJson(ShipperMin object) {
    // Convert ShipperMin to JSON
    return {
      "firstName": object.firstName,
      "lastName": object.lastName,
      "uid": object.uid,
      "userType": object.userType.toString().split('.').last,
    };
  }
}

// Converts JSON to Timestamp and vice versa, handling null values
class NullTimeStampConverter implements JsonConverter<Timestamp?, Object?> {
  const NullTimeStampConverter();

  @override
  Timestamp? fromJson(Object? json) {
    if (json == null) return null;
    // Convert JSON to Timestamp, handling null values
    if (json is Timestamp) {
      return json;
    }
    return json as Timestamp?;
  }

  @override
  Object? toJson(Timestamp? object) {
    // Convert Timestamp to JSON
    return object;
  }
}

// Converts JSON to Timestamp and vice versa
class TimeStampConverter implements JsonConverter<Timestamp, Object> {
  const TimeStampConverter();

  @override
  Timestamp fromJson(Object json) {
    // Convert JSON to Timestamp
    if (json is Timestamp) {
      return json;
    }
    return json as Timestamp;
  }

  @override
  Object toJson(Timestamp object) {
    // Convert Timestamp to JSON
    return object;
  }
}

// Converts JSON to MoveLocation and vice versa
class MoveLocationConverter implements JsonConverter<MoveLocation, Object> {
  const MoveLocationConverter();

  @override
  MoveLocation fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      // Convert JSON to MoveLocation
      return MoveLocation(
        location: GeoFirePoint(
          json["location"]["geopoint"].latitude,
          json["location"]["geopoint"].longitude,
        ),
        address: json["address"],
      );
    }
    return json as MoveLocation;
  }

  @override
  Object toJson(MoveLocation object) {
    // Convert MoveLocation to JSON
    return {
      "location": object.location.data,
      "address": object.address,
    };
  }
}

// Converts JSON to List of MoveLocation and vice versa
class ListMoveLocationConverter
    implements JsonConverter<List<MoveLocation>, Object> {
  const ListMoveLocationConverter();

  @override
  List<MoveLocation> fromJson(Object json) {
    if (json is List<dynamic>) {
      // Convert JSON to List of MoveLocation
      return json
          .map((e) => MoveLocation(
                location: GeoFirePoint(
                  e["location"]["geopoint"].latitude,
                  e["location"]["geopoint"].longitude,
                ),
                address: e["address"],
              ))
          .toList();
    }
    return json as List<MoveLocation>;
  }

  @override
  Object toJson(List<MoveLocation> object) {
    // Convert List of MoveLocation to JSON
    return object
        .map((e) => {
              "location": e.location.data,
              "address": e.address,
            })
        .toList();
  }
}

// Converts JSON to Rating and vice versa
class RatingConverter implements JsonConverter<Rating, Object> {
  const RatingConverter();

  @override
  Rating fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      // Convert JSON to Rating
      return Rating(rating: json["rating"] + 0.0, total: json["total"]);
    }
    return json as Rating;
  }

  @override
  Object toJson(Rating object) {
    // Convert Rating to JSON
    return {
      "rating": object.rating,
      "total": object.total,
    };
  }
}

// Converts JSON to GeoPoint and vice versa
class GeoPointConverter implements JsonConverter<GeoPoint, Object> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Object json) {
    // Convert JSON to GeoPoint
    if (json is GeoPoint) {
      return json;
    }
    return json as GeoPoint;
  }

  @override
  Object toJson(GeoPoint object) {
    // Convert GeoPoint to JSON
    return object;
  }
}

// Converts JSON to GeoFirePoint and vice versa
class GeoFirePointConverter implements JsonConverter<GeoFirePoint, Object> {
  const GeoFirePointConverter();

  @override
  GeoFirePoint fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      // Convert JSON to GeoFirePoint
      return GeoFirePoint(json["latitude"], json["longitude"]);
    }
    return json as GeoFirePoint;
  }

  @override
  Object toJson(GeoFirePoint object) {
    // Convert GeoFirePoint to JSON
    return object.data;
  }
}

// Converts JSON to GeoPoint and vice versa, handling null values
class NullGeoPointConverter implements JsonConverter<GeoPoint?, Object?> {
  const NullGeoPointConverter();

  @override
  GeoPoint? fromJson(Object? json) {
    if (json == null) return null;
    // Convert JSON to GeoPoint, handling null values
    if (json is GeoPoint) {
      return json;
    }
    return json as GeoPoint?;
  }

  @override
  Object? toJson(GeoPoint? object) {
    // Convert GeoPoint to JSON
    return object;
  }
}

// Converts JSON to FieldValue and vice versa
class ServerTimeStampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object? json) {
    // Convert JSON to FieldValue
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? object) {
    // Convert FieldValue to JSON
    return object;
  }
}
