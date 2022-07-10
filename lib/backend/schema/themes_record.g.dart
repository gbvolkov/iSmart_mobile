// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThemesRecord> _$themesRecordSerializer =
    new _$ThemesRecordSerializer();

class _$ThemesRecordSerializer implements StructuredSerializer<ThemesRecord> {
  @override
  final Iterable<Type> types = const [ThemesRecord, _$ThemesRecord];
  @override
  final String wireName = 'ThemesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ThemesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.subjectId;
    if (value != null) {
      result
        ..add('subject_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subjectName;
    if (value != null) {
      result
        ..add('subject_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.classId;
    if (value != null) {
      result
        ..add('class_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.className;
    if (value != null) {
      result
        ..add('class_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSchoolProgram;
    if (value != null) {
      result
        ..add('is_school_program')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
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
  ThemesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThemesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subject_id':
          result.subjectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subject_name':
          result.subjectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class_id':
          result.classId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class_name':
          result.className = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_school_program':
          result.isSchoolProgram = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sort_order':
          result.sortOrder = serializers.deserialize(value,
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

class _$ThemesRecord extends ThemesRecord {
  @override
  final String id;
  @override
  final String name;
  @override
  final String subjectId;
  @override
  final String subjectName;
  @override
  final String classId;
  @override
  final String className;
  @override
  final bool isActive;
  @override
  final String code;
  @override
  final bool isSchoolProgram;
  @override
  final String number;
  @override
  final String sortOrder;
  @override
  final DocumentReference<Object> reference;

  factory _$ThemesRecord([void Function(ThemesRecordBuilder) updates]) =>
      (new ThemesRecordBuilder()..update(updates)).build();

  _$ThemesRecord._(
      {this.id,
      this.name,
      this.subjectId,
      this.subjectName,
      this.classId,
      this.className,
      this.isActive,
      this.code,
      this.isSchoolProgram,
      this.number,
      this.sortOrder,
      this.reference})
      : super._();

  @override
  ThemesRecord rebuild(void Function(ThemesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemesRecordBuilder toBuilder() => new ThemesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemesRecord &&
        id == other.id &&
        name == other.name &&
        subjectId == other.subjectId &&
        subjectName == other.subjectName &&
        classId == other.classId &&
        className == other.className &&
        isActive == other.isActive &&
        code == other.code &&
        isSchoolProgram == other.isSchoolProgram &&
        number == other.number &&
        sortOrder == other.sortOrder &&
        reference == other.reference;
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
                                            $jc($jc(0, id.hashCode),
                                                name.hashCode),
                                            subjectId.hashCode),
                                        subjectName.hashCode),
                                    classId.hashCode),
                                className.hashCode),
                            isActive.hashCode),
                        code.hashCode),
                    isSchoolProgram.hashCode),
                number.hashCode),
            sortOrder.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThemesRecord')
          ..add('id', id)
          ..add('name', name)
          ..add('subjectId', subjectId)
          ..add('subjectName', subjectName)
          ..add('classId', classId)
          ..add('className', className)
          ..add('isActive', isActive)
          ..add('code', code)
          ..add('isSchoolProgram', isSchoolProgram)
          ..add('number', number)
          ..add('sortOrder', sortOrder)
          ..add('reference', reference))
        .toString();
  }
}

class ThemesRecordBuilder
    implements Builder<ThemesRecord, ThemesRecordBuilder> {
  _$ThemesRecord _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _subjectId;
  String get subjectId => _$this._subjectId;
  set subjectId(String subjectId) => _$this._subjectId = subjectId;

  String _subjectName;
  String get subjectName => _$this._subjectName;
  set subjectName(String subjectName) => _$this._subjectName = subjectName;

  String _classId;
  String get classId => _$this._classId;
  set classId(String classId) => _$this._classId = classId;

  String _className;
  String get className => _$this._className;
  set className(String className) => _$this._className = className;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  bool _isSchoolProgram;
  bool get isSchoolProgram => _$this._isSchoolProgram;
  set isSchoolProgram(bool isSchoolProgram) =>
      _$this._isSchoolProgram = isSchoolProgram;

  String _number;
  String get number => _$this._number;
  set number(String number) => _$this._number = number;

  String _sortOrder;
  String get sortOrder => _$this._sortOrder;
  set sortOrder(String sortOrder) => _$this._sortOrder = sortOrder;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ThemesRecordBuilder() {
    ThemesRecord._initializeBuilder(this);
  }

  ThemesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _subjectId = $v.subjectId;
      _subjectName = $v.subjectName;
      _classId = $v.classId;
      _className = $v.className;
      _isActive = $v.isActive;
      _code = $v.code;
      _isSchoolProgram = $v.isSchoolProgram;
      _number = $v.number;
      _sortOrder = $v.sortOrder;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThemesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThemesRecord;
  }

  @override
  void update(void Function(ThemesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThemesRecord build() {
    final _$result = _$v ??
        new _$ThemesRecord._(
            id: id,
            name: name,
            subjectId: subjectId,
            subjectName: subjectName,
            classId: classId,
            className: className,
            isActive: isActive,
            code: code,
            isSchoolProgram: isSchoolProgram,
            number: number,
            sortOrder: sortOrder,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
