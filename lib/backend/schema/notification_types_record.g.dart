// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationTypesRecord> _$notificationTypesRecordSerializer =
    new _$NotificationTypesRecordSerializer();

class _$NotificationTypesRecordSerializer
    implements StructuredSerializer<NotificationTypesRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationTypesRecord,
    _$NotificationTypesRecord
  ];
  @override
  final String wireName = 'NotificationTypesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationTypesRecord object,
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
  NotificationTypesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationTypesRecordBuilder();

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

class _$NotificationTypesRecord extends NotificationTypesRecord {
  @override
  final String name;
  @override
  final DocumentReference<Object> reference;

  factory _$NotificationTypesRecord(
          [void Function(NotificationTypesRecordBuilder) updates]) =>
      (new NotificationTypesRecordBuilder()..update(updates)).build();

  _$NotificationTypesRecord._({this.name, this.reference}) : super._();

  @override
  NotificationTypesRecord rebuild(
          void Function(NotificationTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationTypesRecordBuilder toBuilder() =>
      new NotificationTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationTypesRecord &&
        name == other.name &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationTypesRecord')
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class NotificationTypesRecordBuilder
    implements
        Builder<NotificationTypesRecord, NotificationTypesRecordBuilder> {
  _$NotificationTypesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NotificationTypesRecordBuilder() {
    NotificationTypesRecord._initializeBuilder(this);
  }

  NotificationTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationTypesRecord;
  }

  @override
  void update(void Function(NotificationTypesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationTypesRecord build() {
    final _$result = _$v ??
        new _$NotificationTypesRecord._(name: name, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
