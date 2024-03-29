// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_bookmark_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranBookmModel _$QuranBookmModelFromJson(Map<String, dynamic> json) {
  return _QuranBookmModel.fromJson(json);
}

/// @nodoc
mixin _$QuranBookmModel {
  List<String>? get surahs => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<String>? get chapter => throw _privateConstructorUsedError;
  List<VerseModel>? get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranBookmModelCopyWith<QuranBookmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranBookmModelCopyWith<$Res> {
  factory $QuranBookmModelCopyWith(
          QuranBookmModel value, $Res Function(QuranBookmModel) then) =
      _$QuranBookmModelCopyWithImpl<$Res, QuranBookmModel>;
  @useResult
  $Res call(
      {List<String>? surahs,
      @JsonKey(name: "_id") String id,
      String? user,
      String? title,
      String? image,
      String? slug,
      List<String>? chapter,
      List<VerseModel>? verses});
}

/// @nodoc
class _$QuranBookmModelCopyWithImpl<$Res, $Val extends QuranBookmModel>
    implements $QuranBookmModelCopyWith<$Res> {
  _$QuranBookmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = freezed,
    Object? id = null,
    Object? user = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
    Object? chapter = freezed,
    Object? verses = freezed,
  }) {
    return _then(_value.copyWith(
      surahs: freezed == surahs
          ? _value.surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verses: freezed == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranBookmModelImplCopyWith<$Res>
    implements $QuranBookmModelCopyWith<$Res> {
  factory _$$QuranBookmModelImplCopyWith(_$QuranBookmModelImpl value,
          $Res Function(_$QuranBookmModelImpl) then) =
      __$$QuranBookmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? surahs,
      @JsonKey(name: "_id") String id,
      String? user,
      String? title,
      String? image,
      String? slug,
      List<String>? chapter,
      List<VerseModel>? verses});
}

/// @nodoc
class __$$QuranBookmModelImplCopyWithImpl<$Res>
    extends _$QuranBookmModelCopyWithImpl<$Res, _$QuranBookmModelImpl>
    implements _$$QuranBookmModelImplCopyWith<$Res> {
  __$$QuranBookmModelImplCopyWithImpl(
      _$QuranBookmModelImpl _value, $Res Function(_$QuranBookmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = freezed,
    Object? id = null,
    Object? user = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
    Object? chapter = freezed,
    Object? verses = freezed,
  }) {
    return _then(_$QuranBookmModelImpl(
      surahs: freezed == surahs
          ? _value._surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value._chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verses: freezed == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranBookmModelImpl implements _QuranBookmModel {
  const _$QuranBookmModelImpl(
      {required final List<String>? surahs,
      @JsonKey(name: "_id") required this.id,
      required this.user,
      required this.title,
      required this.image,
      required this.slug,
      required final List<String>? chapter,
      required final List<VerseModel>? verses})
      : _surahs = surahs,
        _chapter = chapter,
        _verses = verses;

  factory _$QuranBookmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranBookmModelImplFromJson(json);

  final List<String>? _surahs;
  @override
  List<String>? get surahs {
    final value = _surahs;
    if (value == null) return null;
    if (_surahs is EqualUnmodifiableListView) return _surahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String? user;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? slug;
  final List<String>? _chapter;
  @override
  List<String>? get chapter {
    final value = _chapter;
    if (value == null) return null;
    if (_chapter is EqualUnmodifiableListView) return _chapter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VerseModel>? _verses;
  @override
  List<VerseModel>? get verses {
    final value = _verses;
    if (value == null) return null;
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuranBookmModel(surahs: $surahs, id: $id, user: $user, title: $title, image: $image, slug: $slug, chapter: $chapter, verses: $verses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranBookmModelImpl &&
            const DeepCollectionEquality().equals(other._surahs, _surahs) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._chapter, _chapter) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_surahs),
      id,
      user,
      title,
      image,
      slug,
      const DeepCollectionEquality().hash(_chapter),
      const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranBookmModelImplCopyWith<_$QuranBookmModelImpl> get copyWith =>
      __$$QuranBookmModelImplCopyWithImpl<_$QuranBookmModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranBookmModelImplToJson(
      this,
    );
  }
}

abstract class _QuranBookmModel implements QuranBookmModel {
  const factory _QuranBookmModel(
      {required final List<String>? surahs,
      @JsonKey(name: "_id") required final String id,
      required final String? user,
      required final String? title,
      required final String? image,
      required final String? slug,
      required final List<String>? chapter,
      required final List<VerseModel>? verses}) = _$QuranBookmModelImpl;

  factory _QuranBookmModel.fromJson(Map<String, dynamic> json) =
      _$QuranBookmModelImpl.fromJson;

  @override
  List<String>? get surahs;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String? get user;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  List<String>? get chapter;
  @override
  List<VerseModel>? get verses;
  @override
  @JsonKey(ignore: true)
  _$$QuranBookmModelImplCopyWith<_$QuranBookmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerseModel _$VerseModelFromJson(Map<String, dynamic> json) {
  return _VerseModel.fromJson(json);
}

/// @nodoc
mixin _$VerseModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get surah => throw _privateConstructorUsedError;
  int? get surahNumber => throw _privateConstructorUsedError;
  int? get ayahNumber => throw _privateConstructorUsedError;
  int? get verse => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseModelCopyWith<VerseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseModelCopyWith<$Res> {
  factory $VerseModelCopyWith(
          VerseModel value, $Res Function(VerseModel) then) =
      _$VerseModelCopyWithImpl<$Res, VerseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? surah,
      int? surahNumber,
      int? ayahNumber,
      int? verse,
      String? content});
}

/// @nodoc
class _$VerseModelCopyWithImpl<$Res, $Val extends VerseModel>
    implements $VerseModelCopyWith<$Res> {
  _$VerseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surah = freezed,
    Object? surahNumber = freezed,
    Object? ayahNumber = freezed,
    Object? verse = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as String?,
      surahNumber: freezed == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahNumber: freezed == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      verse: freezed == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerseModelImplCopyWith<$Res>
    implements $VerseModelCopyWith<$Res> {
  factory _$$VerseModelImplCopyWith(
          _$VerseModelImpl value, $Res Function(_$VerseModelImpl) then) =
      __$$VerseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? surah,
      int? surahNumber,
      int? ayahNumber,
      int? verse,
      String? content});
}

/// @nodoc
class __$$VerseModelImplCopyWithImpl<$Res>
    extends _$VerseModelCopyWithImpl<$Res, _$VerseModelImpl>
    implements _$$VerseModelImplCopyWith<$Res> {
  __$$VerseModelImplCopyWithImpl(
      _$VerseModelImpl _value, $Res Function(_$VerseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surah = freezed,
    Object? surahNumber = freezed,
    Object? ayahNumber = freezed,
    Object? verse = freezed,
    Object? content = freezed,
  }) {
    return _then(_$VerseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as String?,
      surahNumber: freezed == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahNumber: freezed == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      verse: freezed == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerseModelImpl implements _VerseModel {
  const _$VerseModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.surah,
      required this.surahNumber,
      required this.ayahNumber,
      required this.verse,
      required this.content});

  factory _$VerseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? surah;
  @override
  final int? surahNumber;
  @override
  final int? ayahNumber;
  @override
  final int? verse;
  @override
  final String? content;

  @override
  String toString() {
    return 'VerseModel(id: $id, surah: $surah, surahNumber: $surahNumber, ayahNumber: $ayahNumber, verse: $verse, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, surah, surahNumber, ayahNumber, verse, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseModelImplCopyWith<_$VerseModelImpl> get copyWith =>
      __$$VerseModelImplCopyWithImpl<_$VerseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseModelImplToJson(
      this,
    );
  }
}

abstract class _VerseModel implements VerseModel {
  const factory _VerseModel(
      {@JsonKey(name: '_id') required final String? id,
      required final String? surah,
      required final int? surahNumber,
      required final int? ayahNumber,
      required final int? verse,
      required final String? content}) = _$VerseModelImpl;

  factory _VerseModel.fromJson(Map<String, dynamic> json) =
      _$VerseModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get surah;
  @override
  int? get surahNumber;
  @override
  int? get ayahNumber;
  @override
  int? get verse;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$VerseModelImplCopyWith<_$VerseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
