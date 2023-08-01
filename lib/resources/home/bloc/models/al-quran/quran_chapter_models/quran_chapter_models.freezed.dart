// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_chapter_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuranChapters _$QuranChaptersFromJson(Map<String, dynamic> json) {
  return _QuranChapters.fromJson(json);
}

/// @nodoc
mixin _$QuranChapters {
  List<Chapters> get chapters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranChaptersCopyWith<QuranChapters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranChaptersCopyWith<$Res> {
  factory $QuranChaptersCopyWith(
          QuranChapters value, $Res Function(QuranChapters) then) =
      _$QuranChaptersCopyWithImpl<$Res, QuranChapters>;
  @useResult
  $Res call({List<Chapters> chapters});
}

/// @nodoc
class _$QuranChaptersCopyWithImpl<$Res, $Val extends QuranChapters>
    implements $QuranChaptersCopyWith<$Res> {
  _$QuranChaptersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapters>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuranChaptersCopyWith<$Res>
    implements $QuranChaptersCopyWith<$Res> {
  factory _$$_QuranChaptersCopyWith(
          _$_QuranChapters value, $Res Function(_$_QuranChapters) then) =
      __$$_QuranChaptersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapters> chapters});
}

/// @nodoc
class __$$_QuranChaptersCopyWithImpl<$Res>
    extends _$QuranChaptersCopyWithImpl<$Res, _$_QuranChapters>
    implements _$$_QuranChaptersCopyWith<$Res> {
  __$$_QuranChaptersCopyWithImpl(
      _$_QuranChapters _value, $Res Function(_$_QuranChapters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = null,
  }) {
    return _then(_$_QuranChapters(
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapters>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuranChapters implements _QuranChapters {
  const _$_QuranChapters({required final List<Chapters> chapters})
      : _chapters = chapters;

  factory _$_QuranChapters.fromJson(Map<String, dynamic> json) =>
      _$$_QuranChaptersFromJson(json);

  final List<Chapters> _chapters;
  @override
  List<Chapters> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'QuranChapters(chapters: $chapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranChapters &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranChaptersCopyWith<_$_QuranChapters> get copyWith =>
      __$$_QuranChaptersCopyWithImpl<_$_QuranChapters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuranChaptersToJson(
      this,
    );
  }
}

abstract class _QuranChapters implements QuranChapters {
  const factory _QuranChapters({required final List<Chapters> chapters}) =
      _$_QuranChapters;

  factory _QuranChapters.fromJson(Map<String, dynamic> json) =
      _$_QuranChapters.fromJson;

  @override
  List<Chapters> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$_QuranChaptersCopyWith<_$_QuranChapters> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapters _$ChaptersFromJson(Map<String, dynamic> json) {
  return _Chapters.fromJson(json);
}

/// @nodoc
mixin _$Chapters {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "revelation_place")
  String get revelatioPlace => throw _privateConstructorUsedError;
  @JsonKey(name: "revelation_order")
  int get revelationOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "bismillah_pre")
  bool get bismillahPre => throw _privateConstructorUsedError;
  @JsonKey(name: "name_simple")
  String get nameSimple => throw _privateConstructorUsedError;
  @JsonKey(name: "name_complex")
  String get nameComplex => throw _privateConstructorUsedError;
  @JsonKey(name: "name_arabic")
  String get nameArabic => throw _privateConstructorUsedError;
  @JsonKey(name: "verses_count")
  int get versesCount => throw _privateConstructorUsedError;
  @JsonKey(name: "translated_name")
  TranslatedName get translatedName => throw _privateConstructorUsedError;
  List<int> get pages => throw _privateConstructorUsedError;

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
      @JsonKey(name: "revelation_place") String revelatioPlace,
      @JsonKey(name: "revelation_order") int revelationOrder,
      @JsonKey(name: "bismillah_pre") bool bismillahPre,
      @JsonKey(name: "name_simple") String nameSimple,
      @JsonKey(name: "name_complex") String nameComplex,
      @JsonKey(name: "name_arabic") String nameArabic,
      @JsonKey(name: "verses_count") int versesCount,
      @JsonKey(name: "translated_name") TranslatedName translatedName,
      List<int> pages});

  $TranslatedNameCopyWith<$Res> get translatedName;
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
    Object? revelatioPlace = null,
    Object? revelationOrder = null,
    Object? bismillahPre = null,
    Object? nameSimple = null,
    Object? nameComplex = null,
    Object? nameArabic = null,
    Object? versesCount = null,
    Object? translatedName = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      revelatioPlace: null == revelatioPlace
          ? _value.revelatioPlace
          : revelatioPlace // ignore: cast_nullable_to_non_nullable
              as String,
      revelationOrder: null == revelationOrder
          ? _value.revelationOrder
          : revelationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      bismillahPre: null == bismillahPre
          ? _value.bismillahPre
          : bismillahPre // ignore: cast_nullable_to_non_nullable
              as bool,
      nameSimple: null == nameSimple
          ? _value.nameSimple
          : nameSimple // ignore: cast_nullable_to_non_nullable
              as String,
      nameComplex: null == nameComplex
          ? _value.nameComplex
          : nameComplex // ignore: cast_nullable_to_non_nullable
              as String,
      nameArabic: null == nameArabic
          ? _value.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String,
      versesCount: null == versesCount
          ? _value.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int,
      translatedName: null == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<$Res> get translatedName {
    return $TranslatedNameCopyWith<$Res>(_value.translatedName, (value) {
      return _then(_value.copyWith(translatedName: value) as $Val);
    });
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
      @JsonKey(name: "revelation_place") String revelatioPlace,
      @JsonKey(name: "revelation_order") int revelationOrder,
      @JsonKey(name: "bismillah_pre") bool bismillahPre,
      @JsonKey(name: "name_simple") String nameSimple,
      @JsonKey(name: "name_complex") String nameComplex,
      @JsonKey(name: "name_arabic") String nameArabic,
      @JsonKey(name: "verses_count") int versesCount,
      @JsonKey(name: "translated_name") TranslatedName translatedName,
      List<int> pages});

  @override
  $TranslatedNameCopyWith<$Res> get translatedName;
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
    Object? revelatioPlace = null,
    Object? revelationOrder = null,
    Object? bismillahPre = null,
    Object? nameSimple = null,
    Object? nameComplex = null,
    Object? nameArabic = null,
    Object? versesCount = null,
    Object? translatedName = null,
    Object? pages = null,
  }) {
    return _then(_$_Chapters(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      revelatioPlace: null == revelatioPlace
          ? _value.revelatioPlace
          : revelatioPlace // ignore: cast_nullable_to_non_nullable
              as String,
      revelationOrder: null == revelationOrder
          ? _value.revelationOrder
          : revelationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      bismillahPre: null == bismillahPre
          ? _value.bismillahPre
          : bismillahPre // ignore: cast_nullable_to_non_nullable
              as bool,
      nameSimple: null == nameSimple
          ? _value.nameSimple
          : nameSimple // ignore: cast_nullable_to_non_nullable
              as String,
      nameComplex: null == nameComplex
          ? _value.nameComplex
          : nameComplex // ignore: cast_nullable_to_non_nullable
              as String,
      nameArabic: null == nameArabic
          ? _value.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String,
      versesCount: null == versesCount
          ? _value.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int,
      translatedName: null == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapters implements _Chapters {
  const _$_Chapters(
      {required this.id,
      @JsonKey(name: "revelation_place") required this.revelatioPlace,
      @JsonKey(name: "revelation_order") required this.revelationOrder,
      @JsonKey(name: "bismillah_pre") required this.bismillahPre,
      @JsonKey(name: "name_simple") required this.nameSimple,
      @JsonKey(name: "name_complex") required this.nameComplex,
      @JsonKey(name: "name_arabic") required this.nameArabic,
      @JsonKey(name: "verses_count") required this.versesCount,
      @JsonKey(name: "translated_name") required this.translatedName,
      required final List<int> pages})
      : _pages = pages;

  factory _$_Chapters.fromJson(Map<String, dynamic> json) =>
      _$$_ChaptersFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "revelation_place")
  final String revelatioPlace;
  @override
  @JsonKey(name: "revelation_order")
  final int revelationOrder;
  @override
  @JsonKey(name: "bismillah_pre")
  final bool bismillahPre;
  @override
  @JsonKey(name: "name_simple")
  final String nameSimple;
  @override
  @JsonKey(name: "name_complex")
  final String nameComplex;
  @override
  @JsonKey(name: "name_arabic")
  final String nameArabic;
  @override
  @JsonKey(name: "verses_count")
  final int versesCount;
  @override
  @JsonKey(name: "translated_name")
  final TranslatedName translatedName;
  final List<int> _pages;
  @override
  List<int> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'Chapters(id: $id, revelatioPlace: $revelatioPlace, revelationOrder: $revelationOrder, bismillahPre: $bismillahPre, nameSimple: $nameSimple, nameComplex: $nameComplex, nameArabic: $nameArabic, versesCount: $versesCount, translatedName: $translatedName, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapters &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.revelatioPlace, revelatioPlace) ||
                other.revelatioPlace == revelatioPlace) &&
            (identical(other.revelationOrder, revelationOrder) ||
                other.revelationOrder == revelationOrder) &&
            (identical(other.bismillahPre, bismillahPre) ||
                other.bismillahPre == bismillahPre) &&
            (identical(other.nameSimple, nameSimple) ||
                other.nameSimple == nameSimple) &&
            (identical(other.nameComplex, nameComplex) ||
                other.nameComplex == nameComplex) &&
            (identical(other.nameArabic, nameArabic) ||
                other.nameArabic == nameArabic) &&
            (identical(other.versesCount, versesCount) ||
                other.versesCount == versesCount) &&
            (identical(other.translatedName, translatedName) ||
                other.translatedName == translatedName) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      revelatioPlace,
      revelationOrder,
      bismillahPre,
      nameSimple,
      nameComplex,
      nameArabic,
      versesCount,
      translatedName,
      const DeepCollectionEquality().hash(_pages));

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
      @JsonKey(name: "revelation_place")
          required final String revelatioPlace,
      @JsonKey(name: "revelation_order")
          required final int revelationOrder,
      @JsonKey(name: "bismillah_pre")
          required final bool bismillahPre,
      @JsonKey(name: "name_simple")
          required final String nameSimple,
      @JsonKey(name: "name_complex")
          required final String nameComplex,
      @JsonKey(name: "name_arabic")
          required final String nameArabic,
      @JsonKey(name: "verses_count")
          required final int versesCount,
      @JsonKey(name: "translated_name")
          required final TranslatedName translatedName,
      required final List<int> pages}) = _$_Chapters;

  factory _Chapters.fromJson(Map<String, dynamic> json) = _$_Chapters.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "revelation_place")
  String get revelatioPlace;
  @override
  @JsonKey(name: "revelation_order")
  int get revelationOrder;
  @override
  @JsonKey(name: "bismillah_pre")
  bool get bismillahPre;
  @override
  @JsonKey(name: "name_simple")
  String get nameSimple;
  @override
  @JsonKey(name: "name_complex")
  String get nameComplex;
  @override
  @JsonKey(name: "name_arabic")
  String get nameArabic;
  @override
  @JsonKey(name: "verses_count")
  int get versesCount;
  @override
  @JsonKey(name: "translated_name")
  TranslatedName get translatedName;
  @override
  List<int> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_ChaptersCopyWith<_$_Chapters> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslatedName _$TranslatedNameFromJson(Map<String, dynamic> json) {
  return _TranslatedName.fromJson(json);
}

/// @nodoc
mixin _$TranslatedName {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatedNameCopyWith<$Res> {
  factory $TranslatedNameCopyWith(
          TranslatedName value, $Res Function(TranslatedName) then) =
      _$TranslatedNameCopyWithImpl<$Res, TranslatedName>;
}

/// @nodoc
class _$TranslatedNameCopyWithImpl<$Res, $Val extends TranslatedName>
    implements $TranslatedNameCopyWith<$Res> {
  _$TranslatedNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TranslatedNameCopyWith<$Res> {
  factory _$$_TranslatedNameCopyWith(
          _$_TranslatedName value, $Res Function(_$_TranslatedName) then) =
      __$$_TranslatedNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TranslatedNameCopyWithImpl<$Res>
    extends _$TranslatedNameCopyWithImpl<$Res, _$_TranslatedName>
    implements _$$_TranslatedNameCopyWith<$Res> {
  __$$_TranslatedNameCopyWithImpl(
      _$_TranslatedName _value, $Res Function(_$_TranslatedName) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_TranslatedName implements _TranslatedName {
  const _$_TranslatedName();

  factory _$_TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$$_TranslatedNameFromJson(json);

  @override
  String toString() {
    return 'TranslatedName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TranslatedName);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslatedNameToJson(
      this,
    );
  }
}

abstract class _TranslatedName implements TranslatedName {
  const factory _TranslatedName() = _$_TranslatedName;

  factory _TranslatedName.fromJson(Map<String, dynamic> json) =
      _$_TranslatedName.fromJson;
}
