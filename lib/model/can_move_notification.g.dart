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
      title: json['title'] as String,
      imgUrl: json['imgUrl'] as String?,
      moveUid: json['moveUid'] as String?,
      roomUid: json['roomUid'] as String?,
    );

Map<String, dynamic> _$$_CanMoveNotificationToJson(
        _$_CanMoveNotification instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'time': const TimeStampConverter().toJson(instance.time),
      'userUid': instance.userUid,
      'content': instance.content,
      'title': instance.title,
      'imgUrl': instance.imgUrl,
      'moveUid': instance.moveUid,
      'roomUid': instance.roomUid,
    };
