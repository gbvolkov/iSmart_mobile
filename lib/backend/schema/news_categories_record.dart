import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'news_categories_record.g.dart';

abstract class NewsCategoriesRecord
    implements Built<NewsCategoriesRecord, NewsCategoriesRecordBuilder> {
  static Serializer<NewsCategoriesRecord> get serializer =>
      _$newsCategoriesRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewsCategoriesRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news_categories');

  static Stream<NewsCategoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewsCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewsCategoriesRecord._();
  factory NewsCategoriesRecord(
          [void Function(NewsCategoriesRecordBuilder) updates]) =
      _$NewsCategoriesRecord;

  static NewsCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewsCategoriesRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    NewsCategoriesRecord.serializer,
    NewsCategoriesRecord(
      (n) => n..name = name,
    ),
  );

  return firestoreData;
}
