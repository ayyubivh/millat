// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_all_translations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TranslationsModel _$TranslationsModelFromJson(Map<String, dynamic> json) {
  return _TranslationsModel.fromJson(json);
}

/// @nodoc
mixin _$TranslationsModel {
  List<Translations?> get translations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationsModelCopyWith<TranslationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationsModelCopyWith<$Res> {
  factory $TranslationsModelCopyWith(
          TranslationsModel value, $Res Function(TranslationsModel) then) =
      _$TranslationsModelCopyWithImpl<$Res, TranslationsModel>;
  @useResult
  $Res call({List<Translations?> translations});
}

/// @nodoc
class _$TranslationsModelCopyWithImpl<$Res, $Val extends TranslationsModel>
    implements $TranslationsModelCopyWith<$Res> {
  _$TranslationsModelCopyWithImpl(this._value, this._then);

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
              as List<Translations?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationsModelImplCopyWith<$Res>
    implements $TranslationsModelCopyWith<$Res> {
  factory _$$TranslationsModelImplCopyWith(_$TranslationsModelImpl value,
          $Res Function(_$TranslationsModelImpl) then) =
      __$$TranslationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Translations?> translations});
}

/// @nodoc
class __$$TranslationsModelImplCopyWithImpl<$Res>
    extends _$TranslationsModelCopyWithImpl<$Res, _$TranslationsModelImpl>
    implements _$$TranslationsModelImplCopyWith<$Res> {
  __$$TranslationsModelImplCopyWithImpl(_$TranslationsModelImpl _value,
      $Res Function(_$TranslationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_$TranslationsModelImpl(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translations?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationsModelImpl implements _TranslationsModel {
  const _$TranslationsModelImpl(
      {required final List<Translations?> translations})
      : _translations = translations;

  factory _$TranslationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationsModelImplFromJson(json);

  final List<Translations?> _translations;
  @override
  List<Translations?> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  String toString() {
    return 'TranslationsModel(translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationsModelImpl &&
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
  _$$TranslationsModelImplCopyWith<_$TranslationsModelImpl> get copyWith =>
      __$$TranslationsModelImplCopyWithImpl<_$TranslationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationsModelImplToJson(
      this,
    );
  }
}

abstract class _TranslationsModel implements TranslationsModel {
  const factory _TranslationsModel(
          {required final List<Translations?> translations}) =
      _$TranslationsModelImpl;

  factory _TranslationsModel.fromJson(Map<String, dynamic> json) =
      _$TranslationsModelImpl.fromJson;

  @override
  List<Translations?> get translations;
  @override
  @JsonKey(ignore: true)
  _$$TranslationsModelImplCopyWith<_$TranslationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translations _$TranslationsFromJson(Map<String, dynamic> json) {
  return _Translations.fromJson(json);
}

/// @nodoc
mixin _$Translations {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "author_name")
  String? get authorName => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "language_name")
  String? get languageName => throw _privateConstructorUsedError;
  @JsonKey(name: "translated_name")
  TranslatedName? get translatedName => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "author_name") String? authorName,
      String? slug,
      @JsonKey(name: "language_name") String? languageName,
      @JsonKey(name: "translated_name") TranslatedName? translatedName});

  $TranslatedNameCopyWith<$Res>? get translatedName;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? authorName = freezed,
    Object? slug = freezed,
    Object? languageName = freezed,
    Object? translatedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: freezed == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      languageName: freezed == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TranslationsImplCopyWith<$Res>
    implements $TranslationsCopyWith<$Res> {
  factory _$$TranslationsImplCopyWith(
          _$TranslationsImpl value, $Res Function(_$TranslationsImpl) then) =
      __$$TranslationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "author_name") String? authorName,
      String? slug,
      @JsonKey(name: "language_name") String? languageName,
      @JsonKey(name: "translated_name") TranslatedName? translatedName});

  @override
  $TranslatedNameCopyWith<$Res>? get translatedName;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? authorName = freezed,
    Object? slug = freezed,
    Object? languageName = freezed,
    Object? translatedName = freezed,
  }) {
    return _then(_$TranslationsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: freezed == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      languageName: freezed == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
      translatedName: freezed == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationsImpl implements _Translations {
  const _$TranslationsImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "author_name") required this.authorName,
      required this.slug,
      @JsonKey(name: "language_name") required this.languageName,
      @JsonKey(name: "translated_name") required this.translatedName});

  factory _$TranslationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: "author_name")
  final String? authorName;
  @override
  final String? slug;
  @override
  @JsonKey(name: "language_name")
  final String? languageName;
  @override
  @JsonKey(name: "translated_name")
  final TranslatedName? translatedName;

  @override
  String toString() {
    return 'Translations(id: $id, name: $name, authorName: $authorName, slug: $slug, languageName: $languageName, translatedName: $translatedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName) &&
            (identical(other.translatedName, translatedName) ||
                other.translatedName == translatedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, authorName, slug, languageName, translatedName);

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
      {required final int? id,
      required final String? name,
      @JsonKey(name: "author_name") required final String? authorName,
      required final String? slug,
      @JsonKey(name: "language_name") required final String? languageName,
      @JsonKey(name: "translated_name")
      required final TranslatedName? translatedName}) = _$TranslationsImpl;

  factory _Translations.fromJson(Map<String, dynamic> json) =
      _$TranslationsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: "author_name")
  String? get authorName;
  @override
  String? get slug;
  @override
  @JsonKey(name: "language_name")
  String? get languageName;
  @override
  @JsonKey(name: "translated_name")
  TranslatedName? get translatedName;
  @override
  @JsonKey(ignore: true)
  _$$TranslationsImplCopyWith<_$TranslationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslatedName _$TranslatedNameFromJson(Map<String, dynamic> json) {
  return _TranslatedName.fromJson(json);
}

/// @nodoc
mixin _$TranslatedName {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "language_name")
  String? get languageName => throw _privateConstructorUsedError;

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
  $Res call(
      {String? name, @JsonKey(name: "language_name") String? languageName});
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
    Object? name = freezed,
    Object? languageName = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      languageName: freezed == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {String? name, @JsonKey(name: "language_name") String? languageName});
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
    Object? name = freezed,
    Object? languageName = freezed,
  }) {
    return _then(_$TranslatedNameImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      languageName: freezed == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslatedNameImpl implements _TranslatedName {
  const _$TranslatedNameImpl(
      {required this.name,
      @JsonKey(name: "language_name") required this.languageName});

  factory _$TranslatedNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslatedNameImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "language_name")
  final String? languageName;

  @override
  String toString() {
    return 'TranslatedName(name: $name, languageName: $languageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatedNameImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, languageName);

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
      {required final String? name,
      @JsonKey(name: "language_name")
      required final String? languageName}) = _$TranslatedNameImpl;

  factory _TranslatedName.fromJson(Map<String, dynamic> json) =
      _$TranslatedNameImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: "language_name")
  String? get languageName;
  @override
  @JsonKey(ignore: true)
  _$$TranslatedNameImplCopyWith<_$TranslatedNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
