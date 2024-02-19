// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_verses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterVersesModel _$ChapterVersesModelFromJson(Map<String, dynamic> json) {
  return _ChapterVersesModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterVersesModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  VersesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterVersesModelCopyWith<ChapterVersesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterVersesModelCopyWith<$Res> {
  factory $ChapterVersesModelCopyWith(
          ChapterVersesModel value, $Res Function(ChapterVersesModel) then) =
      _$ChapterVersesModelCopyWithImpl<$Res, ChapterVersesModel>;
  @useResult
  $Res call({int code, String status, VersesData data});

  $VersesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChapterVersesModelCopyWithImpl<$Res, $Val extends ChapterVersesModel>
    implements $ChapterVersesModelCopyWith<$Res> {
  _$ChapterVersesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VersesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VersesDataCopyWith<$Res> get data {
    return $VersesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterVersesModelImplCopyWith<$Res>
    implements $ChapterVersesModelCopyWith<$Res> {
  factory _$$ChapterVersesModelImplCopyWith(_$ChapterVersesModelImpl value,
          $Res Function(_$ChapterVersesModelImpl) then) =
      __$$ChapterVersesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, VersesData data});

  @override
  $VersesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChapterVersesModelImplCopyWithImpl<$Res>
    extends _$ChapterVersesModelCopyWithImpl<$Res, _$ChapterVersesModelImpl>
    implements _$$ChapterVersesModelImplCopyWith<$Res> {
  __$$ChapterVersesModelImplCopyWithImpl(_$ChapterVersesModelImpl _value,
      $Res Function(_$ChapterVersesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$ChapterVersesModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VersesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterVersesModelImpl implements _ChapterVersesModel {
  const _$ChapterVersesModelImpl(
      {required this.code, required this.status, required this.data});

  factory _$ChapterVersesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterVersesModelImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final VersesData data;

  @override
  String toString() {
    return 'ChapterVersesModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterVersesModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterVersesModelImplCopyWith<_$ChapterVersesModelImpl> get copyWith =>
      __$$ChapterVersesModelImplCopyWithImpl<_$ChapterVersesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterVersesModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterVersesModel implements ChapterVersesModel {
  const factory _ChapterVersesModel(
      {required final int code,
      required final String status,
      required final VersesData data}) = _$ChapterVersesModelImpl;

  factory _ChapterVersesModel.fromJson(Map<String, dynamic> json) =
      _$ChapterVersesModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  VersesData get data;
  @override
  @JsonKey(ignore: true)
  _$$ChapterVersesModelImplCopyWith<_$ChapterVersesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VersesData _$VersesDataFromJson(Map<String, dynamic> json) {
  return _VersesData.fromJson(json);
}

/// @nodoc
mixin _$VersesData {
  String get englishName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesDataCopyWith<VersesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesDataCopyWith<$Res> {
  factory $VersesDataCopyWith(
          VersesData value, $Res Function(VersesData) then) =
      _$VersesDataCopyWithImpl<$Res, VersesData>;
  @useResult
  $Res call({String englishName});
}

/// @nodoc
class _$VersesDataCopyWithImpl<$Res, $Val extends VersesData>
    implements $VersesDataCopyWith<$Res> {
  _$VersesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
  }) {
    return _then(_value.copyWith(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersesDataImplCopyWith<$Res>
    implements $VersesDataCopyWith<$Res> {
  factory _$$VersesDataImplCopyWith(
          _$VersesDataImpl value, $Res Function(_$VersesDataImpl) then) =
      __$$VersesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String englishName});
}

/// @nodoc
class __$$VersesDataImplCopyWithImpl<$Res>
    extends _$VersesDataCopyWithImpl<$Res, _$VersesDataImpl>
    implements _$$VersesDataImplCopyWith<$Res> {
  __$$VersesDataImplCopyWithImpl(
      _$VersesDataImpl _value, $Res Function(_$VersesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
  }) {
    return _then(_$VersesDataImpl(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersesDataImpl implements _VersesData {
  const _$VersesDataImpl({required this.englishName});

  factory _$VersesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersesDataImplFromJson(json);

  @override
  final String englishName;

  @override
  String toString() {
    return 'VersesData(englishName: $englishName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersesDataImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersesDataImplCopyWith<_$VersesDataImpl> get copyWith =>
      __$$VersesDataImplCopyWithImpl<_$VersesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersesDataImplToJson(
      this,
    );
  }
}

abstract class _VersesData implements VersesData {
  const factory _VersesData({required final String englishName}) =
      _$VersesDataImpl;

  factory _VersesData.fromJson(Map<String, dynamic> json) =
      _$VersesDataImpl.fromJson;

  @override
  String get englishName;
  @override
  @JsonKey(ignore: true)
  _$$VersesDataImplCopyWith<_$VersesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
