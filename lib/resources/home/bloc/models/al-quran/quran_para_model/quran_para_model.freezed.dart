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
  List<QuranSurahModel>? get surah => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "noOfSurah")
  int? get noOfSurah => throw _privateConstructorUsedError;
  @JsonKey(name: "noOfPara")
  int? get noOfpara => throw _privateConstructorUsedError;

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
      {List<QuranSurahModel>? surah,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "noOfSurah") int? noOfSurah,
      @JsonKey(name: "noOfPara") int? noOfpara});
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
    Object? surah = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? noOfSurah = freezed,
    Object? noOfpara = freezed,
  }) {
    return _then(_value.copyWith(
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<QuranSurahModel>?,
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
      noOfpara: freezed == noOfpara
          ? _value.noOfpara
          : noOfpara // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {List<QuranSurahModel>? surah,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "noOfSurah") int? noOfSurah,
      @JsonKey(name: "noOfPara") int? noOfpara});
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
    Object? surah = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? noOfSurah = freezed,
    Object? noOfpara = freezed,
  }) {
    return _then(_$QuranParaModelImpl(
      surah: freezed == surah
          ? _value._surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<QuranSurahModel>?,
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
      noOfpara: freezed == noOfpara
          ? _value.noOfpara
          : noOfpara // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranParaModelImpl implements _QuranParaModel {
  const _$QuranParaModelImpl(
      {required final List<QuranSurahModel>? surah,
      @JsonKey(name: "_id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "slug") required this.slug,
      @JsonKey(name: "noOfSurah") required this.noOfSurah,
      @JsonKey(name: "noOfPara") required this.noOfpara})
      : _surah = surah;

  factory _$QuranParaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranParaModelImplFromJson(json);

  final List<QuranSurahModel>? _surah;
  @override
  List<QuranSurahModel>? get surah {
    final value = _surah;
    if (value == null) return null;
    if (_surah is EqualUnmodifiableListView) return _surah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: "noOfPara")
  final int? noOfpara;

  @override
  String toString() {
    return 'QuranParaModel(surah: $surah, id: $id, title: $title, slug: $slug, noOfSurah: $noOfSurah, noOfpara: $noOfpara)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranParaModelImpl &&
            const DeepCollectionEquality().equals(other._surah, _surah) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.noOfSurah, noOfSurah) ||
                other.noOfSurah == noOfSurah) &&
            (identical(other.noOfpara, noOfpara) ||
                other.noOfpara == noOfpara));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_surah),
      id,
      title,
      slug,
      noOfSurah,
      noOfpara);

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
          {required final List<QuranSurahModel>? surah,
          @JsonKey(name: "_id") required final String? id,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "slug") required final String? slug,
          @JsonKey(name: "noOfSurah") required final int? noOfSurah,
          @JsonKey(name: "noOfPara") required final int? noOfpara}) =
      _$QuranParaModelImpl;

  factory _QuranParaModel.fromJson(Map<String, dynamic> json) =
      _$QuranParaModelImpl.fromJson;

  @override
  List<QuranSurahModel>? get surah;
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
  @JsonKey(name: "noOfPara")
  int? get noOfpara;
  @override
  @JsonKey(ignore: true)
  _$$QuranParaModelImplCopyWith<_$QuranParaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
