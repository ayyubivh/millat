// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'para_verse_uthmani.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParaVersesModelofUthmani _$ParaVersesModelofUthmaniFromJson(
    Map<String, dynamic> json) {
  return _ParaVersesModelofUthmani.fromJson(json);
}

/// @nodoc
mixin _$ParaVersesModelofUthmani {
  List<Verses> get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParaVersesModelofUthmaniCopyWith<ParaVersesModelofUthmani> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParaVersesModelofUthmaniCopyWith<$Res> {
  factory $ParaVersesModelofUthmaniCopyWith(ParaVersesModelofUthmani value,
          $Res Function(ParaVersesModelofUthmani) then) =
      _$ParaVersesModelofUthmaniCopyWithImpl<$Res, ParaVersesModelofUthmani>;
  @useResult
  $Res call({List<Verses> verses});
}

/// @nodoc
class _$ParaVersesModelofUthmaniCopyWithImpl<$Res,
        $Val extends ParaVersesModelofUthmani>
    implements $ParaVersesModelofUthmaniCopyWith<$Res> {
  _$ParaVersesModelofUthmaniCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verses = null,
  }) {
    return _then(_value.copyWith(
      verses: null == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verses>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParaVersesModelofUthmaniImplCopyWith<$Res>
    implements $ParaVersesModelofUthmaniCopyWith<$Res> {
  factory _$$ParaVersesModelofUthmaniImplCopyWith(
          _$ParaVersesModelofUthmaniImpl value,
          $Res Function(_$ParaVersesModelofUthmaniImpl) then) =
      __$$ParaVersesModelofUthmaniImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Verses> verses});
}

/// @nodoc
class __$$ParaVersesModelofUthmaniImplCopyWithImpl<$Res>
    extends _$ParaVersesModelofUthmaniCopyWithImpl<$Res,
        _$ParaVersesModelofUthmaniImpl>
    implements _$$ParaVersesModelofUthmaniImplCopyWith<$Res> {
  __$$ParaVersesModelofUthmaniImplCopyWithImpl(
      _$ParaVersesModelofUthmaniImpl _value,
      $Res Function(_$ParaVersesModelofUthmaniImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verses = null,
  }) {
    return _then(_$ParaVersesModelofUthmaniImpl(
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verses>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParaVersesModelofUthmaniImpl implements _ParaVersesModelofUthmani {
  const _$ParaVersesModelofUthmaniImpl({required final List<Verses> verses})
      : _verses = verses;

  factory _$ParaVersesModelofUthmaniImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParaVersesModelofUthmaniImplFromJson(json);

  final List<Verses> _verses;
  @override
  List<Verses> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  @override
  String toString() {
    return 'ParaVersesModelofUthmani(verses: $verses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParaVersesModelofUthmaniImpl &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParaVersesModelofUthmaniImplCopyWith<_$ParaVersesModelofUthmaniImpl>
      get copyWith => __$$ParaVersesModelofUthmaniImplCopyWithImpl<
          _$ParaVersesModelofUthmaniImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParaVersesModelofUthmaniImplToJson(
      this,
    );
  }
}

abstract class _ParaVersesModelofUthmani implements ParaVersesModelofUthmani {
  const factory _ParaVersesModelofUthmani(
      {required final List<Verses> verses}) = _$ParaVersesModelofUthmaniImpl;

  factory _ParaVersesModelofUthmani.fromJson(Map<String, dynamic> json) =
      _$ParaVersesModelofUthmaniImpl.fromJson;

  @override
  List<Verses> get verses;
  @override
  @JsonKey(ignore: true)
  _$$ParaVersesModelofUthmaniImplCopyWith<_$ParaVersesModelofUthmaniImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Verses _$VersesFromJson(Map<String, dynamic> json) {
  return _Verses.fromJson(json);
}

/// @nodoc
mixin _$Verses {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "verse_key")
  String? get verseKey => throw _privateConstructorUsedError;
  @JsonKey(name: "text_uthmani")
  String? get textIndopak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesCopyWith<Verses> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesCopyWith<$Res> {
  factory $VersesCopyWith(Verses value, $Res Function(Verses) then) =
      _$VersesCopyWithImpl<$Res, Verses>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "verse_key") String? verseKey,
      @JsonKey(name: "text_uthmani") String? textIndopak});
}

/// @nodoc
class _$VersesCopyWithImpl<$Res, $Val extends Verses>
    implements $VersesCopyWith<$Res> {
  _$VersesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verseKey = freezed,
    Object? textIndopak = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verseKey: freezed == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String?,
      textIndopak: freezed == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersesImplCopyWith<$Res> implements $VersesCopyWith<$Res> {
  factory _$$VersesImplCopyWith(
          _$VersesImpl value, $Res Function(_$VersesImpl) then) =
      __$$VersesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "verse_key") String? verseKey,
      @JsonKey(name: "text_uthmani") String? textIndopak});
}

/// @nodoc
class __$$VersesImplCopyWithImpl<$Res>
    extends _$VersesCopyWithImpl<$Res, _$VersesImpl>
    implements _$$VersesImplCopyWith<$Res> {
  __$$VersesImplCopyWithImpl(
      _$VersesImpl _value, $Res Function(_$VersesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verseKey = freezed,
    Object? textIndopak = freezed,
  }) {
    return _then(_$VersesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verseKey: freezed == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String?,
      textIndopak: freezed == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersesImpl implements _Verses {
  const _$VersesImpl(
      {this.id,
      @JsonKey(name: "verse_key") this.verseKey,
      @JsonKey(name: "text_uthmani") this.textIndopak});

  factory _$VersesImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersesImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "verse_key")
  final String? verseKey;
  @override
  @JsonKey(name: "text_uthmani")
  final String? textIndopak;

  @override
  String toString() {
    return 'Verses(id: $id, verseKey: $verseKey, textIndopak: $textIndopak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.textIndopak, textIndopak) ||
                other.textIndopak == textIndopak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, verseKey, textIndopak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersesImplCopyWith<_$VersesImpl> get copyWith =>
      __$$VersesImplCopyWithImpl<_$VersesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersesImplToJson(
      this,
    );
  }
}

abstract class _Verses implements Verses {
  const factory _Verses(
      {final int? id,
      @JsonKey(name: "verse_key") final String? verseKey,
      @JsonKey(name: "text_uthmani") final String? textIndopak}) = _$VersesImpl;

  factory _Verses.fromJson(Map<String, dynamic> json) = _$VersesImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "verse_key")
  String? get verseKey;
  @override
  @JsonKey(name: "text_uthmani")
  String? get textIndopak;
  @override
  @JsonKey(ignore: true)
  _$$VersesImplCopyWith<_$VersesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
