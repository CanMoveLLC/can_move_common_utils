import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/driver.dart';
import '../model/load.dart';
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

class LoadLocationConverter implements JsonConverter<LoadLocation, Object> {
  const LoadLocationConverter();

  @override
  LoadLocation fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      return LoadLocation(location: json["location"], address: json["address"]);
    }
    return json as LoadLocation; // won't work though
  }

  @override
  Object toJson(LoadLocation object) {
    return {
      "location": object.location,
      "address": object.address,
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
