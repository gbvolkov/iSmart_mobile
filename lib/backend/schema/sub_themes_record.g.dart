// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_themes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubThemesRecord> _$subThemesRecordSerializer =
    new _$SubThemesRecordSerializer();

class _$SubThemesRecordSerializer
    implements StructuredSerializer<SubThemesRecord> {
  @override
  final Iterable<Type> types = const [SubThemesRecord, _$SubThemesRecord];
  @override
  final String wireName = 'SubThemesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SubThemesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.themeId;
    if (value != null) {
      result
        ..add('theme_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.difficultyLevel;
    if (value != null) {
      result
        ..add('difficulty_level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.themeName;
    if (value != null) {
      result
        ..add('theme_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortOrder;
    if (value != null) {
      result
        ..add('sort_order')
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
  SubThemesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubThemesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'theme_id':
          result.themeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'difficulty_level':
          result.difficultyLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'theme_name':
          result.themeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sort_order':
          result.sortOrder = serializers.deserialize(value,
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

class _$SubThemesRecord extends SubThemesRecord {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? themeId;
  @override
  final String? number;
  @override
  final String? difficultyLevel;
  @override
  final String? themeName;
  @override
  final String? sortOrder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubThemesRecord([void Function(SubThemesRecordBuilder)? updates]) =>
      (new SubThemesRecordBuilder()..update(updates)).build();

  _$SubThemesRecord._(
      {this.id,
      this.name,
      this.themeId,
      this.number,
      this.difficultyLevel,
      this.themeName,
      this.sortOrder,
      this.ffRef})
      : super._();

  @override
  SubThemesRecord rebuild(void Function(SubThemesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubThemesRecordBuilder toBuilder() =>
      new SubThemesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubThemesRecord &&
        id == other.id &&
        name == other.name &&
        themeId == other.themeId &&
        number == other.number &&
        difficultyLevel == other.difficultyLevel &&
        themeName == other.themeName &&
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
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            themeId.hashCode),
                        number.hashCode),
                    difficultyLevel.hashCode),
                themeName.hashCode),
            sortOrder.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubThemesRecord')
          ..add('id', id)
          ..add('name', name)
          ..add('themeId', themeId)
          ..add('number', number)
          ..add('difficultyLevel', difficultyLevel)
          ..add('themeName', themeName)
          ..add('sortOrder', sortOrder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubThemesRecordBuilder
    implements Builder<SubThemesRecord, SubThemesRecordBuilder> {
  _$SubThemesRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _themeId;
  String? get themeId => _$this._themeId;
  set themeId(String? themeId) => _$this._themeId = themeId;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _difficultyLevel;
  String? get difficultyLevel => _$this._difficultyLevel;
  set difficultyLevel(String? difficultyLevel) =>
      _$this._difficultyLevel = difficultyLevel;

  String? _themeName;
  String? get themeName => _$this._themeName;
  set themeName(String? themeName) => _$this._themeName = themeName;

  String? _sortOrder;
  String? get sortOrder => _$this._sortOrder;
  set sortOrder(String? sortOrder) => _$this._sortOrder = sortOrder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubThemesRecordBuilder() {
    SubThemesRecord._initializeBuilder(this);
  }

  SubThemesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _themeId = $v.themeId;
      _number = $v.number;
      _difficultyLevel = $v.difficultyLevel;
      _themeName = $v.themeName;
      _sortOrder = $v.sortOrder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubThemesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubThemesRecord;
  }

  @override
  void update(void Function(SubThemesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubThemesRecord build() {
    final _$result = _$v ??
        new _$SubThemesRecord._(
            id: id,
            name: name,
            themeId: themeId,
            number: number,
            difficultyLevel: difficultyLevel,
            themeName: themeName,
            sortOrder: sortOrder,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
