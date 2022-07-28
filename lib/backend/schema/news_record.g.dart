// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsRecord> _$newsRecordSerializer = new _$NewsRecordSerializer();

class _$NewsRecordSerializer implements StructuredSerializer<NewsRecord> {
  @override
  final Iterable<Type> types = const [NewsRecord, _$NewsRecord];
  @override
  final String wireName = 'NewsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.newsText;
    if (value != null) {
      result
        ..add('news_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toList;
    if (value != null) {
      result
        ..add('to_list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.pageName;
    if (value != null) {
      result
        ..add('page_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pageParameters;
    if (value != null) {
      result
        ..add('page_parameters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scheduledTime;
    if (value != null) {
      result
        ..add('scheduled_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sentTime;
    if (value != null) {
      result
        ..add('sent_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sentToList;
    if (value != null) {
      result
        ..add('sent_to_list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.isPublic;
    if (value != null) {
      result
        ..add('is_public')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  NewsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'news_text':
          result.newsText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'to_list':
          result.toList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'page_name':
          result.pageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'page_parameters':
          result.pageParameters = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'scheduled_time':
          result.scheduledTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'sent_time':
          result.sentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'sent_to_list':
          result.sentToList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'is_public':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$NewsRecord extends NewsRecord {
  @override
  final String? newsText;
  @override
  final String? image;
  @override
  final String? title;
  @override
  final String? status;
  @override
  final BuiltList<DocumentReference<Object?>>? toList;
  @override
  final String? pageName;
  @override
  final String? pageParameters;
  @override
  final DateTime? scheduledTime;
  @override
  final DateTime? sentTime;
  @override
  final BuiltList<DocumentReference<Object?>>? sentToList;
  @override
  final bool? isPublic;
  @override
  final String? category;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewsRecord([void Function(NewsRecordBuilder)? updates]) =>
      (new NewsRecordBuilder()..update(updates)).build();

  _$NewsRecord._(
      {this.newsText,
      this.image,
      this.title,
      this.status,
      this.toList,
      this.pageName,
      this.pageParameters,
      this.scheduledTime,
      this.sentTime,
      this.sentToList,
      this.isPublic,
      this.category,
      this.ffRef})
      : super._();

  @override
  NewsRecord rebuild(void Function(NewsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRecordBuilder toBuilder() => new NewsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRecord &&
        newsText == other.newsText &&
        image == other.image &&
        title == other.title &&
        status == other.status &&
        toList == other.toList &&
        pageName == other.pageName &&
        pageParameters == other.pageParameters &&
        scheduledTime == other.scheduledTime &&
        sentTime == other.sentTime &&
        sentToList == other.sentToList &&
        isPublic == other.isPublic &&
        category == other.category &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, newsText.hashCode),
                                                    image.hashCode),
                                                title.hashCode),
                                            status.hashCode),
                                        toList.hashCode),
                                    pageName.hashCode),
                                pageParameters.hashCode),
                            scheduledTime.hashCode),
                        sentTime.hashCode),
                    sentToList.hashCode),
                isPublic.hashCode),
            category.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsRecord')
          ..add('newsText', newsText)
          ..add('image', image)
          ..add('title', title)
          ..add('status', status)
          ..add('toList', toList)
          ..add('pageName', pageName)
          ..add('pageParameters', pageParameters)
          ..add('scheduledTime', scheduledTime)
          ..add('sentTime', sentTime)
          ..add('sentToList', sentToList)
          ..add('isPublic', isPublic)
          ..add('category', category)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewsRecordBuilder implements Builder<NewsRecord, NewsRecordBuilder> {
  _$NewsRecord? _$v;

  String? _newsText;
  String? get newsText => _$this._newsText;
  set newsText(String? newsText) => _$this._newsText = newsText;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<DocumentReference<Object?>>? _toList;
  ListBuilder<DocumentReference<Object?>> get toList =>
      _$this._toList ??= new ListBuilder<DocumentReference<Object?>>();
  set toList(ListBuilder<DocumentReference<Object?>>? toList) =>
      _$this._toList = toList;

  String? _pageName;
  String? get pageName => _$this._pageName;
  set pageName(String? pageName) => _$this._pageName = pageName;

  String? _pageParameters;
  String? get pageParameters => _$this._pageParameters;
  set pageParameters(String? pageParameters) =>
      _$this._pageParameters = pageParameters;

  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _$this._scheduledTime;
  set scheduledTime(DateTime? scheduledTime) =>
      _$this._scheduledTime = scheduledTime;

  DateTime? _sentTime;
  DateTime? get sentTime => _$this._sentTime;
  set sentTime(DateTime? sentTime) => _$this._sentTime = sentTime;

  ListBuilder<DocumentReference<Object?>>? _sentToList;
  ListBuilder<DocumentReference<Object?>> get sentToList =>
      _$this._sentToList ??= new ListBuilder<DocumentReference<Object?>>();
  set sentToList(ListBuilder<DocumentReference<Object?>>? sentToList) =>
      _$this._sentToList = sentToList;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewsRecordBuilder() {
    NewsRecord._initializeBuilder(this);
  }

  NewsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newsText = $v.newsText;
      _image = $v.image;
      _title = $v.title;
      _status = $v.status;
      _toList = $v.toList?.toBuilder();
      _pageName = $v.pageName;
      _pageParameters = $v.pageParameters;
      _scheduledTime = $v.scheduledTime;
      _sentTime = $v.sentTime;
      _sentToList = $v.sentToList?.toBuilder();
      _isPublic = $v.isPublic;
      _category = $v.category;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRecord;
  }

  @override
  void update(void Function(NewsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsRecord build() {
    _$NewsRecord _$result;
    try {
      _$result = _$v ??
          new _$NewsRecord._(
              newsText: newsText,
              image: image,
              title: title,
              status: status,
              toList: _toList?.build(),
              pageName: pageName,
              pageParameters: pageParameters,
              scheduledTime: scheduledTime,
              sentTime: sentTime,
              sentToList: _sentToList?.build(),
              isPublic: isPublic,
              category: category,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'toList';
        _toList?.build();

        _$failedField = 'sentToList';
        _sentToList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
