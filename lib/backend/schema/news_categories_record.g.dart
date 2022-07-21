// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_categories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsCategoriesRecord> _$newsCategoriesRecordSerializer =
    new _$NewsCategoriesRecordSerializer();

class _$NewsCategoriesRecordSerializer
    implements StructuredSerializer<NewsCategoriesRecord> {
  @override
  final Iterable<Type> types = const [
    NewsCategoriesRecord,
    _$NewsCategoriesRecord
  ];
  @override
  final String wireName = 'NewsCategoriesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NewsCategoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  NewsCategoriesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsCategoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$NewsCategoriesRecord extends NewsCategoriesRecord {
  @override
  final String name;
  @override
  final DocumentReference<Object> reference;

  factory _$NewsCategoriesRecord(
          [void Function(NewsCategoriesRecordBuilder) updates]) =>
      (new NewsCategoriesRecordBuilder()..update(updates)).build();

  _$NewsCategoriesRecord._({this.name, this.reference}) : super._();

  @override
  NewsCategoriesRecord rebuild(
          void Function(NewsCategoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsCategoriesRecordBuilder toBuilder() =>
      new NewsCategoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsCategoriesRecord &&
        name == other.name &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsCategoriesRecord')
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class NewsCategoriesRecordBuilder
    implements Builder<NewsCategoriesRecord, NewsCategoriesRecordBuilder> {
  _$NewsCategoriesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NewsCategoriesRecordBuilder() {
    NewsCategoriesRecord._initializeBuilder(this);
  }

  NewsCategoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsCategoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsCategoriesRecord;
  }

  @override
  void update(void Function(NewsCategoriesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsCategoriesRecord build() {
    final _$result =
        _$v ?? new _$NewsCategoriesRecord._(name: name, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
