// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_by_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterByIdModel _$ChapterByIdModelFromJson(Map<String, dynamic> json) {
  return _ChapterByIdModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterByIdModel {
  Chapter get chapter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterByIdModelCopyWith<ChapterByIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterByIdModelCopyWith<$Res> {
  factory $ChapterByIdModelCopyWith(
          ChapterByIdModel value, $Res Function(ChapterByIdModel) then) =
      _$ChapterByIdModelCopyWithImpl<$Res, ChapterByIdModel>;
  @useResult
  $Res call({Chapter chapter});

  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ChapterByIdModelCopyWithImpl<$Res, $Val extends ChapterByIdModel>
    implements $ChapterByIdModelCopyWith<$Res> {
  _$ChapterByIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<$Res> get chapter {
    return $ChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterByIdModelImplCopyWith<$Res>
    implements $ChapterByIdModelCopyWith<$Res> {
  factory _$$ChapterByIdModelImplCopyWith(_$ChapterByIdModelImpl value,
          $Res Function(_$ChapterByIdModelImpl) then) =
      __$$ChapterByIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Chapter chapter});

  @override
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ChapterByIdModelImplCopyWithImpl<$Res>
    extends _$ChapterByIdModelCopyWithImpl<$Res, _$ChapterByIdModelImpl>
    implements _$$ChapterByIdModelImplCopyWith<$Res> {
  __$$ChapterByIdModelImplCopyWithImpl(_$ChapterByIdModelImpl _value,
      $Res Function(_$ChapterByIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
  }) {
    return _then(_$ChapterByIdModelImpl(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterByIdModelImpl implements _ChapterByIdModel {
  const _$ChapterByIdModelImpl({required this.chapter});

  factory _$ChapterByIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterByIdModelImplFromJson(json);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'ChapterByIdModel(chapter: $chapter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterByIdModelImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterByIdModelImplCopyWith<_$ChapterByIdModelImpl> get copyWith =>
      __$$ChapterByIdModelImplCopyWithImpl<_$ChapterByIdModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterByIdModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterByIdModel implements ChapterByIdModel {
  const factory _ChapterByIdModel({required final Chapter chapter}) =
      _$ChapterByIdModelImpl;

  factory _ChapterByIdModel.fromJson(Map<String, dynamic> json) =
      _$ChapterByIdModelImpl.fromJson;

  @override
  Chapter get chapter;
  @override
  @JsonKey(ignore: true)
  _$$ChapterByIdModelImplCopyWith<_$ChapterByIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "revelation_place")
  String get revelationPlace => throw _privateConstructorUsedError;
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
  List<int> get pages => throw _privateConstructorUsedError;
  @JsonKey(name: "translated_name")
  TranslatedName? get translatedName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "revelation_place") String revelationPlace,
      @JsonKey(name: "revelation_order") int revelationOrder,
      @JsonKey(name: "bismillah_pre") bool bismillahPre,
      @JsonKey(name: "name_simple") String nameSimple,
      @JsonKey(name: "name_complex") String nameComplex,
      @JsonKey(name: "name_arabic") String nameArabic,
      @JsonKey(name: "verses_count") int versesCount,
      List<int> pages,
      @JsonKey(name: "translated_name") TranslatedName? translatedName});

  $TranslatedNameCopyWith<$Res>? get translatedName;
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? revelationPlace = null,
    Object? revelationOrder = null,
    Object? bismillahPre = null,
    Object? nameSimple = null,
    Object? nameComplex = null,
    Object? nameArabic = null,
    Object? versesCount = null,
    Object? pages = null,
    Object? translatedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      revelationPlace: null == revelationPlace
          ? _value.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
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
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>,
      translatedName: freezed == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<$Res>? get translatedName {
    if (_value.translatedName == null) {
      return null;
    }

    return $TranslatedNameCopyWith<$Res>(_value.translatedName!, (value) {
      return _then(_value.copyWith(translatedName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "revelation_place") String revelationPlace,
      @JsonKey(name: "revelation_order") int revelationOrder,
      @JsonKey(name: "bismillah_pre") bool bismillahPre,
      @JsonKey(name: "name_simple") String nameSimple,
      @JsonKey(name: "name_complex") String nameComplex,
      @JsonKey(name: "name_arabic") String nameArabic,
      @JsonKey(name: "verses_count") int versesCount,
      List<int> pages,
      @JsonKey(name: "translated_name") TranslatedName? translatedName});

  @override
  $TranslatedNameCopyWith<$Res>? get translatedName;
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? revelationPlace = null,
    Object? revelationOrder = null,
    Object? bismillahPre = null,
    Object? nameSimple = null,
    Object? nameComplex = null,
    Object? nameArabic = null,
    Object? versesCount = null,
    Object? pages = null,
    Object? translatedName = freezed,
  }) {
    return _then(_$ChapterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      revelationPlace: null == revelationPlace
          ? _value.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
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
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>,
      translatedName: freezed == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl implements _Chapter {
  const _$ChapterImpl(
      {required this.id,
      @JsonKey(name: "revelation_place") required this.revelationPlace,
      @JsonKey(name: "revelation_order") required this.revelationOrder,
      @JsonKey(name: "bismillah_pre") required this.bismillahPre,
      @JsonKey(name: "name_simple") required this.nameSimple,
      @JsonKey(name: "name_complex") required this.nameComplex,
      @JsonKey(name: "name_arabic") required this.nameArabic,
      @JsonKey(name: "verses_count") required this.versesCount,
      required final List<int> pages,
      @JsonKey(name: "translated_name") this.translatedName})
      : _pages = pages;

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "revelation_place")
  final String revelationPlace;
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
  final List<int> _pages;
  @override
  List<int> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  @JsonKey(name: "translated_name")
  final TranslatedName? translatedName;

  @override
  String toString() {
    return 'Chapter(id: $id, revelationPlace: $revelationPlace, revelationOrder: $revelationOrder, bismillahPre: $bismillahPre, nameSimple: $nameSimple, nameComplex: $nameComplex, nameArabic: $nameArabic, versesCount: $versesCount, pages: $pages, translatedName: $translatedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.revelationPlace, revelationPlace) ||
                other.revelationPlace == revelationPlace) &&
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
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.translatedName, translatedName) ||
                other.translatedName == translatedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      revelationPlace,
      revelationOrder,
      bismillahPre,
      nameSimple,
      nameComplex,
      nameArabic,
      versesCount,
      const DeepCollectionEquality().hash(_pages),
      translatedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter(
      {required final int id,
      @JsonKey(name: "revelation_place") required final String revelationPlace,
      @JsonKey(name: "revelation_order") required final int revelationOrder,
      @JsonKey(name: "bismillah_pre") required final bool bismillahPre,
      @JsonKey(name: "name_simple") required final String nameSimple,
      @JsonKey(name: "name_complex") required final String nameComplex,
      @JsonKey(name: "name_arabic") required final String nameArabic,
      @JsonKey(name: "verses_count") required final int versesCount,
      required final List<int> pages,
      @JsonKey(name: "translated_name")
      final TranslatedName? translatedName}) = _$ChapterImpl;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "revelation_place")
  String get revelationPlace;
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
  List<int> get pages;
  @override
  @JsonKey(name: "translated_name")
  TranslatedName? get translatedName;
  @override
  @JsonKey(ignore: true)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslatedName _$TranslatedNameFromJson(Map<String, dynamic> json) {
  return _TranslatedName.fromJson(json);
}

/// @nodoc
mixin _$TranslatedName {
  @JsonKey(name: "language_name")
  String get languageName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslatedNameCopyWith<TranslatedName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatedNameCopyWith<$Res> {
  factory $TranslatedNameCopyWith(
          TranslatedName value, $Res Function(TranslatedName) then) =
      _$TranslatedNameCopyWithImpl<$Res, TranslatedName>;
  @useResult
  $Res call({@JsonKey(name: "language_name") String languageName, String name});
}

/// @nodoc
class _$TranslatedNameCopyWithImpl<$Res, $Val extends TranslatedName>
    implements $TranslatedNameCopyWith<$Res> {
  _$TranslatedNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslatedNameImplCopyWith<$Res>
    implements $TranslatedNameCopyWith<$Res> {
  factory _$$TranslatedNameImplCopyWith(_$TranslatedNameImpl value,
          $Res Function(_$TranslatedNameImpl) then) =
      __$$TranslatedNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "language_name") String languageName, String name});
}

/// @nodoc
class __$$TranslatedNameImplCopyWithImpl<$Res>
    extends _$TranslatedNameCopyWithImpl<$Res, _$TranslatedNameImpl>
    implements _$$TranslatedNameImplCopyWith<$Res> {
  __$$TranslatedNameImplCopyWithImpl(
      _$TranslatedNameImpl _value, $Res Function(_$TranslatedNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageName = null,
    Object? name = null,
  }) {
    return _then(_$TranslatedNameImpl(
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslatedNameImpl implements _TranslatedName {
  const _$TranslatedNameImpl(
      {@JsonKey(name: "language_name") required this.languageName,
      required this.name});

  factory _$TranslatedNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslatedNameImplFromJson(json);

  @override
  @JsonKey(name: "language_name")
  final String languageName;
  @override
  final String name;

  @override
  String toString() {
    return 'TranslatedName(languageName: $languageName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatedNameImpl &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslatedNameImplCopyWith<_$TranslatedNameImpl> get copyWith =>
      __$$TranslatedNameImplCopyWithImpl<_$TranslatedNameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslatedNameImplToJson(
      this,
    );
  }
}

abstract class _TranslatedName implements TranslatedName {
  const factory _TranslatedName(
      {@JsonKey(name: "language_name") required final String languageName,
      required final String name}) = _$TranslatedNameImpl;

  factory _TranslatedName.fromJson(Map<String, dynamic> json) =
      _$TranslatedNameImpl.fromJson;

  @override
  @JsonKey(name: "language_name")
  String get languageName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TranslatedNameImplCopyWith<_$TranslatedNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
