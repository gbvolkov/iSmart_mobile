import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'settings_record.g.dart';

abstract class SettingsRecord
    implements Built<SettingsRecord, SettingsRecordBuilder> {
  static Serializer<SettingsRecord> get serializer =>
      _$settingsRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'image_base_url')
  String? get imageBaseUrl;

  @BuiltValueField(wireName: 'caterogy_platform_entry_base')
  String? get caterogyPlatformEntryBase;

  @BuiltValueField(wireName: 'grade_code_default')
  String? get gradeCodeDefault;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SettingsRecordBuilder builder) => builder
    ..name = ''
    ..imageBaseUrl = ''
    ..caterogyPlatformEntryBase = ''
    ..gradeCodeDefault = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('settings');

  static Stream<SettingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SettingsRecord._();
  factory SettingsRecord([void Function(SettingsRecordBuilder) updates]) =
      _$SettingsRecord;

  static SettingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSettingsRecordData({
  String? name,
  String? imageBaseUrl,
  String? caterogyPlatformEntryBase,
  String? gradeCodeDefault,
}) {
  final firestoreData = serializers.toFirestore(
    SettingsRecord.serializer,
    SettingsRecord(
      (s) => s
        ..name = name
        ..imageBaseUrl = imageBaseUrl
        ..caterogyPlatformEntryBase = caterogyPlatformEntryBase
        ..gradeCodeDefault = gradeCodeDefault,
    ),
  );

  return firestoreData;
}
