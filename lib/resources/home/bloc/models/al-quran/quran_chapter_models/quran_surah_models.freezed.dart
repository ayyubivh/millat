// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_surah_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranSurahModel _$QuranSurahModelFromJson(Map<String, dynamic> json) {
  return _QuranSurahModel.fromJson(json);
}

/// @nodoc
mixin _$QuranSurahModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "noOfSurah")
  int? get noOfSurah => throw _privateConstructorUsedError;
  @JsonKey(name: "noOfAyah")
  int? get noOfAyah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranSurahModelCopyWith<QuranSurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranSurahModelCopyWith<$Res> {
  factory $QuranSurahModelCopyWith(
          QuranSurahModel value, $Res Function(QuranSurahModel) then) =
      _$QuranSurahModelCopyWithImpl<$Res, QuranSurahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "noOfSurah") int? noOfSurah,
      @JsonKey(name: "noOfAyah") int? noOfAyah});
}

/// @nodoc
class _$QuranSurahModelCopyWithImpl<$Res, $Val extends QuranSurahModel>
    implements $QuranSurahModelCopyWith<$Res> {
  _$QuranSurahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? noOfSurah = freezed,
    Object? noOfAyah = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfSurah: freezed == noOfSurah
          ? _value.noOfSurah
          : noOfSurah // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfAyah: freezed == noOfAyah
          ? _value.noOfAyah
          : noOfAyah // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranSurahModelImplCopyWith<$Res>
    implements $QuranSurahModelCopyWith<$Res> {
  factory _$$QuranSurahModelImplCopyWith(_$QuranSurahModelImpl value,
          $Res Function(_$QuranSurahModelImpl) then) =
      __$$QuranSurahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "noOfSurah") int? noOfSurah,
      @JsonKey(name: "noOfAyah") int? noOfAyah});
}

/// @nodoc
class __$$QuranSurahModelImplCopyWithImpl<$Res>
    extends _$QuranSurahModelCopyWithImpl<$Res, _$QuranSurahModelImpl>
    implements _$$QuranSurahModelImplCopyWith<$Res> {
  __$$QuranSurahModelImplCopyWithImpl(
      _$QuranSurahModelImpl _value, $Res Function(_$QuranSurahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? noOfSurah = freezed,
    Object? noOfAyah = freezed,
  }) {
    return _then(_$QuranSurahModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfSurah: freezed == noOfSurah
          ? _value.noOfSurah
          : noOfSurah // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfAyah: freezed == noOfAyah
          ? _value.noOfAyah
          : noOfAyah // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranSurahModelImpl implements _QuranSurahModel {
  const _$QuranSurahModelImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "slug") required this.slug,
      @JsonKey(name: "noOfSurah") required this.noOfSurah,
      @JsonKey(name: "noOfAyah") required this.noOfAyah});

  factory _$QuranSurahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranSurahModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "noOfSurah")
  final int? noOfSurah;
  @override
  @JsonKey(name: "noOfAyah")
  final int? noOfAyah;

  @override
  String toString() {
    return 'QuranSurahModel(id: $id, title: $title, slug: $slug, noOfSurah: $noOfSurah, noOfAyah: $noOfAyah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranSurahModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.noOfSurah, noOfSurah) ||
                other.noOfSurah == noOfSurah) &&
            (identical(other.noOfAyah, noOfAyah) ||
                other.noOfAyah == noOfAyah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, slug, noOfSurah, noOfAyah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranSurahModelImplCopyWith<_$QuranSurahModelImpl> get copyWith =>
      __$$QuranSurahModelImplCopyWithImpl<_$QuranSurahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranSurahModelImplToJson(
      this,
    );
  }
}

abstract class _QuranSurahModel implements QuranSurahModel {
  const factory _QuranSurahModel(
          {@JsonKey(name: "_id") required final String? id,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "slug") required final String? slug,
          @JsonKey(name: "noOfSurah") required final int? noOfSurah,
          @JsonKey(name: "noOfAyah") required final int? noOfAyah}) =
      _$QuranSurahModelImpl;

  factory _QuranSurahModel.fromJson(Map<String, dynamic> json) =
      _$QuranSurahModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "noOfSurah")
  int? get noOfSurah;
  @override
  @JsonKey(name: "noOfAyah")
  int? get noOfAyah;
  @override
  @JsonKey(ignore: true)
  _$$QuranSurahModelImplCopyWith<_$QuranSurahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
