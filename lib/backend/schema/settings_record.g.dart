// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsRecord> _$settingsRecordSerializer =
    new _$SettingsRecordSerializer();

class _$SettingsRecordSerializer
    implements StructuredSerializer<SettingsRecord> {
  @override
  final Iterable<Type> types = const [SettingsRecord, _$SettingsRecord];
  @override
  final String wireName = 'SettingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SettingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageBaseUrl;
    if (value != null) {
      result
        ..add('image_base_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.caterogyPlatformEntryBase;
    if (value != null) {
      result
        ..add('caterogy_platform_entry_base')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gradeCodeDefault;
    if (value != null) {
      result
        ..add('grade_code_default')
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
  SettingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_base_url':
          result.imageBaseUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'caterogy_platform_entry_base':
          result.caterogyPlatformEntryBase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grade_code_default':
          result.gradeCodeDefault = serializers.deserialize(value,
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

class _$SettingsRecord extends SettingsRecord {
  @override
  final String? name;
  @override
  final String? imageBaseUrl;
  @override
  final String? caterogyPlatformEntryBase;
  @override
  final String? gradeCodeDefault;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SettingsRecord([void Function(SettingsRecordBuilder)? updates]) =>
      (new SettingsRecordBuilder()..update(updates)).build();

  _$SettingsRecord._(
      {this.name,
      this.imageBaseUrl,
      this.caterogyPlatformEntryBase,
      this.gradeCodeDefault,
      this.ffRef})
      : super._();

  @override
  SettingsRecord rebuild(void Function(SettingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsRecordBuilder toBuilder() =>
      new SettingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsRecord &&
        name == other.name &&
        imageBaseUrl == other.imageBaseUrl &&
        caterogyPlatformEntryBase == other.caterogyPlatformEntryBase &&
        gradeCodeDefault == other.gradeCodeDefault &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), imageBaseUrl.hashCode),
                caterogyPlatformEntryBase.hashCode),
            gradeCodeDefault.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsRecord')
          ..add('name', name)
          ..add('imageBaseUrl', imageBaseUrl)
          ..add('caterogyPlatformEntryBase', caterogyPlatformEntryBase)
          ..add('gradeCodeDefault', gradeCodeDefault)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SettingsRecordBuilder
    implements Builder<SettingsRecord, SettingsRecordBuilder> {
  _$SettingsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageBaseUrl;
  String? get imageBaseUrl => _$this._imageBaseUrl;
  set imageBaseUrl(String? imageBaseUrl) => _$this._imageBaseUrl = imageBaseUrl;

  String? _caterogyPlatformEntryBase;
  String? get caterogyPlatformEntryBase => _$this._caterogyPlatformEntryBase;
  set caterogyPlatformEntryBase(String? caterogyPlatformEntryBase) =>
      _$this._caterogyPlatformEntryBase = caterogyPlatformEntryBase;

  String? _gradeCodeDefault;
  String? get gradeCodeDefault => _$this._gradeCodeDefault;
  set gradeCodeDefault(String? gradeCodeDefault) =>
      _$this._gradeCodeDefault = gradeCodeDefault;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SettingsRecordBuilder() {
    SettingsRecord._initializeBuilder(this);
  }

  SettingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _imageBaseUrl = $v.imageBaseUrl;
      _caterogyPlatformEntryBase = $v.caterogyPlatformEntryBase;
      _gradeCodeDefault = $v.gradeCodeDefault;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsRecord;
  }

  @override
  void update(void Function(SettingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsRecord build() {
    final _$result = _$v ??
        new _$SettingsRecord._(
            name: name,
            imageBaseUrl: imageBaseUrl,
            caterogyPlatformEntryBase: caterogyPlatformEntryBase,
            gradeCodeDefault: gradeCodeDefault,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
