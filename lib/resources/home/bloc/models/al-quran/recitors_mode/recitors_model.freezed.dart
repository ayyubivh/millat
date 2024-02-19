// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recitors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecitationsModel _$RecitationsModelFromJson(Map<String, dynamic> json) {
  return _RecitationsModel.fromJson(json);
}

/// @nodoc
mixin _$RecitationsModel {
  List<Recitations> get recitations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecitationsModelCopyWith<RecitationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecitationsModelCopyWith<$Res> {
  factory $RecitationsModelCopyWith(
          RecitationsModel value, $Res Function(RecitationsModel) then) =
      _$RecitationsModelCopyWithImpl<$Res, RecitationsModel>;
  @useResult
  $Res call({List<Recitations> recitations});
}

/// @nodoc
class _$RecitationsModelCopyWithImpl<$Res, $Val extends RecitationsModel>
    implements $RecitationsModelCopyWith<$Res> {
  _$RecitationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recitations = null,
  }) {
    return _then(_value.copyWith(
      recitations: null == recitations
          ? _value.recitations
          : recitations // ignore: cast_nullable_to_non_nullable
              as List<Recitations>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecitationsModelImplCopyWith<$Res>
    implements $RecitationsModelCopyWith<$Res> {
  factory _$$RecitationsModelImplCopyWith(_$RecitationsModelImpl value,
          $Res Function(_$RecitationsModelImpl) then) =
      __$$RecitationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Recitations> recitations});
}

/// @nodoc
class __$$RecitationsModelImplCopyWithImpl<$Res>
    extends _$RecitationsModelCopyWithImpl<$Res, _$RecitationsModelImpl>
    implements _$$RecitationsModelImplCopyWith<$Res> {
  __$$RecitationsModelImplCopyWithImpl(_$RecitationsModelImpl _value,
      $Res Function(_$RecitationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recitations = null,
  }) {
    return _then(_$RecitationsModelImpl(
      recitations: null == recitations
          ? _value._recitations
          : recitations // ignore: cast_nullable_to_non_nullable
              as List<Recitations>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecitationsModelImpl implements _RecitationsModel {
  const _$RecitationsModelImpl({required final List<Recitations> recitations})
      : _recitations = recitations;

  factory _$RecitationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecitationsModelImplFromJson(json);

  final List<Recitations> _recitations;
  @override
  List<Recitations> get recitations {
    if (_recitations is EqualUnmodifiableListView) return _recitations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recitations);
  }

  @override
  String toString() {
    return 'RecitationsModel(recitations: $recitations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecitationsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._recitations, _recitations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recitations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecitationsModelImplCopyWith<_$RecitationsModelImpl> get copyWith =>
      __$$RecitationsModelImplCopyWithImpl<_$RecitationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecitationsModelImplToJson(
      this,
    );
  }
}

abstract class _RecitationsModel implements RecitationsModel {
  const factory _RecitationsModel(
      {required final List<Recitations> recitations}) = _$RecitationsModelImpl;

  factory _RecitationsModel.fromJson(Map<String, dynamic> json) =
      _$RecitationsModelImpl.fromJson;

  @override
  List<Recitations> get recitations;
  @override
  @JsonKey(ignore: true)
  _$$RecitationsModelImplCopyWith<_$RecitationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recitations _$RecitationsFromJson(Map<String, dynamic> json) {
  return _Recitations.fromJson(json);
}

/// @nodoc
mixin _$Recitations {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "reciter_name")
  String get recitorName => throw _privateConstructorUsedError;
  @JsonKey(name: "translated_name")
  TranslatedName get translatedName => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecitationsCopyWith<Recitations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecitationsCopyWith<$Res> {
  factory $RecitationsCopyWith(
          Recitations value, $Res Function(Recitations) then) =
      _$RecitationsCopyWithImpl<$Res, Recitations>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "reciter_name") String recitorName,
      @JsonKey(name: "translated_name") TranslatedName translatedName,
      String? style});

  $TranslatedNameCopyWith<$Res> get translatedName;
}

/// @nodoc
class _$RecitationsCopyWithImpl<$Res, $Val extends Recitations>
    implements $RecitationsCopyWith<$Res> {
  _$RecitationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recitorName = null,
    Object? translatedName = null,
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recitorName: null == recitorName
          ? _value.recitorName
          : recitorName // ignore: cast_nullable_to_non_nullable
              as String,
      translatedName: null == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<$Res> get translatedName {
    return $TranslatedNameCopyWith<$Res>(_value.translatedName, (value) {
      return _then(_value.copyWith(translatedName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecitationsImplCopyWith<$Res>
    implements $RecitationsCopyWith<$Res> {
  factory _$$RecitationsImplCopyWith(
          _$RecitationsImpl value, $Res Function(_$RecitationsImpl) then) =
      __$$RecitationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "reciter_name") String recitorName,
      @JsonKey(name: "translated_name") TranslatedName translatedName,
      String? style});

  @override
  $TranslatedNameCopyWith<$Res> get translatedName;
}

/// @nodoc
class __$$RecitationsImplCopyWithImpl<$Res>
    extends _$RecitationsCopyWithImpl<$Res, _$RecitationsImpl>
    implements _$$RecitationsImplCopyWith<$Res> {
  __$$RecitationsImplCopyWithImpl(
      _$RecitationsImpl _value, $Res Function(_$RecitationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recitorName = null,
    Object? translatedName = null,
    Object? style = freezed,
  }) {
    return _then(_$RecitationsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recitorName: null == recitorName
          ? _value.recitorName
          : recitorName // ignore: cast_nullable_to_non_nullable
              as String,
      translatedName: null == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecitationsImpl implements _Recitations {
  const _$RecitationsImpl(
      {required this.id,
      @JsonKey(name: "reciter_name") required this.recitorName,
      @JsonKey(name: "translated_name") required this.translatedName,
      this.style});

  factory _$RecitationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecitationsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "reciter_name")
  final String recitorName;
  @override
  @JsonKey(name: "translated_name")
  final TranslatedName translatedName;
  @override
  final String? style;

  @override
  String toString() {
    return 'Recitations(id: $id, recitorName: $recitorName, translatedName: $translatedName, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecitationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recitorName, recitorName) ||
                other.recitorName == recitorName) &&
            (identical(other.translatedName, translatedName) ||
                other.translatedName == translatedName) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, recitorName, translatedName, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecitationsImplCopyWith<_$RecitationsImpl> get copyWith =>
      __$$RecitationsImplCopyWithImpl<_$RecitationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecitationsImplToJson(
      this,
    );
  }
}

abstract class _Recitations implements Recitations {
  const factory _Recitations(
      {required final int id,
      @JsonKey(name: "reciter_name") required final String recitorName,
      @JsonKey(name: "translated_name")
      required final TranslatedName translatedName,
      final String? style}) = _$RecitationsImpl;

  factory _Recitations.fromJson(Map<String, dynamic> json) =
      _$RecitationsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "reciter_name")
  String get recitorName;
  @override
  @JsonKey(name: "translated_name")
  TranslatedName get translatedName;
  @override
  String? get style;
  @override
  @JsonKey(ignore: true)
  _$$RecitationsImplCopyWith<_$RecitationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslatedName _$TranslatedNameFromJson(Map<String, dynamic> json) {
  return _TranslatedName.fromJson(json);
}

/// @nodoc
mixin _$TranslatedName {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "language_name")
  String get languageName => throw _privateConstructorUsedError;

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
  $Res call({String name, @JsonKey(name: "language_name") String languageName});
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
    Object? name = null,
    Object? languageName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
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
  $Res call({String name, @JsonKey(name: "language_name") String languageName});
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
    Object? name = null,
    Object? languageName = null,
  }) {
    return _then(_$TranslatedNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
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
  final String name;
  @override
  @JsonKey(name: "language_name")
  final String languageName;

  @override
  String toString() {
    return 'TranslatedName(name: $name, languageName: $languageName)';
  }

  @override
  bool operator ==(Object other) {
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
          {required final String name,
          @JsonKey(name: "language_name") required final String languageName}) =
      _$TranslatedNameImpl;

  factory _TranslatedName.fromJson(Map<String, dynamic> json) =
      _$TranslatedNameImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "language_name")
  String get languageName;
  @override
  @JsonKey(ignore: true)
  _$$TranslatedNameImplCopyWith<_$TranslatedNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
