// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_para_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranParaModel _$QuranParaModelFromJson(Map<String, dynamic> json) {
  return _QuranParaModel.fromJson(json);
}

/// @nodoc
mixin _$QuranParaModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'surah')
  List<QuranSurahModel>? get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'paraNumber')
  int? get paraNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranParaModelCopyWith<QuranParaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranParaModelCopyWith<$Res> {
  factory $QuranParaModelCopyWith(
          QuranParaModel value, $Res Function(QuranParaModel) then) =
      _$QuranParaModelCopyWithImpl<$Res, QuranParaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'surah') List<QuranSurahModel>? surah,
      @JsonKey(name: 'paraNumber') int? paraNumber,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$QuranParaModelCopyWithImpl<$Res, $Val extends QuranParaModel>
    implements $QuranParaModelCopyWith<$Res> {
  _$QuranParaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? surah = freezed,
    Object? paraNumber = freezed,
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
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<QuranSurahModel>?,
      paraNumber: freezed == paraNumber
          ? _value.paraNumber
          : paraNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$QuranParaModelImplCopyWith<$Res>
    implements $QuranParaModelCopyWith<$Res> {
  factory _$$QuranParaModelImplCopyWith(_$QuranParaModelImpl value,
          $Res Function(_$QuranParaModelImpl) then) =
      __$$QuranParaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'surah') List<QuranSurahModel>? surah,
      @JsonKey(name: 'paraNumber') int? paraNumber,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$QuranParaModelImplCopyWithImpl<$Res>
    extends _$QuranParaModelCopyWithImpl<$Res, _$QuranParaModelImpl>
    implements _$$QuranParaModelImplCopyWith<$Res> {
  __$$QuranParaModelImplCopyWithImpl(
      _$QuranParaModelImpl _value, $Res Function(_$QuranParaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? surah = freezed,
    Object? paraNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$QuranParaModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value._surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<QuranSurahModel>?,
      paraNumber: freezed == paraNumber
          ? _value.paraNumber
          : paraNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$QuranParaModelImpl implements _QuranParaModel {
  const _$QuranParaModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'surah') required final List<QuranSurahModel>? surah,
      @JsonKey(name: 'paraNumber') required this.paraNumber,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _surah = surah;

  factory _$QuranParaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranParaModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  final List<QuranSurahModel>? _surah;
  @override
  @JsonKey(name: 'surah')
  List<QuranSurahModel>? get surah {
    final value = _surah;
    if (value == null) return null;
    if (_surah is EqualUnmodifiableListView) return _surah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'paraNumber')
  final int? paraNumber;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'QuranParaModel(id: $id, title: $title, surah: $surah, paraNumber: $paraNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranParaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._surah, _surah) &&
            (identical(other.paraNumber, paraNumber) ||
                other.paraNumber == paraNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_surah),
      paraNumber,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranParaModelImplCopyWith<_$QuranParaModelImpl> get copyWith =>
      __$$QuranParaModelImplCopyWithImpl<_$QuranParaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranParaModelImplToJson(
      this,
    );
  }
}

abstract class _QuranParaModel implements QuranParaModel {
  const factory _QuranParaModel(
          {@JsonKey(name: '_id') required final String? id,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'surah') required final List<QuranSurahModel>? surah,
          @JsonKey(name: 'paraNumber') required final int? paraNumber,
          @JsonKey(name: 'createdAt') required final String? createdAt,
          @JsonKey(name: 'updatedAt') required final String? updatedAt}) =
      _$QuranParaModelImpl;

  factory _QuranParaModel.fromJson(Map<String, dynamic> json) =
      _$QuranParaModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'surah')
  List<QuranSurahModel>? get surah;
  @override
  @JsonKey(name: 'paraNumber')
  int? get paraNumber;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$QuranParaModelImplCopyWith<_$QuranParaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
