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
abstract class _$$VersesTranslationModelImplCopyWith<$Res>
    implements $VersesTranslationModelCopyWith<$Res> {
  factory _$$VersesTranslationModelImplCopyWith(
          _$VersesTranslationModelImpl value,
          $Res Function(_$VersesTranslationModelImpl) then) =
      __$$VersesTranslationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Translations> translations});
}

/// @nodoc
class __$$VersesTranslationModelImplCopyWithImpl<$Res>
    extends _$VersesTranslationModelCopyWithImpl<$Res,
        _$VersesTranslationModelImpl>
    implements _$$VersesTranslationModelImplCopyWith<$Res> {
  __$$VersesTranslationModelImplCopyWithImpl(
      _$VersesTranslationModelImpl _value,
      $Res Function(_$VersesTranslationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_$VersesTranslationModelImpl(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translations>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersesTranslationModelImpl implements _VersesTranslationModel {
  const _$VersesTranslationModelImpl(
      {required final List<Translations> translations})
      : _translations = translations;

  factory _$VersesTranslationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersesTranslationModelImplFromJson(json);

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
            other is _$VersesTranslationModelImpl &&
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
  _$$VersesTranslationModelImplCopyWith<_$VersesTranslationModelImpl>
      get copyWith => __$$VersesTranslationModelImplCopyWithImpl<
          _$VersesTranslationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersesTranslationModelImplToJson(
      this,
    );
  }
}

abstract class _VersesTranslationModel implements VersesTranslationModel {
  const factory _VersesTranslationModel(
          {required final List<Translations> translations}) =
      _$VersesTranslationModelImpl;

  factory _VersesTranslationModel.fromJson(Map<String, dynamic> json) =
      _$VersesTranslationModelImpl.fromJson;

  @override
  List<Translations> get translations;
  @override
  @JsonKey(ignore: true)
  _$$VersesTranslationModelImplCopyWith<_$VersesTranslationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$TranslationsImplCopyWith<$Res>
    implements $TranslationsCopyWith<$Res> {
  factory _$$TranslationsImplCopyWith(
          _$TranslationsImpl value, $Res Function(_$TranslationsImpl) then) =
      __$$TranslationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "resource_id") int id, String text});
}

/// @nodoc
class __$$TranslationsImplCopyWithImpl<$Res>
    extends _$TranslationsCopyWithImpl<$Res, _$TranslationsImpl>
    implements _$$TranslationsImplCopyWith<$Res> {
  __$$TranslationsImplCopyWithImpl(
      _$TranslationsImpl _value, $Res Function(_$TranslationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$TranslationsImpl(
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
class _$TranslationsImpl implements _Translations {
  const _$TranslationsImpl(
      {@JsonKey(name: "resource_id") required this.id, required this.text});

  factory _$TranslationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationsImplFromJson(json);

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
            other is _$TranslationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationsImplCopyWith<_$TranslationsImpl> get copyWith =>
      __$$TranslationsImplCopyWithImpl<_$TranslationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationsImplToJson(
      this,
    );
  }
}

abstract class _Translations implements Translations {
  const factory _Translations(
      {@JsonKey(name: "resource_id") required final int id,
      required final String text}) = _$TranslationsImpl;

  factory _Translations.fromJson(Map<String, dynamic> json) =
      _$TranslationsImpl.fromJson;

  @override
  @JsonKey(name: "resource_id")
  int get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TranslationsImplCopyWith<_$TranslationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
