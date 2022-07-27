import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reviews_record.g.dart';

abstract class ReviewsRecord
    implements Built<ReviewsRecord, ReviewsRecordBuilder> {
  static Serializer<ReviewsRecord> get serializer => _$reviewsRecordSerializer;

  DocumentReference? get reviewer;

  String? get review;

  int? get mark;

  @BuiltValueField(wireName: 'reviewer_description')
  String? get reviewerDescription;

  @BuiltValueField(wireName: 'reviewer_timing')
  String? get reviewerTiming;

  @BuiltValueField(wireName: 'review_image')
  String? get reviewImage;

  @BuiltValueField(wireName: 'sort_order')
  int? get sortOrder;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReviewsRecordBuilder builder) => builder
    ..review = ''
    ..mark = 0
    ..reviewerDescription = ''
    ..reviewerTiming = ''
    ..reviewImage = ''
    ..sortOrder = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReviewsRecord._();
  factory ReviewsRecord([void Function(ReviewsRecordBuilder) updates]) =
      _$ReviewsRecord;

  static ReviewsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReviewsRecordData({
  DocumentReference? reviewer,
  String? review,
  int? mark,
  String? reviewerDescription,
  String? reviewerTiming,
  String? reviewImage,
  int? sortOrder,
}) {
  final firestoreData = serializers.toFirestore(
    ReviewsRecord.serializer,
    ReviewsRecord(
      (r) => r
        ..reviewer = reviewer
        ..review = review
        ..mark = mark
        ..reviewerDescription = reviewerDescription
        ..reviewerTiming = reviewerTiming
        ..reviewImage = reviewImage
        ..sortOrder = sortOrder,
    ),
  );

  return firestoreData;
}
