import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'themes_record.g.dart';

abstract class ThemesRecord
    implements Built<ThemesRecord, ThemesRecordBuilder> {
  static Serializer<ThemesRecord> get serializer => _$themesRecordSerializer;

  @nullable
  String get id;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'subject_id')
  String get subjectId;

  @nullable
  @BuiltValueField(wireName: 'subject_name')
  String get subjectName;

  @nullable
  @BuiltValueField(wireName: 'class_id')
  String get classId;

  @nullable
  @BuiltValueField(wireName: 'class_name')
  String get className;

  @nullable
  @BuiltValueField(wireName: 'is_active')
  bool get isActive;

  @nullable
  String get code;

  @nullable
  @BuiltValueField(wireName: 'is_school_program')
  bool get isSchoolProgram;

  @nullable
  String get number;

  @nullable
  @BuiltValueField(wireName: 'sort_order')
  String get sortOrder;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ThemesRecordBuilder builder) => builder
    ..id = ''
    ..name = ''
    ..subjectId = ''
    ..subjectName = ''
    ..classId = ''
    ..className = ''
    ..isActive = false
    ..code = ''
    ..isSchoolProgram = false
    ..number = ''
    ..sortOrder = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('themes');

  static Stream<ThemesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ThemesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ThemesRecord._();
  factory ThemesRecord([void Function(ThemesRecordBuilder) updates]) =
      _$ThemesRecord;

  static ThemesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createThemesRecordData({
  String id,
  String name,
  String subjectId,
  String subjectName,
  String classId,
  String className,
  bool isActive,
  String code,
  bool isSchoolProgram,
  String number,
  String sortOrder,
}) =>
    serializers.toFirestore(
        ThemesRecord.serializer,
        ThemesRecord((t) => t
          ..id = id
          ..name = name
          ..subjectId = subjectId
          ..subjectName = subjectName
          ..classId = classId
          ..className = className
          ..isActive = isActive
          ..code = code
          ..isSchoolProgram = isSchoolProgram
          ..number = number
          ..sortOrder = sortOrder));
