import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/json_converters.dart';

part 'can_move_notification.freezed.dart';
part 'can_move_notification.g.dart';

@freezed
class CanMoveNotification with _$CanMoveNotification {
  const CanMoveNotification._();

  const factory CanMoveNotification({
    String? uid,
    @TimeStampConverter() required Timestamp time,
    required String userUid,
    required String content,
    required String title,
    String? imgUrl,
    String? moveUid,
    String? roomUid,
    @Default(false) bool isNotes,
  }) = _CanMoveNotification;

  factory CanMoveNotification.fromJson(Map<String, dynamic> json) =>
      _$CanMoveNotificationFromJson(json);

  factory CanMoveNotification.fromFirestore(DocumentSnapshot snapshot) {
    return CanMoveNotification.fromJson(snapshot.data() as Map<String, dynamic>)
        .copyWith(uid: snapshot.id);
  }
}
