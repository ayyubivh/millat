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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ChapterVersesModelCopyWith<$Res>
    implements $ChapterVersesModelCopyWith<$Res> {
  factory _$$_ChapterVersesModelCopyWith(_$_ChapterVersesModel value,
          $Res Function(_$_ChapterVersesModel) then) =
      __$$_ChapterVersesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, VersesData data});

  @override
  $VersesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChapterVersesModelCopyWithImpl<$Res>
    extends _$ChapterVersesModelCopyWithImpl<$Res, _$_ChapterVersesModel>
    implements _$$_ChapterVersesModelCopyWith<$Res> {
  __$$_ChapterVersesModelCopyWithImpl(
      _$_ChapterVersesModel _value, $Res Function(_$_ChapterVersesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$_ChapterVersesModel(
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
class _$_ChapterVersesModel implements _ChapterVersesModel {
  const _$_ChapterVersesModel(
      {required this.code, required this.status, required this.data});

  factory _$_ChapterVersesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterVersesModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterVersesModel &&
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
  _$$_ChapterVersesModelCopyWith<_$_ChapterVersesModel> get copyWith =>
      __$$_ChapterVersesModelCopyWithImpl<_$_ChapterVersesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterVersesModelToJson(
      this,
    );
  }
}

abstract class _ChapterVersesModel implements ChapterVersesModel {
  const factory _ChapterVersesModel(
      {required final int code,
      required final String status,
      required final VersesData data}) = _$_ChapterVersesModel;

  factory _ChapterVersesModel.fromJson(Map<String, dynamic> json) =
      _$_ChapterVersesModel.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  VersesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterVersesModelCopyWith<_$_ChapterVersesModel> get copyWith =>
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
abstract class _$$_VersesDataCopyWith<$Res>
    implements $VersesDataCopyWith<$Res> {
  factory _$$_VersesDataCopyWith(
          _$_VersesData value, $Res Function(_$_VersesData) then) =
      __$$_VersesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String englishName});
}

/// @nodoc
class __$$_VersesDataCopyWithImpl<$Res>
    extends _$VersesDataCopyWithImpl<$Res, _$_VersesData>
    implements _$$_VersesDataCopyWith<$Res> {
  __$$_VersesDataCopyWithImpl(
      _$_VersesData _value, $Res Function(_$_VersesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
  }) {
    return _then(_$_VersesData(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersesData implements _VersesData {
  const _$_VersesData({required this.englishName});

  factory _$_VersesData.fromJson(Map<String, dynamic> json) =>
      _$$_VersesDataFromJson(json);

  @override
  final String englishName;

  @override
  String toString() {
    return 'VersesData(englishName: $englishName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersesData &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersesDataCopyWith<_$_VersesData> get copyWith =>
      __$$_VersesDataCopyWithImpl<_$_VersesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersesDataToJson(
      this,
    );
  }
}

abstract class _VersesData implements VersesData {
  const factory _VersesData({required final String englishName}) =
      _$_VersesData;

  factory _VersesData.fromJson(Map<String, dynamic> json) =
      _$_VersesData.fromJson;

  @override
  String get englishName;
  @override
  @JsonKey(ignore: true)
  _$$_VersesDataCopyWith<_$_VersesData> get copyWith =>
      throw _privateConstructorUsedError;
}
