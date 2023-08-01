// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verses_translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersesTranslationModel _$VersesTranslationModelFromJson(
    Map<String, dynamic> json) {
  return _VersesTranslationModel.fromJson(json);
}

/// @nodoc
mixin _$VersesTranslationModel {
  List<Translations> get translations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesTranslationModelCopyWith<VersesTranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesTranslationModelCopyWith<$Res> {
  factory $VersesTranslationModelCopyWith(VersesTranslationModel value,
          $Res Function(VersesTranslationModel) then) =
      _$VersesTranslationModelCopyWithImpl<$Res, VersesTranslationModel>;
  @useResult
  $Res call({List<Translations> translations});
}

/// @nodoc
class _$VersesTranslationModelCopyWithImpl<$Res,
        $Val extends VersesTranslationModel>
    implements $VersesTranslationModelCopyWith<$Res> {
  _$VersesTranslationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_value.copyWith(
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translations>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersesTranslationModelCopyWith<$Res>
    implements $VersesTranslationModelCopyWith<$Res> {
  factory _$$_VersesTranslationModelCopyWith(_$_VersesTranslationModel value,
          $Res Function(_$_VersesTranslationModel) then) =
      __$$_VersesTranslationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Translations> translations});
}

/// @nodoc
class __$$_VersesTranslationModelCopyWithImpl<$Res>
    extends _$VersesTranslationModelCopyWithImpl<$Res,
        _$_VersesTranslationModel>
    implements _$$_VersesTranslationModelCopyWith<$Res> {
  __$$_VersesTranslationModelCopyWithImpl(_$_VersesTranslationModel _value,
      $Res Function(_$_VersesTranslationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_$_VersesTranslationModel(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translations>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersesTranslationModel implements _VersesTranslationModel {
  const _$_VersesTranslationModel(
      {required final List<Translations> translations})
      : _translations = translations;

  factory _$_VersesTranslationModel.fromJson(Map<String, dynamic> json) =>
      _$$_VersesTranslationModelFromJson(json);

  final List<Translations> _translations;
  @override
  List<Translations> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  String toString() {
    return 'VersesTranslationModel(translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersesTranslationModel &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersesTranslationModelCopyWith<_$_VersesTranslationModel> get copyWith =>
      __$$_VersesTranslationModelCopyWithImpl<_$_VersesTranslationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersesTranslationModelToJson(
      this,
    );
  }
}

abstract class _VersesTranslationModel implements VersesTranslationModel {
  const factory _VersesTranslationModel(
          {required final List<Translations> translations}) =
      _$_VersesTranslationModel;

  factory _VersesTranslationModel.fromJson(Map<String, dynamic> json) =
      _$_VersesTranslationModel.fromJson;

  @override
  List<Translations> get translations;
  @override
  @JsonKey(ignore: true)
  _$$_VersesTranslationModelCopyWith<_$_VersesTranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Translations _$TranslationsFromJson(Map<String, dynamic> json) {
  return _Translations.fromJson(json);
}

/// @nodoc
mixin _$Translations {
  @JsonKey(name: "resource_id")
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationsCopyWith<Translations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationsCopyWith<$Res> {
  factory $TranslationsCopyWith(
          Translations value, $Res Function(Translations) then) =
      _$TranslationsCopyWithImpl<$Res, Translations>;
  @useResult
  $Res call({@JsonKey(name: "resource_id") int id, String text});
}

/// @nodoc
class _$TranslationsCopyWithImpl<$Res, $Val extends Translations>
    implements $TranslationsCopyWith<$Res> {
  _$TranslationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslationsCopyWith<$Res>
    implements $TranslationsCopyWith<$Res> {
  factory _$$_TranslationsCopyWith(
          _$_Translations value, $Res Function(_$_Translations) then) =
      __$$_TranslationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "resource_id") int id, String text});
}

/// @nodoc
class __$$_TranslationsCopyWithImpl<$Res>
    extends _$TranslationsCopyWithImpl<$Res, _$_Translations>
    implements _$$_TranslationsCopyWith<$Res> {
  __$$_TranslationsCopyWithImpl(
      _$_Translations _value, $Res Function(_$_Translations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$_Translations(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Translations implements _Translations {
  const _$_Translations(
      {@JsonKey(name: "resource_id") required this.id, required this.text});

  factory _$_Translations.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationsFromJson(json);

  @override
  @JsonKey(name: "resource_id")
  final int id;
  @override
  final String text;

  @override
  String toString() {
    return 'Translations(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Translations &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslationsCopyWith<_$_Translations> get copyWith =>
      __$$_TranslationsCopyWithImpl<_$_Translations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslationsToJson(
      this,
    );
  }
}

abstract class _Translations implements Translations {
  const factory _Translations(
      {@JsonKey(name: "resource_id") required final int id,
      required final String text}) = _$_Translations;

  factory _Translations.fromJson(Map<String, dynamic> json) =
      _$_Translations.fromJson;

  @override
  @JsonKey(name: "resource_id")
  int get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationsCopyWith<_$_Translations> get copyWith =>
      throw _privateConstructorUsedError;
}
