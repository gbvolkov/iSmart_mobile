// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewsRecord> _$reviewsRecordSerializer =
    new _$ReviewsRecordSerializer();

class _$ReviewsRecordSerializer implements StructuredSerializer<ReviewsRecord> {
  @override
  final Iterable<Type> types = const [ReviewsRecord, _$ReviewsRecord];
  @override
  final String wireName = 'ReviewsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReviewsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.reviewer;
    if (value != null) {
      result
        ..add('reviewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('review')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mark;
    if (value != null) {
      result
        ..add('mark')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviewerDescription;
    if (value != null) {
      result
        ..add('reviewer_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewerTiming;
    if (value != null) {
      result
        ..add('reviewer_timing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewImage;
    if (value != null) {
      result
        ..add('review_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortOrder;
    if (value != null) {
      result
        ..add('sort_order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ReviewsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reviewer':
          result.reviewer = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mark':
          result.mark = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reviewer_description':
          result.reviewerDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewer_timing':
          result.reviewerTiming = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'review_image':
          result.reviewImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sort_order':
          result.sortOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewsRecord extends ReviewsRecord {
  @override
  final DocumentReference<Object?>? reviewer;
  @override
  final String? review;
  @override
  final int? mark;
  @override
  final String? reviewerDescription;
  @override
  final String? reviewerTiming;
  @override
  final String? reviewImage;
  @override
  final int? sortOrder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReviewsRecord([void Function(ReviewsRecordBuilder)? updates]) =>
      (new ReviewsRecordBuilder()..update(updates)).build();

  _$ReviewsRecord._(
      {this.reviewer,
      this.review,
      this.mark,
      this.reviewerDescription,
      this.reviewerTiming,
      this.reviewImage,
      this.sortOrder,
      this.ffRef})
      : super._();

  @override
  ReviewsRecord rebuild(void Function(ReviewsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsRecordBuilder toBuilder() => new ReviewsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsRecord &&
        reviewer == other.reviewer &&
        review == other.review &&
        mark == other.mark &&
        reviewerDescription == other.reviewerDescription &&
        reviewerTiming == other.reviewerTiming &&
        reviewImage == other.reviewImage &&
        sortOrder == other.sortOrder &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, reviewer.hashCode), review.hashCode),
                            mark.hashCode),
                        reviewerDescription.hashCode),
                    reviewerTiming.hashCode),
                reviewImage.hashCode),
            sortOrder.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewsRecord')
          ..add('reviewer', reviewer)
          ..add('review', review)
          ..add('mark', mark)
          ..add('reviewerDescription', reviewerDescription)
          ..add('reviewerTiming', reviewerTiming)
          ..add('reviewImage', reviewImage)
          ..add('sortOrder', sortOrder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReviewsRecordBuilder
    implements Builder<ReviewsRecord, ReviewsRecordBuilder> {
  _$ReviewsRecord? _$v;

  DocumentReference<Object?>? _reviewer;
  DocumentReference<Object?>? get reviewer => _$this._reviewer;
  set reviewer(DocumentReference<Object?>? reviewer) =>
      _$this._reviewer = reviewer;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  int? _mark;
  int? get mark => _$this._mark;
  set mark(int? mark) => _$this._mark = mark;

  String? _reviewerDescription;
  String? get reviewerDescription => _$this._reviewerDescription;
  set reviewerDescription(String? reviewerDescription) =>
      _$this._reviewerDescription = reviewerDescription;

  String? _reviewerTiming;
  String? get reviewerTiming => _$this._reviewerTiming;
  set reviewerTiming(String? reviewerTiming) =>
      _$this._reviewerTiming = reviewerTiming;

  String? _reviewImage;
  String? get reviewImage => _$this._reviewImage;
  set reviewImage(String? reviewImage) => _$this._reviewImage = reviewImage;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReviewsRecordBuilder() {
    ReviewsRecord._initializeBuilder(this);
  }

  ReviewsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviewer = $v.reviewer;
      _review = $v.review;
      _mark = $v.mark;
      _reviewerDescription = $v.reviewerDescription;
      _reviewerTiming = $v.reviewerTiming;
      _reviewImage = $v.reviewImage;
      _sortOrder = $v.sortOrder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewsRecord;
  }

  @override
  void update(void Function(ReviewsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewsRecord build() {
    final _$result = _$v ??
        new _$ReviewsRecord._(
            reviewer: reviewer,
            review: review,
            mark: mark,
            reviewerDescription: reviewerDescription,
            reviewerTiming: reviewerTiming,
            reviewImage: reviewImage,
            sortOrder: sortOrder,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
