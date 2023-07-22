// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verses_by_key_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersesByKeyModel _$VersesByKeyModelFromJson(Map<String, dynamic> json) {
  return _VersesByKeyModel.fromJson(json);
}

/// @nodoc
mixin _$VersesByKeyModel {
  List<Verses> get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesByKeyModelCopyWith<VersesByKeyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesByKeyModelCopyWith<$Res> {
  factory $VersesByKeyModelCopyWith(
          VersesByKeyModel value, $Res Function(VersesByKeyModel) then) =
      _$VersesByKeyModelCopyWithImpl<$Res, VersesByKeyModel>;
  @useResult
  $Res call({List<Verses> verses});
}

/// @nodoc
class _$VersesByKeyModelCopyWithImpl<$Res, $Val extends VersesByKeyModel>
    implements $VersesByKeyModelCopyWith<$Res> {
  _$VersesByKeyModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_VersesByKeyModelCopyWith<$Res>
    implements $VersesByKeyModelCopyWith<$Res> {
  factory _$$_VersesByKeyModelCopyWith(
          _$_VersesByKeyModel value, $Res Function(_$_VersesByKeyModel) then) =
      __$$_VersesByKeyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Verses> verses});
}

/// @nodoc
class __$$_VersesByKeyModelCopyWithImpl<$Res>
    extends _$VersesByKeyModelCopyWithImpl<$Res, _$_VersesByKeyModel>
    implements _$$_VersesByKeyModelCopyWith<$Res> {
  __$$_VersesByKeyModelCopyWithImpl(
      _$_VersesByKeyModel _value, $Res Function(_$_VersesByKeyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verses = null,
  }) {
    return _then(_$_VersesByKeyModel(
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verses>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersesByKeyModel implements _VersesByKeyModel {
  const _$_VersesByKeyModel({required final List<Verses> verses})
      : _verses = verses;

  factory _$_VersesByKeyModel.fromJson(Map<String, dynamic> json) =>
      _$$_VersesByKeyModelFromJson(json);

  final List<Verses> _verses;
  @override
  List<Verses> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  @override
  String toString() {
    return 'VersesByKeyModel(verses: $verses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersesByKeyModel &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersesByKeyModelCopyWith<_$_VersesByKeyModel> get copyWith =>
      __$$_VersesByKeyModelCopyWithImpl<_$_VersesByKeyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersesByKeyModelToJson(
      this,
    );
  }
}

abstract class _VersesByKeyModel implements VersesByKeyModel {
  const factory _VersesByKeyModel({required final List<Verses> verses}) =
      _$_VersesByKeyModel;

  factory _VersesByKeyModel.fromJson(Map<String, dynamic> json) =
      _$_VersesByKeyModel.fromJson;

  @override
  List<Verses> get verses;
  @override
  @JsonKey(ignore: true)
  _$$_VersesByKeyModelCopyWith<_$_VersesByKeyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Verses _$VersesFromJson(Map<String, dynamic> json) {
  return _Verses.fromJson(json);
}

/// @nodoc
mixin _$Verses {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "verse_key")
  String get verseKey => throw _privateConstructorUsedError;
  @JsonKey(name: "text_indopak")
  String get textIndopak => throw _privateConstructorUsedError;

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
      {int id,
      @JsonKey(name: "verse_key") String verseKey,
      @JsonKey(name: "text_indopak") String textIndopak});
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
    Object? id = null,
    Object? verseKey = null,
    Object? textIndopak = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      textIndopak: null == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersesCopyWith<$Res> implements $VersesCopyWith<$Res> {
  factory _$$_VersesCopyWith(_$_Verses value, $Res Function(_$_Verses) then) =
      __$$_VersesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "verse_key") String verseKey,
      @JsonKey(name: "text_indopak") String textIndopak});
}

/// @nodoc
class __$$_VersesCopyWithImpl<$Res>
    extends _$VersesCopyWithImpl<$Res, _$_Verses>
    implements _$$_VersesCopyWith<$Res> {
  __$$_VersesCopyWithImpl(_$_Verses _value, $Res Function(_$_Verses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verseKey = null,
    Object? textIndopak = null,
  }) {
    return _then(_$_Verses(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      textIndopak: null == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Verses implements _Verses {
  const _$_Verses(
      {required this.id,
      @JsonKey(name: "verse_key") required this.verseKey,
      @JsonKey(name: "text_indopak") required this.textIndopak});

  factory _$_Verses.fromJson(Map<String, dynamic> json) =>
      _$$_VersesFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "verse_key")
  final String verseKey;
  @override
  @JsonKey(name: "text_indopak")
  final String textIndopak;

  @override
  String toString() {
    return 'Verses(id: $id, verseKey: $verseKey, textIndopak: $textIndopak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verses &&
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
  _$$_VersesCopyWith<_$_Verses> get copyWith =>
      __$$_VersesCopyWithImpl<_$_Verses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersesToJson(
      this,
    );
  }
}

abstract class _Verses implements Verses {
  const factory _Verses(
          {required final int id,
          @JsonKey(name: "verse_key") required final String verseKey,
          @JsonKey(name: "text_indopak") required final String textIndopak}) =
      _$_Verses;

  factory _Verses.fromJson(Map<String, dynamic> json) = _$_Verses.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "verse_key")
  String get verseKey;
  @override
  @JsonKey(name: "text_indopak")
  String get textIndopak;
  @override
  @JsonKey(ignore: true)
  _$$_VersesCopyWith<_$_Verses> get copyWith =>
      throw _privateConstructorUsedError;
}
