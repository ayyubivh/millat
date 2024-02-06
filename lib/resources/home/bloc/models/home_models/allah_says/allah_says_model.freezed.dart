// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allah_says_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllaySaysModel _$AllaySaysModelFromJson(Map<String, dynamic> json) {
  return _AllaySaysModel.fromJson(json);
}

/// @nodoc
mixin _$AllaySaysModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  AllaySaysResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllaySaysModelCopyWith<AllaySaysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllaySaysModelCopyWith<$Res> {
  factory $AllaySaysModelCopyWith(
          AllaySaysModel value, $Res Function(AllaySaysModel) then) =
      _$AllaySaysModelCopyWithImpl<$Res, AllaySaysModel>;
  @useResult
  $Res call(
      {int? status, String? message, String? error, AllaySaysResult? result});

  $AllaySaysResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AllaySaysModelCopyWithImpl<$Res, $Val extends AllaySaysModel>
    implements $AllaySaysModelCopyWith<$Res> {
  _$AllaySaysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AllaySaysResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllaySaysResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $AllaySaysResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllaySaysModelImplCopyWith<$Res>
    implements $AllaySaysModelCopyWith<$Res> {
  factory _$$AllaySaysModelImplCopyWith(_$AllaySaysModelImpl value,
          $Res Function(_$AllaySaysModelImpl) then) =
      __$$AllaySaysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, AllaySaysResult? result});

  @override
  $AllaySaysResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AllaySaysModelImplCopyWithImpl<$Res>
    extends _$AllaySaysModelCopyWithImpl<$Res, _$AllaySaysModelImpl>
    implements _$$AllaySaysModelImplCopyWith<$Res> {
  __$$AllaySaysModelImplCopyWithImpl(
      _$AllaySaysModelImpl _value, $Res Function(_$AllaySaysModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$AllaySaysModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AllaySaysResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllaySaysModelImpl implements _AllaySaysModel {
  const _$AllaySaysModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$AllaySaysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllaySaysModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final AllaySaysResult? result;

  @override
  String toString() {
    return 'AllaySaysModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllaySaysModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllaySaysModelImplCopyWith<_$AllaySaysModelImpl> get copyWith =>
      __$$AllaySaysModelImplCopyWithImpl<_$AllaySaysModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllaySaysModelImplToJson(
      this,
    );
  }
}

abstract class _AllaySaysModel implements AllaySaysModel {
  const factory _AllaySaysModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final AllaySaysResult? result}) = _$AllaySaysModelImpl;

  factory _AllaySaysModel.fromJson(Map<String, dynamic> json) =
      _$AllaySaysModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  AllaySaysResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$AllaySaysModelImplCopyWith<_$AllaySaysModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllaySaysResult _$AllaySaysResultFromJson(Map<String, dynamic> json) {
  return _AllaySaysResult.fromJson(json);
}

/// @nodoc
mixin _$AllaySaysResult {
  List<AllaySaysData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllaySaysResultCopyWith<AllaySaysResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllaySaysResultCopyWith<$Res> {
  factory $AllaySaysResultCopyWith(
          AllaySaysResult value, $Res Function(AllaySaysResult) then) =
      _$AllaySaysResultCopyWithImpl<$Res, AllaySaysResult>;
  @useResult
  $Res call({List<AllaySaysData>? data});
}

/// @nodoc
class _$AllaySaysResultCopyWithImpl<$Res, $Val extends AllaySaysResult>
    implements $AllaySaysResultCopyWith<$Res> {
  _$AllaySaysResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllaySaysData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllaySaysResultImplCopyWith<$Res>
    implements $AllaySaysResultCopyWith<$Res> {
  factory _$$AllaySaysResultImplCopyWith(_$AllaySaysResultImpl value,
          $Res Function(_$AllaySaysResultImpl) then) =
      __$$AllaySaysResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AllaySaysData>? data});
}

/// @nodoc
class __$$AllaySaysResultImplCopyWithImpl<$Res>
    extends _$AllaySaysResultCopyWithImpl<$Res, _$AllaySaysResultImpl>
    implements _$$AllaySaysResultImplCopyWith<$Res> {
  __$$AllaySaysResultImplCopyWithImpl(
      _$AllaySaysResultImpl _value, $Res Function(_$AllaySaysResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AllaySaysResultImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllaySaysData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllaySaysResultImpl implements _AllaySaysResult {
  const _$AllaySaysResultImpl({required final List<AllaySaysData>? data})
      : _data = data;

  factory _$AllaySaysResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllaySaysResultImplFromJson(json);

  final List<AllaySaysData>? _data;
  @override
  List<AllaySaysData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllaySaysResult(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllaySaysResultImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllaySaysResultImplCopyWith<_$AllaySaysResultImpl> get copyWith =>
      __$$AllaySaysResultImplCopyWithImpl<_$AllaySaysResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllaySaysResultImplToJson(
      this,
    );
  }
}

abstract class _AllaySaysResult implements AllaySaysResult {
  const factory _AllaySaysResult({required final List<AllaySaysData>? data}) =
      _$AllaySaysResultImpl;

  factory _AllaySaysResult.fromJson(Map<String, dynamic> json) =
      _$AllaySaysResultImpl.fromJson;

  @override
  List<AllaySaysData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllaySaysResultImplCopyWith<_$AllaySaysResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllaySaysData _$AllaySaysDataFromJson(Map<String, dynamic> json) {
  return _AllaySaysData.fromJson(json);
}

/// @nodoc
mixin _$AllaySaysData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<Translate>? get translate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllaySaysDataCopyWith<AllaySaysData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllaySaysDataCopyWith<$Res> {
  factory $AllaySaysDataCopyWith(
          AllaySaysData value, $Res Function(AllaySaysData) then) =
      _$AllaySaysDataCopyWithImpl<$Res, AllaySaysData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? content,
      List<Translate>? translate,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$AllaySaysDataCopyWithImpl<$Res, $Val extends AllaySaysData>
    implements $AllaySaysDataCopyWith<$Res> {
  _$AllaySaysDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? translate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as List<Translate>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllaySaysDataImplCopyWith<$Res>
    implements $AllaySaysDataCopyWith<$Res> {
  factory _$$AllaySaysDataImplCopyWith(
          _$AllaySaysDataImpl value, $Res Function(_$AllaySaysDataImpl) then) =
      __$$AllaySaysDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? content,
      List<Translate>? translate,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$AllaySaysDataImplCopyWithImpl<$Res>
    extends _$AllaySaysDataCopyWithImpl<$Res, _$AllaySaysDataImpl>
    implements _$$AllaySaysDataImplCopyWith<$Res> {
  __$$AllaySaysDataImplCopyWithImpl(
      _$AllaySaysDataImpl _value, $Res Function(_$AllaySaysDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? translate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AllaySaysDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      translate: freezed == translate
          ? _value._translate
          : translate // ignore: cast_nullable_to_non_nullable
              as List<Translate>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllaySaysDataImpl implements _AllaySaysData {
  const _$AllaySaysDataImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.content,
      required final List<Translate>? translate,
      required this.createdAt,
      required this.updatedAt})
      : _translate = translate;

  factory _$AllaySaysDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllaySaysDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? content;
  final List<Translate>? _translate;
  @override
  List<Translate>? get translate {
    final value = _translate;
    if (value == null) return null;
    if (_translate is EqualUnmodifiableListView) return _translate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'AllaySaysData(id: $id, title: $title, content: $content, translate: $translate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllaySaysDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._translate, _translate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content,
      const DeepCollectionEquality().hash(_translate), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllaySaysDataImplCopyWith<_$AllaySaysDataImpl> get copyWith =>
      __$$AllaySaysDataImplCopyWithImpl<_$AllaySaysDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllaySaysDataImplToJson(
      this,
    );
  }
}

abstract class _AllaySaysData implements AllaySaysData {
  const factory _AllaySaysData(
      {@JsonKey(name: '_id') required final String? id,
      required final String? title,
      required final String? content,
      required final List<Translate>? translate,
      required final String? createdAt,
      required final String? updatedAt}) = _$AllaySaysDataImpl;

  factory _AllaySaysData.fromJson(Map<String, dynamic> json) =
      _$AllaySaysDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get content;
  @override
  List<Translate>? get translate;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AllaySaysDataImplCopyWith<_$AllaySaysDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translate _$TranslateFromJson(Map<String, dynamic> json) {
  return _Translate.fromJson(json);
}

/// @nodoc
mixin _$Translate {
  String? get language => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslateCopyWith<Translate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateCopyWith<$Res> {
  factory $TranslateCopyWith(Translate value, $Res Function(Translate) then) =
      _$TranslateCopyWithImpl<$Res, Translate>;
  @useResult
  $Res call(
      {String? language, String? content, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$TranslateCopyWithImpl<$Res, $Val extends Translate>
    implements $TranslateCopyWith<$Res> {
  _$TranslateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslateImplCopyWith<$Res>
    implements $TranslateCopyWith<$Res> {
  factory _$$TranslateImplCopyWith(
          _$TranslateImpl value, $Res Function(_$TranslateImpl) then) =
      __$$TranslateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? language, String? content, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$TranslateImplCopyWithImpl<$Res>
    extends _$TranslateCopyWithImpl<$Res, _$TranslateImpl>
    implements _$$TranslateImplCopyWith<$Res> {
  __$$TranslateImplCopyWithImpl(
      _$TranslateImpl _value, $Res Function(_$TranslateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TranslateImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateImpl implements _Translate {
  const _$TranslateImpl(
      {required this.language,
      required this.content,
      @JsonKey(name: '_id') required this.id});

  factory _$TranslateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateImplFromJson(json);

  @override
  final String? language;
  @override
  final String? content;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Translate(language: $language, content: $content, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, content, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      __$$TranslateImplCopyWithImpl<_$TranslateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateImplToJson(
      this,
    );
  }
}

abstract class _Translate implements Translate {
  const factory _Translate(
      {required final String? language,
      required final String? content,
      @JsonKey(name: '_id') required final String? id}) = _$TranslateImpl;

  factory _Translate.fromJson(Map<String, dynamic> json) =
      _$TranslateImpl.fromJson;

  @override
  String? get language;
  @override
  String? get content;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
