// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriesRecord> _$categoriesRecordSerializer =
    new _$CategoriesRecordSerializer();

class _$CategoriesRecordSerializer
    implements StructuredSerializer<CategoriesRecord> {
  @override
  final Iterable<Type> types = const [CategoriesRecord, _$CategoriesRecord];
  @override
  final String wireName = 'CategoriesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoriesRecord object,
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
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentId;
    if (value != null) {
      result
        ..add('parent_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.practiceId;
    if (value != null) {
      result
        ..add('practice_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVisible;
    if (value != null) {
      result
        ..add('is_visible')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sortOrder;
    if (value != null) {
      result
        ..add('sort_order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.practiceName;
    if (value != null) {
      result
        ..add('practice_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parent;
    if (value != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.children;
    if (value != null) {
      result
        ..add('children')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
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
  CategoriesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesRecordBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent_id':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'practice_id':
          result.practiceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_visible':
          result.isVisible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sort_order':
          result.sortOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'class_id':
          result.classId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class_name':
          result.className = serializers.deserialize(value,
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
        case 'practice_name':
          result.practiceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'children':
          result.children.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
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

class _$CategoriesRecord extends CategoriesRecord {
  @override
  final String name;
  @override
  final String id;
  @override
  final String parentId;
  @override
  final String practiceId;
  @override
  final String description;
  @override
  final String type;
  @override
  final String imageUrl;
  @override
  final String shortDescription;
  @override
  final bool isVisible;
  @override
  final int sortOrder;
  @override
  final String classId;
  @override
  final String className;
  @override
  final String subjectId;
  @override
  final String subjectName;
  @override
  final String practiceName;
  @override
  final DocumentReference<Object> parent;
  @override
  final BuiltList<DocumentReference<Object>> children;
  @override
  final String code;
  @override
  final DocumentReference<Object> reference;

  factory _$CategoriesRecord(
          [void Function(CategoriesRecordBuilder) updates]) =>
      (new CategoriesRecordBuilder()..update(updates)).build();

  _$CategoriesRecord._(
      {this.name,
      this.id,
      this.parentId,
      this.practiceId,
      this.description,
      this.type,
      this.imageUrl,
      this.shortDescription,
      this.isVisible,
      this.sortOrder,
      this.classId,
      this.className,
      this.subjectId,
      this.subjectName,
      this.practiceName,
      this.parent,
      this.children,
      this.code,
      this.reference})
      : super._();

  @override
  CategoriesRecord rebuild(void Function(CategoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesRecordBuilder toBuilder() =>
      new CategoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesRecord &&
        name == other.name &&
        id == other.id &&
        parentId == other.parentId &&
        practiceId == other.practiceId &&
        description == other.description &&
        type == other.type &&
        imageUrl == other.imageUrl &&
        shortDescription == other.shortDescription &&
        isVisible == other.isVisible &&
        sortOrder == other.sortOrder &&
        classId == other.classId &&
        className == other.className &&
        subjectId == other.subjectId &&
        subjectName == other.subjectName &&
        practiceName == other.practiceName &&
        parent == other.parent &&
        children == other.children &&
        code == other.code &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                name
                                                                                    .hashCode),
                                                                            id
                                                                                .hashCode),
                                                                        parentId
                                                                            .hashCode),
                                                                    practiceId
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            type.hashCode),
                                                        imageUrl.hashCode),
                                                    shortDescription.hashCode),
                                                isVisible.hashCode),
                                            sortOrder.hashCode),
                                        classId.hashCode),
                                    className.hashCode),
                                subjectId.hashCode),
                            subjectName.hashCode),
                        practiceName.hashCode),
                    parent.hashCode),
                children.hashCode),
            code.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriesRecord')
          ..add('name', name)
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('practiceId', practiceId)
          ..add('description', description)
          ..add('type', type)
          ..add('imageUrl', imageUrl)
          ..add('shortDescription', shortDescription)
          ..add('isVisible', isVisible)
          ..add('sortOrder', sortOrder)
          ..add('classId', classId)
          ..add('className', className)
          ..add('subjectId', subjectId)
          ..add('subjectName', subjectName)
          ..add('practiceName', practiceName)
          ..add('parent', parent)
          ..add('children', children)
          ..add('code', code)
          ..add('reference', reference))
        .toString();
  }
}

class CategoriesRecordBuilder
    implements Builder<CategoriesRecord, CategoriesRecordBuilder> {
  _$CategoriesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  String _practiceId;
  String get practiceId => _$this._practiceId;
  set practiceId(String practiceId) => _$this._practiceId = practiceId;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _shortDescription;
  String get shortDescription => _$this._shortDescription;
  set shortDescription(String shortDescription) =>
      _$this._shortDescription = shortDescription;

  bool _isVisible;
  bool get isVisible => _$this._isVisible;
  set isVisible(bool isVisible) => _$this._isVisible = isVisible;

  int _sortOrder;
  int get sortOrder => _$this._sortOrder;
  set sortOrder(int sortOrder) => _$this._sortOrder = sortOrder;

  String _classId;
  String get classId => _$this._classId;
  set classId(String classId) => _$this._classId = classId;

  String _className;
  String get className => _$this._className;
  set className(String className) => _$this._className = className;

  String _subjectId;
  String get subjectId => _$this._subjectId;
  set subjectId(String subjectId) => _$this._subjectId = subjectId;

  String _subjectName;
  String get subjectName => _$this._subjectName;
  set subjectName(String subjectName) => _$this._subjectName = subjectName;

  String _practiceName;
  String get practiceName => _$this._practiceName;
  set practiceName(String practiceName) => _$this._practiceName = practiceName;

  DocumentReference<Object> _parent;
  DocumentReference<Object> get parent => _$this._parent;
  set parent(DocumentReference<Object> parent) => _$this._parent = parent;

  ListBuilder<DocumentReference<Object>> _children;
  ListBuilder<DocumentReference<Object>> get children =>
      _$this._children ??= new ListBuilder<DocumentReference<Object>>();
  set children(ListBuilder<DocumentReference<Object>> children) =>
      _$this._children = children;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CategoriesRecordBuilder() {
    CategoriesRecord._initializeBuilder(this);
  }

  CategoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _parentId = $v.parentId;
      _practiceId = $v.practiceId;
      _description = $v.description;
      _type = $v.type;
      _imageUrl = $v.imageUrl;
      _shortDescription = $v.shortDescription;
      _isVisible = $v.isVisible;
      _sortOrder = $v.sortOrder;
      _classId = $v.classId;
      _className = $v.className;
      _subjectId = $v.subjectId;
      _subjectName = $v.subjectName;
      _practiceName = $v.practiceName;
      _parent = $v.parent;
      _children = $v.children?.toBuilder();
      _code = $v.code;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriesRecord;
  }

  @override
  void update(void Function(CategoriesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesRecord build() {
    _$CategoriesRecord _$result;
    try {
      _$result = _$v ??
          new _$CategoriesRecord._(
              name: name,
              id: id,
              parentId: parentId,
              practiceId: practiceId,
              description: description,
              type: type,
              imageUrl: imageUrl,
              shortDescription: shortDescription,
              isVisible: isVisible,
              sortOrder: sortOrder,
              classId: classId,
              className: className,
              subjectId: subjectId,
              subjectName: subjectName,
              practiceName: practiceName,
              parent: parent,
              children: _children?.build(),
              code: code,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'children';
        _children?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
