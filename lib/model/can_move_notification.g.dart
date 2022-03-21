// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'can_move_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CanMoveNotification _$$_CanMoveNotificationFromJson(
        Map<String, dynamic> json) =>
    _$_CanMoveNotification(
      uid: json['uid'] as String?,
      time: const TimeStampConverter().fromJson(json['time'] as Object),
      userUid: json['userUid'] as String,
      content: json['content'] as String,
      imgUrl: json['imgUrl'] as String?,
      loadUid: json['loadUid'] as String?,
    );

Map<String, dynamic> _$$_CanMoveNotificationToJson(
        _$_CanMoveNotification instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'time': const TimeStampConverter().toJson(instance.time),
      'userUid': instance.userUid,
      'content': instance.content,
      'imgUrl': instance.imgUrl,
      'loadUid': instance.loadUid,
    };
