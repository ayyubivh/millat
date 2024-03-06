// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_aya_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranSurahAyayModel _$QuranSurahAyayModelFromJson(Map<String, dynamic> json) {
  return _QuranSurahAyayModel.fromJson(json);
}

/// @nodoc
mixin _$QuranSurahAyayModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  dynamic? get surah => throw _privateConstructorUsedError;
  int? get noOfAyah => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<Translation>? get translations => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranSurahAyayModelCopyWith<QuranSurahAyayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranSurahAyayModelCopyWith<$Res> {
  factory $QuranSurahAyayModelCopyWith(
          QuranSurahAyayModel value, $Res Function(QuranSurahAyayModel) then) =
      _$QuranSurahAyayModelCopyWithImpl<$Res, QuranSurahAyayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      dynamic? surah,
      int? noOfAyah,
      String? content,
      List<Translation>? translations,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$QuranSurahAyayModelCopyWithImpl<$Res, $Val extends QuranSurahAyayModel>
    implements $QuranSurahAyayModelCopyWith<$Res> {
  _$QuranSurahAyayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surah = freezed,
    Object? noOfAyah = freezed,
    Object? content = freezed,
    Object? translations = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      noOfAyah: freezed == noOfAyah
          ? _value.noOfAyah
          : noOfAyah // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
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
abstract class _$$QuranSurahAyayModelImplCopyWith<$Res>
    implements $QuranSurahAyayModelCopyWith<$Res> {
  factory _$$QuranSurahAyayModelImplCopyWith(_$QuranSurahAyayModelImpl value,
          $Res Function(_$QuranSurahAyayModelImpl) then) =
      __$$QuranSurahAyayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      dynamic? surah,
      int? noOfAyah,
      String? content,
      List<Translation>? translations,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$QuranSurahAyayModelImplCopyWithImpl<$Res>
    extends _$QuranSurahAyayModelCopyWithImpl<$Res, _$QuranSurahAyayModelImpl>
    implements _$$QuranSurahAyayModelImplCopyWith<$Res> {
  __$$QuranSurahAyayModelImplCopyWithImpl(_$QuranSurahAyayModelImpl _value,
      $Res Function(_$QuranSurahAyayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surah = freezed,
    Object? noOfAyah = freezed,
    Object? content = freezed,
    Object? translations = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$QuranSurahAyayModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      noOfAyah: freezed == noOfAyah
          ? _value.noOfAyah
          : noOfAyah // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      translations: freezed == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
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
class _$QuranSurahAyayModelImpl implements _QuranSurahAyayModel {
  const _$QuranSurahAyayModelImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.surah,
      required this.noOfAyah,
      required this.content,
      required final List<Translation>? translations,
      required this.createdAt,
      required this.updatedAt})
      : _translations = translations;

  factory _$QuranSurahAyayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranSurahAyayModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final dynamic? surah;
  @override
  final int? noOfAyah;
  @override
  final String? content;
  final List<Translation>? _translations;
  @override
  List<Translation>? get translations {
    final value = _translations;
    if (value == null) return null;
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'QuranSurahAyayModel(id: $id, surah: $surah, noOfAyah: $noOfAyah, content: $content, translations: $translations, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranSurahAyayModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.surah, surah) &&
            (identical(other.noOfAyah, noOfAyah) ||
                other.noOfAyah == noOfAyah) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
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
      const DeepCollectionEquality().hash(surah),
      noOfAyah,
      content,
      const DeepCollectionEquality().hash(_translations),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranSurahAyayModelImplCopyWith<_$QuranSurahAyayModelImpl> get copyWith =>
      __$$QuranSurahAyayModelImplCopyWithImpl<_$QuranSurahAyayModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranSurahAyayModelImplToJson(
      this,
    );
  }
}

abstract class _QuranSurahAyayModel implements QuranSurahAyayModel {
  const factory _QuranSurahAyayModel(
      {@JsonKey(name: "_id") required final String? id,
      required final dynamic? surah,
      required final int? noOfAyah,
      required final String? content,
      required final List<Translation>? translations,
      required final String? createdAt,
      required final String? updatedAt}) = _$QuranSurahAyayModelImpl;

  factory _QuranSurahAyayModel.fromJson(Map<String, dynamic> json) =
      _$QuranSurahAyayModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  dynamic? get surah;
  @override
  int? get noOfAyah;
  @override
  String? get content;
  @override
  List<Translation>? get translations;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$QuranSurahAyayModelImplCopyWith<_$QuranSurahAyayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  String? get translationBy => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get imageContent => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call(
      {String? translationBy,
      String? language,
      String? audio,
      String? content,
      String? imageContent,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translationBy = freezed,
    Object? language = freezed,
    Object? audio = freezed,
    Object? content = freezed,
    Object? imageContent = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      translationBy: freezed == translationBy
          ? _value.translationBy
          : translationBy // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageContent: freezed == imageContent
          ? _value.imageContent
          : imageContent // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
          _$TranslationImpl value, $Res Function(_$TranslationImpl) then) =
      __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? translationBy,
      String? language,
      String? audio,
      String? content,
      String? imageContent,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
      _$TranslationImpl _value, $Res Function(_$TranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translationBy = freezed,
    Object? language = freezed,
    Object? audio = freezed,
    Object? content = freezed,
    Object? imageContent = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TranslationImpl(
      translationBy: freezed == translationBy
          ? _value.translationBy
          : translationBy // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageContent: freezed == imageContent
          ? _value.imageContent
          : imageContent // ignore: cast_nullable_to_non_nullable
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
class _$TranslationImpl implements _Translation {
  const _$TranslationImpl(
      {required this.translationBy,
      required this.language,
      required this.audio,
      required this.content,
      required this.imageContent,
      @JsonKey(name: "_id") required this.id});

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  final String? translationBy;
  @override
  final String? language;
  @override
  final String? audio;
  @override
  final String? content;
  @override
  final String? imageContent;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Translation(translationBy: $translationBy, language: $language, audio: $audio, content: $content, imageContent: $imageContent, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
            (identical(other.translationBy, translationBy) ||
                other.translationBy == translationBy) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageContent, imageContent) ||
                other.imageContent == imageContent) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, translationBy, language, audio, content, imageContent, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  const factory _Translation(
      {required final String? translationBy,
      required final String? language,
      required final String? audio,
      required final String? content,
      required final String? imageContent,
      @JsonKey(name: "_id") required final String? id}) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  String? get translationBy;
  @override
  String? get language;
  @override
  String? get audio;
  @override
  String? get content;
  @override
  String? get imageContent;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
