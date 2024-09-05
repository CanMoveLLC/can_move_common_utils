// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'can_move_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CanMoveNotificationImpl _$$CanMoveNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$CanMoveNotificationImpl(
      uid: json['uid'] as String?,
      time: const TimeStampConverter().fromJson(json['time'] as Object),
      userUid: json['userUid'] as String,
      content: json['content'] as String,
      title: json['title'] as String,
      imgUrl: json['imgUrl'] as String?,
      moveUid: json['moveUid'] as String?,
      roomUid: json['roomUid'] as String?,
    );

Map<String, dynamic> _$$CanMoveNotificationImplToJson(
        _$CanMoveNotificationImpl instance) =>
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
