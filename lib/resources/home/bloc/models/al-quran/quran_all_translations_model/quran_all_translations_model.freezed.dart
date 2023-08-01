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
abstract class _$$_TranslationsModelCopyWith<$Res>
    implements $TranslationsModelCopyWith<$Res> {
  factory _$$_TranslationsModelCopyWith(_$_TranslationsModel value,
          $Res Function(_$_TranslationsModel) then) =
      __$$_TranslationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Translations?> translations});
}

/// @nodoc
class __$$_TranslationsModelCopyWithImpl<$Res>
    extends _$TranslationsModelCopyWithImpl<$Res, _$_TranslationsModel>
    implements _$$_TranslationsModelCopyWith<$Res> {
  __$$_TranslationsModelCopyWithImpl(
      _$_TranslationsModel _value, $Res Function(_$_TranslationsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
  }) {
    return _then(_$_TranslationsModel(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translations?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TranslationsModel implements _TranslationsModel {
  const _$_TranslationsModel({required final List<Translations?> translations})
      : _translations = translations;

  factory _$_TranslationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationsModelFromJson(json);

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
            other is _$_TranslationsModel &&
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
  _$$_TranslationsModelCopyWith<_$_TranslationsModel> get copyWith =>
      __$$_TranslationsModelCopyWithImpl<_$_TranslationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslationsModelToJson(
      this,
    );
  }
}

abstract class _TranslationsModel implements TranslationsModel {
  const factory _TranslationsModel(
      {required final List<Translations?> translations}) = _$_TranslationsModel;

  factory _TranslationsModel.fromJson(Map<String, dynamic> json) =
      _$_TranslationsModel.fromJson;

  @override
  List<Translations?> get translations;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationsModelCopyWith<_$_TranslationsModel> get copyWith =>
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
abstract class _$$_TranslationsCopyWith<$Res>
    implements $TranslationsCopyWith<$Res> {
  factory _$$_TranslationsCopyWith(
          _$_Translations value, $Res Function(_$_Translations) then) =
      __$$_TranslationsCopyWithImpl<$Res>;
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
class __$$_TranslationsCopyWithImpl<$Res>
    extends _$TranslationsCopyWithImpl<$Res, _$_Translations>
    implements _$$_TranslationsCopyWith<$Res> {
  __$$_TranslationsCopyWithImpl(
      _$_Translations _value, $Res Function(_$_Translations) _then)
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
    return _then(_$_Translations(
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
class _$_Translations implements _Translations {
  const _$_Translations(
      {required this.id,
      required this.name,
      @JsonKey(name: "author_name") required this.authorName,
      required this.slug,
      @JsonKey(name: "language_name") required this.languageName,
      @JsonKey(name: "translated_name") required this.translatedName});

  factory _$_Translations.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationsFromJson(json);

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
            other is _$_Translations &&
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
      {required final int? id,
      required final String? name,
      @JsonKey(name: "author_name")
          required final String? authorName,
      required final String? slug,
      @JsonKey(name: "language_name")
          required final String? languageName,
      @JsonKey(name: "translated_name")
          required final TranslatedName? translatedName}) = _$_Translations;

  factory _Translations.fromJson(Map<String, dynamic> json) =
      _$_Translations.fromJson;

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
  _$$_TranslationsCopyWith<_$_Translations> get copyWith =>
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
abstract class _$$_TranslatedNameCopyWith<$Res>
    implements $TranslatedNameCopyWith<$Res> {
  factory _$$_TranslatedNameCopyWith(
          _$_TranslatedName value, $Res Function(_$_TranslatedName) then) =
      __$$_TranslatedNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, @JsonKey(name: "language_name") String? languageName});
}

/// @nodoc
class __$$_TranslatedNameCopyWithImpl<$Res>
    extends _$TranslatedNameCopyWithImpl<$Res, _$_TranslatedName>
    implements _$$_TranslatedNameCopyWith<$Res> {
  __$$_TranslatedNameCopyWithImpl(
      _$_TranslatedName _value, $Res Function(_$_TranslatedName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? languageName = freezed,
  }) {
    return _then(_$_TranslatedName(
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
class _$_TranslatedName implements _TranslatedName {
  const _$_TranslatedName(
      {required this.name,
      @JsonKey(name: "language_name") required this.languageName});

  factory _$_TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$$_TranslatedNameFromJson(json);

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
            other is _$_TranslatedName &&
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
  _$$_TranslatedNameCopyWith<_$_TranslatedName> get copyWith =>
      __$$_TranslatedNameCopyWithImpl<_$_TranslatedName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslatedNameToJson(
      this,
    );
  }
}

abstract class _TranslatedName implements TranslatedName {
  const factory _TranslatedName(
      {required final String? name,
      @JsonKey(name: "language_name")
          required final String? languageName}) = _$_TranslatedName;

  factory _TranslatedName.fromJson(Map<String, dynamic> json) =
      _$_TranslatedName.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: "language_name")
  String? get languageName;
  @override
  @JsonKey(ignore: true)
  _$$_TranslatedNameCopyWith<_$_TranslatedName> get copyWith =>
      throw _privateConstructorUsedError;
}
