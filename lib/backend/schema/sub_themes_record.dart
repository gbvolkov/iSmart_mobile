import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sub_themes_record.g.dart';

abstract class SubThemesRecord
    implements Built<SubThemesRecord, SubThemesRecordBuilder> {
  static Serializer<SubThemesRecord> get serializer =>
      _$subThemesRecordSerializer;

  @nullable
  String get id;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'theme_id')
  String get themeId;

  @nullable
  String get number;

  @nullable
  @BuiltValueField(wireName: 'difficulty_level')
  String get difficultyLevel;

  @nullable
  @BuiltValueField(wireName: 'theme_name')
  String get themeName;

  @nullable
  @BuiltValueField(wireName: 'sort_order')
  String get sortOrder;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SubThemesRecordBuilder builder) => builder
    ..id = ''
    ..name = ''
    ..themeId = ''
    ..number = ''
    ..difficultyLevel = ''
    ..themeName = ''
    ..sortOrder = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sub_themes');

  static Stream<SubThemesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SubThemesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SubThemesRecord._();
  factory SubThemesRecord([void Function(SubThemesRecordBuilder) updates]) =
      _$SubThemesRecord;

  static SubThemesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSubThemesRecordData({
  String id,
  String name,
  String themeId,
  String number,
  String difficultyLevel,
  String themeName,
  String sortOrder,
}) =>
    serializers.toFirestore(
        SubThemesRecord.serializer,
        SubThemesRecord((s) => s
          ..id = id
          ..name = name
          ..themeId = themeId
          ..number = number
          ..difficultyLevel = difficultyLevel
          ..themeName = themeName
          ..sortOrder = sortOrder));
