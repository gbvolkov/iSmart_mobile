import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categories_record.g.dart';

abstract class CategoriesRecord
    implements Built<CategoriesRecord, CategoriesRecordBuilder> {
  static Serializer<CategoriesRecord> get serializer =>
      _$categoriesRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get id;

  @nullable
  @BuiltValueField(wireName: 'parent_id')
  String get parentId;

  @nullable
  @BuiltValueField(wireName: 'practice_id')
  String get practiceId;

  @nullable
  String get description;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  @BuiltValueField(wireName: 'short_description')
  String get shortDescription;

  @nullable
  @BuiltValueField(wireName: 'is_visible')
  bool get isVisible;

  @nullable
  @BuiltValueField(wireName: 'sort_order')
  int get sortOrder;

  @nullable
  @BuiltValueField(wireName: 'class_id')
  String get classId;

  @nullable
  @BuiltValueField(wireName: 'class_name')
  String get className;

  @nullable
  @BuiltValueField(wireName: 'subject_id')
  String get subjectId;

  @nullable
  @BuiltValueField(wireName: 'subject_name')
  String get subjectName;

  @nullable
  @BuiltValueField(wireName: 'practice_name')
  String get practiceName;

  @nullable
  DocumentReference get parent;

  @nullable
  BuiltList<DocumentReference> get children;

  @nullable
  String get code;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CategoriesRecordBuilder builder) => builder
    ..name = ''
    ..id = ''
    ..parentId = ''
    ..practiceId = ''
    ..description = ''
    ..type = ''
    ..imageUrl = ''
    ..shortDescription = ''
    ..isVisible = false
    ..sortOrder = 0
    ..classId = ''
    ..className = ''
    ..subjectId = ''
    ..subjectName = ''
    ..practiceName = ''
    ..children = ListBuilder()
    ..code = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categories');

  static Stream<CategoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CategoriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CategoriesRecord._();
  factory CategoriesRecord([void Function(CategoriesRecordBuilder) updates]) =
      _$CategoriesRecord;

  static CategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCategoriesRecordData({
  String name,
  String id,
  String parentId,
  String practiceId,
  String description,
  String type,
  String imageUrl,
  String shortDescription,
  bool isVisible,
  int sortOrder,
  String classId,
  String className,
  String subjectId,
  String subjectName,
  String practiceName,
  DocumentReference parent,
  String code,
  String image,
}) =>
    serializers.toFirestore(
        CategoriesRecord.serializer,
        CategoriesRecord((c) => c
          ..name = name
          ..id = id
          ..parentId = parentId
          ..practiceId = practiceId
          ..description = description
          ..type = type
          ..imageUrl = imageUrl
          ..shortDescription = shortDescription
          ..isVisible = isVisible
          ..sortOrder = sortOrder
          ..classId = classId
          ..className = className
          ..subjectId = subjectId
          ..subjectName = subjectName
          ..practiceName = practiceName
          ..parent = parent
          ..children = null
          ..code = code
          ..image = image));
