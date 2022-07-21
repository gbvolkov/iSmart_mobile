import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'news_record.g.dart';

abstract class NewsRecord implements Built<NewsRecord, NewsRecordBuilder> {
  static Serializer<NewsRecord> get serializer => _$newsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'news_text')
  String get newsText;

  @nullable
  String get image;

  @nullable
  String get title;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: 'to_list')
  BuiltList<DocumentReference> get toList;

  @nullable
  @BuiltValueField(wireName: 'page_name')
  String get pageName;

  @nullable
  @BuiltValueField(wireName: 'page_parameters')
  String get pageParameters;

  @nullable
  @BuiltValueField(wireName: 'scheduled_time')
  DateTime get scheduledTime;

  @nullable
  @BuiltValueField(wireName: 'sent_time')
  DateTime get sentTime;

  @nullable
  @BuiltValueField(wireName: 'sent_to_list')
  BuiltList<DocumentReference> get sentToList;

  @nullable
  @BuiltValueField(wireName: 'is_public')
  bool get isPublic;

  @nullable
  String get category;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NewsRecordBuilder builder) => builder
    ..newsText = ''
    ..image = ''
    ..title = ''
    ..status = ''
    ..toList = ListBuilder()
    ..pageName = ''
    ..pageParameters = ''
    ..sentToList = ListBuilder()
    ..isPublic = false
    ..category = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NewsRecord._();
  factory NewsRecord([void Function(NewsRecordBuilder) updates]) = _$NewsRecord;

  static NewsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNewsRecordData({
  String newsText,
  String image,
  String title,
  String status,
  String pageName,
  String pageParameters,
  DateTime scheduledTime,
  DateTime sentTime,
  bool isPublic,
  String category,
}) =>
    serializers.toFirestore(
        NewsRecord.serializer,
        NewsRecord((n) => n
          ..newsText = newsText
          ..image = image
          ..title = title
          ..status = status
          ..toList = null
          ..pageName = pageName
          ..pageParameters = pageParameters
          ..scheduledTime = scheduledTime
          ..sentTime = sentTime
          ..sentToList = null
          ..isPublic = isPublic
          ..category = category));
