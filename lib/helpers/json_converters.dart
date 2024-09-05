import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';

import '../model/driver.dart';
import '../model/move.dart';
import '../model/shipper.dart';

class NullDriverMinConverter implements JsonConverter<DriverMin?, Object?> {
  const NullDriverMinConverter();

  @override
  DriverMin? fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      return DriverMin(
        location: json["location"],
        uid: json["uid"],
        name: json["name"],
        payID: json["payID"]
      );
    }
    return json as DriverMin?; // won't work though
  }

  @override
  Object? toJson(DriverMin? object) {
    if (object == null) return null;
    return {
      "location": object.location,
      "name": object.name,
      "uid": object.uid,
      "userType": object.userType.toString().split('.').last,
    };
  }
}

class UserMinConverter implements JsonConverter<ShipperMin, Object> {
  const UserMinConverter();

  @override
  ShipperMin fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      return ShipperMin(
        uid: json["uid"],
        name: json["name"],
      );
    }
    return json as ShipperMin; // won't work though
  }

  @override
  Object toJson(ShipperMin object) {
    return {
      // "firstName": object.firstName,
      // "lastName": object.lastName,
      "name": object.name,
      "uid": object.uid,
      "userType": object.userType.toString().split('.').last,
    };
  }
}

class NullTimeStampConverter implements JsonConverter<Timestamp?, Object?> {
  const NullTimeStampConverter();

  @override
  Timestamp? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Timestamp) {
      return json;
    }
    return json as Timestamp; // won't work though
  }

  @override
  Object? toJson(Timestamp? object) {
    // return object.toDate().toIso8601String();
    // not a valid json object but we're only working with firestore so no big.
    return object;
  }
}

class TimeStampConverter implements JsonConverter<Timestamp, Object> {
  const TimeStampConverter();

  @override
  Timestamp fromJson(Object json) {
    if (json is Timestamp) {
      return json;
    }
    return json as Timestamp; // won't work though
  }

  @override
  Object toJson(Timestamp object) {
    // return object.toDate().toIso8601String();
    // not a valid json object but we're only working with firestore so no big.
    return object;
  }
}

class MoveLocationConverter implements JsonConverter<MoveLocation, Object> {
  const MoveLocationConverter();

  @override
  MoveLocation fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      return MoveLocation(
        location: GeoFirePoint(
          json["location"]["geopoint"].latitude,
          json["location"]["geopoint"].longitude,
        ),
        address: json["address"],
      );
    }
    return json as MoveLocation; // won't work though
  }

  @override
  Object toJson(MoveLocation object) {
    return {
      "location": object.location.data,
      "address": object.address,
    };
  }
}

class ListMoveLocationConverter
    implements JsonConverter<List<MoveLocation>, Object> {
  const ListMoveLocationConverter();

  @override
  List<MoveLocation> fromJson(Object json) {
    if (json is List<dynamic>) {
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
    return json as List<MoveLocation>; // won't work though
  }

  @override
  Object toJson(List<MoveLocation> object) {
    return object
        .map((e) => {
              "location": e.location.data,
              "address": e.address,
            })
        .toList();
  }
}

class RatingConverter implements JsonConverter<Rating, Object> {
  const RatingConverter();

  @override
  Rating fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      return Rating(rating: json["rating"] + 0.0, total: json["total"]);
    }
    return json as Rating; // won't work though
  }

  @override
  Object toJson(Rating object) {
    return {
      "rating": object.rating,
      "total": object.total,
    };
  }
}

class GeoPointConverter implements JsonConverter<GeoPoint, Object> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Object json) {
    if (json is GeoPoint) {
      return json;
    }
    return json as GeoPoint; // won't work though
  }

  @override
  Object toJson(GeoPoint object) {
    // not a valid json object but we're only working with firestore so no big.
    return object;
  }
}

class GeoFirePointConverter implements JsonConverter<GeoFirePoint, Object> {
  const GeoFirePointConverter();

  @override
  GeoFirePoint fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      return GeoFirePoint(json["latitude"], json["longitude"]);
    }
    return json as GeoFirePoint; // won't work though
  }

  @override
  Object toJson(GeoFirePoint object) {
    // not a valid json object but we're only working with firestore so no big.
    return object.data;
  }
}

class NullGeoPointConverter implements JsonConverter<GeoPoint?, Object?> {
  const NullGeoPointConverter();

  @override
  GeoPoint? fromJson(Object? json) {
    if (json == null) return null;
    if (json is GeoPoint) {
      return json;
    }
    return json as GeoPoint; // won't work though
  }

  @override
  Object? toJson(GeoPoint? object) {
    // not a valid json object but we're only working with firestore so no big.
    return object;
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? object) {
    // not a valid json object but we're only working with firestore so no big.
    return object;
  }
}
