import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notification_types_record.g.dart';

abstract class NotificationTypesRecord
    implements Built<NotificationTypesRecord, NotificationTypesRecordBuilder> {
  static Serializer<NotificationTypesRecord> get serializer =>
      _$notificationTypesRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NotificationTypesRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification_types');

  static Stream<NotificationTypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NotificationTypesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  NotificationTypesRecord._();
  factory NotificationTypesRecord(
          [void Function(NotificationTypesRecordBuilder) updates]) =
      _$NotificationTypesRecord;

  static NotificationTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNotificationTypesRecordData({
  String name,
}) =>
    serializers.toFirestore(NotificationTypesRecord.serializer,
        NotificationTypesRecord((n) => n..name = name));
