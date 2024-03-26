// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_para_aya_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranParaAyaModel _$QuranParaAyaModelFromJson(Map<String, dynamic> json) {
  return _QuranParaAyaModel.fromJson(json);
}

/// @nodoc
mixin _$QuranParaAyaModel {
  Para? get para => throw _privateConstructorUsedError;
  List<Ayah>? get ayahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranParaAyaModelCopyWith<QuranParaAyaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranParaAyaModelCopyWith<$Res> {
  factory $QuranParaAyaModelCopyWith(
          QuranParaAyaModel value, $Res Function(QuranParaAyaModel) then) =
      _$QuranParaAyaModelCopyWithImpl<$Res, QuranParaAyaModel>;
  @useResult
  $Res call({Para? para, List<Ayah>? ayahs});

  $ParaCopyWith<$Res>? get para;
}

/// @nodoc
class _$QuranParaAyaModelCopyWithImpl<$Res, $Val extends QuranParaAyaModel>
    implements $QuranParaAyaModelCopyWith<$Res> {
  _$QuranParaAyaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? para = freezed,
    Object? ayahs = freezed,
  }) {
    return _then(_value.copyWith(
      para: freezed == para
          ? _value.para
          : para // ignore: cast_nullable_to_non_nullable
              as Para?,
      ayahs: freezed == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayah>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParaCopyWith<$Res>? get para {
    if (_value.para == null) {
      return null;
    }

    return $ParaCopyWith<$Res>(_value.para!, (value) {
      return _then(_value.copyWith(para: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranParaAyaModelImplCopyWith<$Res>
    implements $QuranParaAyaModelCopyWith<$Res> {
  factory _$$QuranParaAyaModelImplCopyWith(_$QuranParaAyaModelImpl value,
          $Res Function(_$QuranParaAyaModelImpl) then) =
      __$$QuranParaAyaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Para? para, List<Ayah>? ayahs});

  @override
  $ParaCopyWith<$Res>? get para;
}

/// @nodoc
class __$$QuranParaAyaModelImplCopyWithImpl<$Res>
    extends _$QuranParaAyaModelCopyWithImpl<$Res, _$QuranParaAyaModelImpl>
    implements _$$QuranParaAyaModelImplCopyWith<$Res> {
  __$$QuranParaAyaModelImplCopyWithImpl(_$QuranParaAyaModelImpl _value,
      $Res Function(_$QuranParaAyaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? para = freezed,
    Object? ayahs = freezed,
  }) {
    return _then(_$QuranParaAyaModelImpl(
      para: freezed == para
          ? _value.para
          : para // ignore: cast_nullable_to_non_nullable
              as Para?,
      ayahs: freezed == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayah>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranParaAyaModelImpl implements _QuranParaAyaModel {
  const _$QuranParaAyaModelImpl(
      {required this.para, required final List<Ayah>? ayahs})
      : _ayahs = ayahs;

  factory _$QuranParaAyaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranParaAyaModelImplFromJson(json);

  @override
  final Para? para;
  final List<Ayah>? _ayahs;
  @override
  List<Ayah>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuranParaAyaModel(para: $para, ayahs: $ayahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranParaAyaModelImpl &&
            (identical(other.para, para) || other.para == para) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, para, const DeepCollectionEquality().hash(_ayahs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranParaAyaModelImplCopyWith<_$QuranParaAyaModelImpl> get copyWith =>
      __$$QuranParaAyaModelImplCopyWithImpl<_$QuranParaAyaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranParaAyaModelImplToJson(
      this,
    );
  }
}

abstract class _QuranParaAyaModel implements QuranParaAyaModel {
  const factory _QuranParaAyaModel(
      {required final Para? para,
      required final List<Ayah>? ayahs}) = _$QuranParaAyaModelImpl;

  factory _QuranParaAyaModel.fromJson(Map<String, dynamic> json) =
      _$QuranParaAyaModelImpl.fromJson;

  @override
  Para? get para;
  @override
  List<Ayah>? get ayahs;
  @override
  @JsonKey(ignore: true)
  _$$QuranParaAyaModelImplCopyWith<_$QuranParaAyaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Para _$ParaFromJson(Map<String, dynamic> json) {
  return _Para.fromJson(json);
}

/// @nodoc
mixin _$Para {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Surah>? get surah => throw _privateConstructorUsedError;
  int? get paraNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParaCopyWith<Para> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParaCopyWith<$Res> {
  factory $ParaCopyWith(Para value, $Res Function(Para) then) =
      _$ParaCopyWithImpl<$Res, Para>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      List<Surah>? surah,
      int? paraNumber});
}

/// @nodoc
class _$ParaCopyWithImpl<$Res, $Val extends Para>
    implements $ParaCopyWith<$Res> {
  _$ParaCopyWithImpl(this._value, this._then);

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
              as List<Surah>?,
      paraNumber: freezed == paraNumber
          ? _value.paraNumber
          : paraNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParaImplCopyWith<$Res> implements $ParaCopyWith<$Res> {
  factory _$$ParaImplCopyWith(
          _$ParaImpl value, $Res Function(_$ParaImpl) then) =
      __$$ParaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      List<Surah>? surah,
      int? paraNumber});
}

/// @nodoc
class __$$ParaImplCopyWithImpl<$Res>
    extends _$ParaCopyWithImpl<$Res, _$ParaImpl>
    implements _$$ParaImplCopyWith<$Res> {
  __$$ParaImplCopyWithImpl(_$ParaImpl _value, $Res Function(_$ParaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? surah = freezed,
    Object? paraNumber = freezed,
  }) {
    return _then(_$ParaImpl(
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
              as List<Surah>?,
      paraNumber: freezed == paraNumber
          ? _value.paraNumber
          : paraNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParaImpl implements _Para {
  const _$ParaImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required final List<Surah>? surah,
      required this.paraNumber})
      : _surah = surah;

  factory _$ParaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParaImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  final List<Surah>? _surah;
  @override
  List<Surah>? get surah {
    final value = _surah;
    if (value == null) return null;
    if (_surah is EqualUnmodifiableListView) return _surah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? paraNumber;

  @override
  String toString() {
    return 'Para(id: $id, title: $title, surah: $surah, paraNumber: $paraNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._surah, _surah) &&
            (identical(other.paraNumber, paraNumber) ||
                other.paraNumber == paraNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_surah), paraNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParaImplCopyWith<_$ParaImpl> get copyWith =>
      __$$ParaImplCopyWithImpl<_$ParaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParaImplToJson(
      this,
    );
  }
}

abstract class _Para implements Para {
  const factory _Para(
      {@JsonKey(name: "_id") required final String? id,
      required final String? title,
      required final List<Surah>? surah,
      required final int? paraNumber}) = _$ParaImpl;

  factory _Para.fromJson(Map<String, dynamic> json) = _$ParaImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  List<Surah>? get surah;
  @override
  int? get paraNumber;
  @override
  @JsonKey(ignore: true)
  _$$ParaImplCopyWith<_$ParaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  @JsonKey(name: "surahNumber")
  int? get surahNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "ayahRange")
  String? get ayahRange => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {@JsonKey(name: "surahNumber") int? surahNumber,
      @JsonKey(name: "ayahRange") String? ayahRange,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = freezed,
    Object? ayahRange = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      surahNumber: freezed == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahRange: freezed == ayahRange
          ? _value.ayahRange
          : ayahRange // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahImplCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$SurahImplCopyWith(
          _$SurahImpl value, $Res Function(_$SurahImpl) then) =
      __$$SurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "surahNumber") int? surahNumber,
      @JsonKey(name: "ayahRange") String? ayahRange,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$SurahImplCopyWithImpl<$Res>
    extends _$SurahCopyWithImpl<$Res, _$SurahImpl>
    implements _$$SurahImplCopyWith<$Res> {
  __$$SurahImplCopyWithImpl(
      _$SurahImpl _value, $Res Function(_$SurahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = freezed,
    Object? ayahRange = freezed,
    Object? id = freezed,
  }) {
    return _then(_$SurahImpl(
      surahNumber: freezed == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahRange: freezed == ayahRange
          ? _value.ayahRange
          : ayahRange // ignore: cast_nullable_to_non_nullable
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
class _$SurahImpl implements _Surah {
  const _$SurahImpl(
      {@JsonKey(name: "surahNumber") required this.surahNumber,
      @JsonKey(name: "ayahRange") required this.ayahRange,
      @JsonKey(name: "_id") required this.id});

  factory _$SurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahImplFromJson(json);

  @override
  @JsonKey(name: "surahNumber")
  final int? surahNumber;
  @override
  @JsonKey(name: "ayahRange")
  final String? ayahRange;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Surah(surahNumber: $surahNumber, ayahRange: $ayahRange, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahImpl &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahRange, ayahRange) ||
                other.ayahRange == ayahRange) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, surahNumber, ayahRange, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      __$$SurahImplCopyWithImpl<_$SurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahImplToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  const factory _Surah(
      {@JsonKey(name: "surahNumber") required final int? surahNumber,
      @JsonKey(name: "ayahRange") required final String? ayahRange,
      @JsonKey(name: "_id") required final String? id}) = _$SurahImpl;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$SurahImpl.fromJson;

  @override
  @JsonKey(name: "surahNumber")
  int? get surahNumber;
  @override
  @JsonKey(name: "ayahRange")
  String? get ayahRange;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ayah _$AyahFromJson(Map<String, dynamic> json) {
  return _Ayah.fromJson(json);
}

/// @nodoc
mixin _$Ayah {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  Surah? get surah => throw _privateConstructorUsedError;
  @JsonKey(name: "surahNumber")
  int? get surahNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "ayahNumber")
  int? get ayahNumber => throw _privateConstructorUsedError;
  int? get verse => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<Translation>? get translations => throw _privateConstructorUsedError;
  @JsonKey(name: "revealedIn")
  String? get revealedIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) =
      _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      Surah? surah,
      @JsonKey(name: "surahNumber") int? surahNumber,
      @JsonKey(name: "ayahNumber") int? ayahNumber,
      int? verse,
      String? content,
      List<Translation>? translations,
      @JsonKey(name: "revealedIn") String? revealedIn});

  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

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
    Object? translations = freezed,
    Object? revealedIn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
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
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
      revealedIn: freezed == revealedIn
          ? _value.revealedIn
          : revealedIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(
          _$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      Surah? surah,
      @JsonKey(name: "surahNumber") int? surahNumber,
      @JsonKey(name: "ayahNumber") int? ayahNumber,
      int? verse,
      String? content,
      List<Translation>? translations,
      @JsonKey(name: "revealedIn") String? revealedIn});

  @override
  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res>
    extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
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
    Object? translations = freezed,
    Object? revealedIn = freezed,
  }) {
    return _then(_$AyahImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
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
      translations: freezed == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
      revealedIn: freezed == revealedIn
          ? _value.revealedIn
          : revealedIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahImpl implements _Ayah {
  const _$AyahImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.surah,
      @JsonKey(name: "surahNumber") required this.surahNumber,
      @JsonKey(name: "ayahNumber") required this.ayahNumber,
      required this.verse,
      required this.content,
      required final List<Translation>? translations,
      @JsonKey(name: "revealedIn") required this.revealedIn})
      : _translations = translations;

  factory _$AyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final Surah? surah;
  @override
  @JsonKey(name: "surahNumber")
  final int? surahNumber;
  @override
  @JsonKey(name: "ayahNumber")
  final int? ayahNumber;
  @override
  final int? verse;
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
  @JsonKey(name: "revealedIn")
  final String? revealedIn;

  @override
  String toString() {
    return 'Ayah(id: $id, surah: $surah, surahNumber: $surahNumber, ayahNumber: $ayahNumber, verse: $verse, content: $content, translations: $translations, revealedIn: $revealedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.revealedIn, revealedIn) ||
                other.revealedIn == revealedIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      surah,
      surahNumber,
      ayahNumber,
      verse,
      content,
      const DeepCollectionEquality().hash(_translations),
      revealedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahImplToJson(
      this,
    );
  }
}

abstract class _Ayah implements Ayah {
  const factory _Ayah(
          {@JsonKey(name: "_id") required final String? id,
          required final Surah? surah,
          @JsonKey(name: "surahNumber") required final int? surahNumber,
          @JsonKey(name: "ayahNumber") required final int? ayahNumber,
          required final int? verse,
          required final String? content,
          required final List<Translation>? translations,
          @JsonKey(name: "revealedIn") required final String? revealedIn}) =
      _$AyahImpl;

  factory _Ayah.fromJson(Map<String, dynamic> json) = _$AyahImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  Surah? get surah;
  @override
  @JsonKey(name: "surahNumber")
  int? get surahNumber;
  @override
  @JsonKey(name: "ayahNumber")
  int? get ayahNumber;
  @override
  int? get verse;
  @override
  String? get content;
  @override
  List<Translation>? get translations;
  @override
  @JsonKey(name: "revealedIn")
  String? get revealedIn;
  @override
  @JsonKey(ignore: true)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  String? get translationBy => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
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
      String? content,
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
    Object? content = freezed,
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
      String? content,
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
    Object? content = freezed,
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
      required this.content,
      @JsonKey(name: "_id") required this.id});

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  final String? translationBy;
  @override
  final String? language;
  @override
  final String? content;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Translation(translationBy: $translationBy, language: $language, content: $content, id: $id)';
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
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, translationBy, language, content, id);

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
      required final String? content,
      @JsonKey(name: "_id") required final String? id}) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  String? get translationBy;
  @override
  String? get language;
  @override
  String? get content;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
