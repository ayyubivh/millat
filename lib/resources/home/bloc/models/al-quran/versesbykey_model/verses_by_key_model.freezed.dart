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
abstract class _$$VersesByKeyModelImplCopyWith<$Res>
    implements $VersesByKeyModelCopyWith<$Res> {
  factory _$$VersesByKeyModelImplCopyWith(_$VersesByKeyModelImpl value,
          $Res Function(_$VersesByKeyModelImpl) then) =
      __$$VersesByKeyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Verses> verses});
}

/// @nodoc
class __$$VersesByKeyModelImplCopyWithImpl<$Res>
    extends _$VersesByKeyModelCopyWithImpl<$Res, _$VersesByKeyModelImpl>
    implements _$$VersesByKeyModelImplCopyWith<$Res> {
  __$$VersesByKeyModelImplCopyWithImpl(_$VersesByKeyModelImpl _value,
      $Res Function(_$VersesByKeyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verses = null,
  }) {
    return _then(_$VersesByKeyModelImpl(
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verses>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersesByKeyModelImpl implements _VersesByKeyModel {
  const _$VersesByKeyModelImpl({required final List<Verses> verses})
      : _verses = verses;

  factory _$VersesByKeyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersesByKeyModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersesByKeyModelImpl &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersesByKeyModelImplCopyWith<_$VersesByKeyModelImpl> get copyWith =>
      __$$VersesByKeyModelImplCopyWithImpl<_$VersesByKeyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersesByKeyModelImplToJson(
      this,
    );
  }
}

abstract class _VersesByKeyModel implements VersesByKeyModel {
  const factory _VersesByKeyModel({required final List<Verses> verses}) =
      _$VersesByKeyModelImpl;

  factory _VersesByKeyModel.fromJson(Map<String, dynamic> json) =
      _$VersesByKeyModelImpl.fromJson;

  @override
  List<Verses> get verses;
  @override
  @JsonKey(ignore: true)
  _$$VersesByKeyModelImplCopyWith<_$VersesByKeyModelImpl> get copyWith =>
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
abstract class _$$VersesImplCopyWith<$Res> implements $VersesCopyWith<$Res> {
  factory _$$VersesImplCopyWith(
          _$VersesImpl value, $Res Function(_$VersesImpl) then) =
      __$$VersesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "verse_key") String verseKey,
      @JsonKey(name: "text_indopak") String textIndopak});
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
    Object? id = null,
    Object? verseKey = null,
    Object? textIndopak = null,
  }) {
    return _then(_$VersesImpl(
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
class _$VersesImpl implements _Verses {
  const _$VersesImpl(
      {required this.id,
      @JsonKey(name: "verse_key") required this.verseKey,
      @JsonKey(name: "text_indopak") required this.textIndopak});

  factory _$VersesImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersesImplFromJson(json);

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
  bool operator ==(Object other) {
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
          {required final int id,
          @JsonKey(name: "verse_key") required final String verseKey,
          @JsonKey(name: "text_indopak") required final String textIndopak}) =
      _$VersesImpl;

  factory _Verses.fromJson(Map<String, dynamic> json) = _$VersesImpl.fromJson;

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
  _$$VersesImplCopyWith<_$VersesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
