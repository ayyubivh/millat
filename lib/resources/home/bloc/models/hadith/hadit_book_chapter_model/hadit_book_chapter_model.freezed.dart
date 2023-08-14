// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadit_book_chapter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HadithBooksChapterModel _$HadithBooksChapterModelFromJson(
    Map<String, dynamic> json) {
  return _HadithBooksChapterModel.fromJson(json);
}

/// @nodoc
mixin _$HadithBooksChapterModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Chapters> get chapters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HadithBooksChapterModelCopyWith<HadithBooksChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithBooksChapterModelCopyWith<$Res> {
  factory $HadithBooksChapterModelCopyWith(HadithBooksChapterModel value,
          $Res Function(HadithBooksChapterModel) then) =
      _$HadithBooksChapterModelCopyWithImpl<$Res, HadithBooksChapterModel>;
  @useResult
  $Res call({int status, String message, List<Chapters> chapters});
}

/// @nodoc
class _$HadithBooksChapterModelCopyWithImpl<$Res,
        $Val extends HadithBooksChapterModel>
    implements $HadithBooksChapterModelCopyWith<$Res> {
  _$HadithBooksChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapters>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HadithBooksChapterModelCopyWith<$Res>
    implements $HadithBooksChapterModelCopyWith<$Res> {
  factory _$$_HadithBooksChapterModelCopyWith(_$_HadithBooksChapterModel value,
          $Res Function(_$_HadithBooksChapterModel) then) =
      __$$_HadithBooksChapterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, List<Chapters> chapters});
}

/// @nodoc
class __$$_HadithBooksChapterModelCopyWithImpl<$Res>
    extends _$HadithBooksChapterModelCopyWithImpl<$Res,
        _$_HadithBooksChapterModel>
    implements _$$_HadithBooksChapterModelCopyWith<$Res> {
  __$$_HadithBooksChapterModelCopyWithImpl(_$_HadithBooksChapterModel _value,
      $Res Function(_$_HadithBooksChapterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? chapters = null,
  }) {
    return _then(_$_HadithBooksChapterModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapters>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HadithBooksChapterModel implements _HadithBooksChapterModel {
  _$_HadithBooksChapterModel(
      {required this.status,
      required this.message,
      required final List<Chapters> chapters})
      : _chapters = chapters;

  factory _$_HadithBooksChapterModel.fromJson(Map<String, dynamic> json) =>
      _$$_HadithBooksChapterModelFromJson(json);

  @override
  final int status;
  @override
  final String message;
  final List<Chapters> _chapters;
  @override
  List<Chapters> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'HadithBooksChapterModel(status: $status, message: $message, chapters: $chapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithBooksChapterModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HadithBooksChapterModelCopyWith<_$_HadithBooksChapterModel>
      get copyWith =>
          __$$_HadithBooksChapterModelCopyWithImpl<_$_HadithBooksChapterModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HadithBooksChapterModelToJson(
      this,
    );
  }
}

abstract class _HadithBooksChapterModel implements HadithBooksChapterModel {
  factory _HadithBooksChapterModel(
      {required final int status,
      required final String message,
      required final List<Chapters> chapters}) = _$_HadithBooksChapterModel;

  factory _HadithBooksChapterModel.fromJson(Map<String, dynamic> json) =
      _$_HadithBooksChapterModel.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  List<Chapters> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$_HadithBooksChapterModelCopyWith<_$_HadithBooksChapterModel>
      get copyWith => throw _privateConstructorUsedError;
}

Chapters _$ChaptersFromJson(Map<String, dynamic> json) {
  return _Chapters.fromJson(json);
}

/// @nodoc
mixin _$Chapters {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapterNumber')
  String get chapterNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapterEnglish')
  String get chapterEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapterUrdu')
  String get chapterUrdu => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapterArabic')
  String get chapterArabic => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookSlug')
  String get bookSlug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChaptersCopyWith<Chapters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChaptersCopyWith<$Res> {
  factory $ChaptersCopyWith(Chapters value, $Res Function(Chapters) then) =
      _$ChaptersCopyWithImpl<$Res, Chapters>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'chapterNumber') String chapterNumber,
      @JsonKey(name: 'chapterEnglish') String chapterEnglish,
      @JsonKey(name: 'chapterUrdu') String chapterUrdu,
      @JsonKey(name: 'chapterArabic') String chapterArabic,
      @JsonKey(name: 'bookSlug') String bookSlug});
}

/// @nodoc
class _$ChaptersCopyWithImpl<$Res, $Val extends Chapters>
    implements $ChaptersCopyWith<$Res> {
  _$ChaptersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterNumber = null,
    Object? chapterEnglish = null,
    Object? chapterUrdu = null,
    Object? chapterArabic = null,
    Object? bookSlug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as String,
      chapterEnglish: null == chapterEnglish
          ? _value.chapterEnglish
          : chapterEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      chapterUrdu: null == chapterUrdu
          ? _value.chapterUrdu
          : chapterUrdu // ignore: cast_nullable_to_non_nullable
              as String,
      chapterArabic: null == chapterArabic
          ? _value.chapterArabic
          : chapterArabic // ignore: cast_nullable_to_non_nullable
              as String,
      bookSlug: null == bookSlug
          ? _value.bookSlug
          : bookSlug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChaptersCopyWith<$Res> implements $ChaptersCopyWith<$Res> {
  factory _$$_ChaptersCopyWith(
          _$_Chapters value, $Res Function(_$_Chapters) then) =
      __$$_ChaptersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'chapterNumber') String chapterNumber,
      @JsonKey(name: 'chapterEnglish') String chapterEnglish,
      @JsonKey(name: 'chapterUrdu') String chapterUrdu,
      @JsonKey(name: 'chapterArabic') String chapterArabic,
      @JsonKey(name: 'bookSlug') String bookSlug});
}

/// @nodoc
class __$$_ChaptersCopyWithImpl<$Res>
    extends _$ChaptersCopyWithImpl<$Res, _$_Chapters>
    implements _$$_ChaptersCopyWith<$Res> {
  __$$_ChaptersCopyWithImpl(
      _$_Chapters _value, $Res Function(_$_Chapters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterNumber = null,
    Object? chapterEnglish = null,
    Object? chapterUrdu = null,
    Object? chapterArabic = null,
    Object? bookSlug = null,
  }) {
    return _then(_$_Chapters(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as String,
      chapterEnglish: null == chapterEnglish
          ? _value.chapterEnglish
          : chapterEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      chapterUrdu: null == chapterUrdu
          ? _value.chapterUrdu
          : chapterUrdu // ignore: cast_nullable_to_non_nullable
              as String,
      chapterArabic: null == chapterArabic
          ? _value.chapterArabic
          : chapterArabic // ignore: cast_nullable_to_non_nullable
              as String,
      bookSlug: null == bookSlug
          ? _value.bookSlug
          : bookSlug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapters implements _Chapters {
  const _$_Chapters(
      {required this.id,
      @JsonKey(name: 'chapterNumber') required this.chapterNumber,
      @JsonKey(name: 'chapterEnglish') required this.chapterEnglish,
      @JsonKey(name: 'chapterUrdu') required this.chapterUrdu,
      @JsonKey(name: 'chapterArabic') required this.chapterArabic,
      @JsonKey(name: 'bookSlug') required this.bookSlug});

  factory _$_Chapters.fromJson(Map<String, dynamic> json) =>
      _$$_ChaptersFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'chapterNumber')
  final String chapterNumber;
  @override
  @JsonKey(name: 'chapterEnglish')
  final String chapterEnglish;
  @override
  @JsonKey(name: 'chapterUrdu')
  final String chapterUrdu;
  @override
  @JsonKey(name: 'chapterArabic')
  final String chapterArabic;
  @override
  @JsonKey(name: 'bookSlug')
  final String bookSlug;

  @override
  String toString() {
    return 'Chapters(id: $id, chapterNumber: $chapterNumber, chapterEnglish: $chapterEnglish, chapterUrdu: $chapterUrdu, chapterArabic: $chapterArabic, bookSlug: $bookSlug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapters &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapterNumber, chapterNumber) ||
                other.chapterNumber == chapterNumber) &&
            (identical(other.chapterEnglish, chapterEnglish) ||
                other.chapterEnglish == chapterEnglish) &&
            (identical(other.chapterUrdu, chapterUrdu) ||
                other.chapterUrdu == chapterUrdu) &&
            (identical(other.chapterArabic, chapterArabic) ||
                other.chapterArabic == chapterArabic) &&
            (identical(other.bookSlug, bookSlug) ||
                other.bookSlug == bookSlug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, chapterNumber,
      chapterEnglish, chapterUrdu, chapterArabic, bookSlug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChaptersCopyWith<_$_Chapters> get copyWith =>
      __$$_ChaptersCopyWithImpl<_$_Chapters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChaptersToJson(
      this,
    );
  }
}

abstract class _Chapters implements Chapters {
  const factory _Chapters(
      {required final int id,
      @JsonKey(name: 'chapterNumber') required final String chapterNumber,
      @JsonKey(name: 'chapterEnglish') required final String chapterEnglish,
      @JsonKey(name: 'chapterUrdu') required final String chapterUrdu,
      @JsonKey(name: 'chapterArabic') required final String chapterArabic,
      @JsonKey(name: 'bookSlug') required final String bookSlug}) = _$_Chapters;

  factory _Chapters.fromJson(Map<String, dynamic> json) = _$_Chapters.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'chapterNumber')
  String get chapterNumber;
  @override
  @JsonKey(name: 'chapterEnglish')
  String get chapterEnglish;
  @override
  @JsonKey(name: 'chapterUrdu')
  String get chapterUrdu;
  @override
  @JsonKey(name: 'chapterArabic')
  String get chapterArabic;
  @override
  @JsonKey(name: 'bookSlug')
  String get bookSlug;
  @override
  @JsonKey(ignore: true)
  _$$_ChaptersCopyWith<_$_Chapters> get copyWith =>
      throw _privateConstructorUsedError;
}
