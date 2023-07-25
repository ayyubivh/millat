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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuranParaModel _$QuranParaModelFromJson(Map<String, dynamic> json) {
  return _QuranParaModel.fromJson(json);
}

/// @nodoc
mixin _$QuranParaModel {
  List<Juzs> get juzs => throw _privateConstructorUsedError;

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
  $Res call({List<Juzs> juzs});
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
    Object? juzs = null,
  }) {
    return _then(_value.copyWith(
      juzs: null == juzs
          ? _value.juzs
          : juzs // ignore: cast_nullable_to_non_nullable
              as List<Juzs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuranParaModelCopyWith<$Res>
    implements $QuranParaModelCopyWith<$Res> {
  factory _$$_QuranParaModelCopyWith(
          _$_QuranParaModel value, $Res Function(_$_QuranParaModel) then) =
      __$$_QuranParaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Juzs> juzs});
}

/// @nodoc
class __$$_QuranParaModelCopyWithImpl<$Res>
    extends _$QuranParaModelCopyWithImpl<$Res, _$_QuranParaModel>
    implements _$$_QuranParaModelCopyWith<$Res> {
  __$$_QuranParaModelCopyWithImpl(
      _$_QuranParaModel _value, $Res Function(_$_QuranParaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? juzs = null,
  }) {
    return _then(_$_QuranParaModel(
      juzs: null == juzs
          ? _value._juzs
          : juzs // ignore: cast_nullable_to_non_nullable
              as List<Juzs>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuranParaModel implements _QuranParaModel {
  const _$_QuranParaModel({required final List<Juzs> juzs}) : _juzs = juzs;

  factory _$_QuranParaModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuranParaModelFromJson(json);

  final List<Juzs> _juzs;
  @override
  List<Juzs> get juzs {
    if (_juzs is EqualUnmodifiableListView) return _juzs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_juzs);
  }

  @override
  String toString() {
    return 'QuranParaModel(juzs: $juzs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranParaModel &&
            const DeepCollectionEquality().equals(other._juzs, _juzs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_juzs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranParaModelCopyWith<_$_QuranParaModel> get copyWith =>
      __$$_QuranParaModelCopyWithImpl<_$_QuranParaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuranParaModelToJson(
      this,
    );
  }
}

abstract class _QuranParaModel implements QuranParaModel {
  const factory _QuranParaModel({required final List<Juzs> juzs}) =
      _$_QuranParaModel;

  factory _QuranParaModel.fromJson(Map<String, dynamic> json) =
      _$_QuranParaModel.fromJson;

  @override
  List<Juzs> get juzs;
  @override
  @JsonKey(ignore: true)
  _$$_QuranParaModelCopyWith<_$_QuranParaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Juzs _$JuzsFromJson(Map<String, dynamic> json) {
  return _Juzs.fromJson(json);
}

/// @nodoc
mixin _$Juzs {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'juz_number')
  int? get juzNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse_mapping')
  Map<String, String>? get verseMapping => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_verse_id')
  int? get firstVerseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_verse_id')
  int? get lastVerseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'verses_count')
  int? get versesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JuzsCopyWith<Juzs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzsCopyWith<$Res> {
  factory $JuzsCopyWith(Juzs value, $Res Function(Juzs) then) =
      _$JuzsCopyWithImpl<$Res, Juzs>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'juz_number') int? juzNumber,
      @JsonKey(name: 'verse_mapping') Map<String, String>? verseMapping,
      @JsonKey(name: 'first_verse_id') int? firstVerseId,
      @JsonKey(name: 'last_verse_id') int? lastVerseId,
      @JsonKey(name: 'verses_count') int? versesCount});
}

/// @nodoc
class _$JuzsCopyWithImpl<$Res, $Val extends Juzs>
    implements $JuzsCopyWith<$Res> {
  _$JuzsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? juzNumber = freezed,
    Object? verseMapping = freezed,
    Object? firstVerseId = freezed,
    Object? lastVerseId = freezed,
    Object? versesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      juzNumber: freezed == juzNumber
          ? _value.juzNumber
          : juzNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      verseMapping: freezed == verseMapping
          ? _value.verseMapping
          : verseMapping // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      firstVerseId: freezed == firstVerseId
          ? _value.firstVerseId
          : firstVerseId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastVerseId: freezed == lastVerseId
          ? _value.lastVerseId
          : lastVerseId // ignore: cast_nullable_to_non_nullable
              as int?,
      versesCount: freezed == versesCount
          ? _value.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JuzsCopyWith<$Res> implements $JuzsCopyWith<$Res> {
  factory _$$_JuzsCopyWith(_$_Juzs value, $Res Function(_$_Juzs) then) =
      __$$_JuzsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'juz_number') int? juzNumber,
      @JsonKey(name: 'verse_mapping') Map<String, String>? verseMapping,
      @JsonKey(name: 'first_verse_id') int? firstVerseId,
      @JsonKey(name: 'last_verse_id') int? lastVerseId,
      @JsonKey(name: 'verses_count') int? versesCount});
}

/// @nodoc
class __$$_JuzsCopyWithImpl<$Res> extends _$JuzsCopyWithImpl<$Res, _$_Juzs>
    implements _$$_JuzsCopyWith<$Res> {
  __$$_JuzsCopyWithImpl(_$_Juzs _value, $Res Function(_$_Juzs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? juzNumber = freezed,
    Object? verseMapping = freezed,
    Object? firstVerseId = freezed,
    Object? lastVerseId = freezed,
    Object? versesCount = freezed,
  }) {
    return _then(_$_Juzs(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      juzNumber: freezed == juzNumber
          ? _value.juzNumber
          : juzNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      verseMapping: freezed == verseMapping
          ? _value._verseMapping
          : verseMapping // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      firstVerseId: freezed == firstVerseId
          ? _value.firstVerseId
          : firstVerseId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastVerseId: freezed == lastVerseId
          ? _value.lastVerseId
          : lastVerseId // ignore: cast_nullable_to_non_nullable
              as int?,
      versesCount: freezed == versesCount
          ? _value.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Juzs implements _Juzs {
  const _$_Juzs(
      {this.id,
      @JsonKey(name: 'juz_number') this.juzNumber,
      @JsonKey(name: 'verse_mapping') final Map<String, String>? verseMapping,
      @JsonKey(name: 'first_verse_id') this.firstVerseId,
      @JsonKey(name: 'last_verse_id') this.lastVerseId,
      @JsonKey(name: 'verses_count') this.versesCount})
      : _verseMapping = verseMapping;

  factory _$_Juzs.fromJson(Map<String, dynamic> json) => _$$_JuzsFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'juz_number')
  final int? juzNumber;
  final Map<String, String>? _verseMapping;
  @override
  @JsonKey(name: 'verse_mapping')
  Map<String, String>? get verseMapping {
    final value = _verseMapping;
    if (value == null) return null;
    if (_verseMapping is EqualUnmodifiableMapView) return _verseMapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'first_verse_id')
  final int? firstVerseId;
  @override
  @JsonKey(name: 'last_verse_id')
  final int? lastVerseId;
  @override
  @JsonKey(name: 'verses_count')
  final int? versesCount;

  @override
  String toString() {
    return 'Juzs(id: $id, juzNumber: $juzNumber, verseMapping: $verseMapping, firstVerseId: $firstVerseId, lastVerseId: $lastVerseId, versesCount: $versesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Juzs &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.juzNumber, juzNumber) ||
                other.juzNumber == juzNumber) &&
            const DeepCollectionEquality()
                .equals(other._verseMapping, _verseMapping) &&
            (identical(other.firstVerseId, firstVerseId) ||
                other.firstVerseId == firstVerseId) &&
            (identical(other.lastVerseId, lastVerseId) ||
                other.lastVerseId == lastVerseId) &&
            (identical(other.versesCount, versesCount) ||
                other.versesCount == versesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      juzNumber,
      const DeepCollectionEquality().hash(_verseMapping),
      firstVerseId,
      lastVerseId,
      versesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JuzsCopyWith<_$_Juzs> get copyWith =>
      __$$_JuzsCopyWithImpl<_$_Juzs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JuzsToJson(
      this,
    );
  }
}

abstract class _Juzs implements Juzs {
  const factory _Juzs(
      {final int? id,
      @JsonKey(name: 'juz_number') final int? juzNumber,
      @JsonKey(name: 'verse_mapping') final Map<String, String>? verseMapping,
      @JsonKey(name: 'first_verse_id') final int? firstVerseId,
      @JsonKey(name: 'last_verse_id') final int? lastVerseId,
      @JsonKey(name: 'verses_count') final int? versesCount}) = _$_Juzs;

  factory _Juzs.fromJson(Map<String, dynamic> json) = _$_Juzs.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'juz_number')
  int? get juzNumber;
  @override
  @JsonKey(name: 'verse_mapping')
  Map<String, String>? get verseMapping;
  @override
  @JsonKey(name: 'first_verse_id')
  int? get firstVerseId;
  @override
  @JsonKey(name: 'last_verse_id')
  int? get lastVerseId;
  @override
  @JsonKey(name: 'verses_count')
  int? get versesCount;
  @override
  @JsonKey(ignore: true)
  _$$_JuzsCopyWith<_$_Juzs> get copyWith => throw _privateConstructorUsedError;
}
