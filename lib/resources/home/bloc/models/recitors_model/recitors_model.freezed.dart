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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecitationModel _$RecitationModelFromJson(Map<String, dynamic> json) {
  return _RecitationModel.fromJson(json);
}

/// @nodoc
mixin _$RecitationModel {
  List<Recitations> get recitations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecitationModelCopyWith<RecitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecitationModelCopyWith<$Res> {
  factory $RecitationModelCopyWith(
          RecitationModel value, $Res Function(RecitationModel) then) =
      _$RecitationModelCopyWithImpl<$Res, RecitationModel>;
  @useResult
  $Res call({List<Recitations> recitations});
}

/// @nodoc
class _$RecitationModelCopyWithImpl<$Res, $Val extends RecitationModel>
    implements $RecitationModelCopyWith<$Res> {
  _$RecitationModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_RecitationModelCopyWith<$Res>
    implements $RecitationModelCopyWith<$Res> {
  factory _$$_RecitationModelCopyWith(
          _$_RecitationModel value, $Res Function(_$_RecitationModel) then) =
      __$$_RecitationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Recitations> recitations});
}

/// @nodoc
class __$$_RecitationModelCopyWithImpl<$Res>
    extends _$RecitationModelCopyWithImpl<$Res, _$_RecitationModel>
    implements _$$_RecitationModelCopyWith<$Res> {
  __$$_RecitationModelCopyWithImpl(
      _$_RecitationModel _value, $Res Function(_$_RecitationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recitations = null,
  }) {
    return _then(_$_RecitationModel(
      recitations: null == recitations
          ? _value._recitations
          : recitations // ignore: cast_nullable_to_non_nullable
              as List<Recitations>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecitationModel implements _RecitationModel {
  const _$_RecitationModel({required final List<Recitations> recitations})
      : _recitations = recitations;

  factory _$_RecitationModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecitationModelFromJson(json);

  final List<Recitations> _recitations;
  @override
  List<Recitations> get recitations {
    if (_recitations is EqualUnmodifiableListView) return _recitations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recitations);
  }

  @override
  String toString() {
    return 'RecitationModel(recitations: $recitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecitationModel &&
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
  _$$_RecitationModelCopyWith<_$_RecitationModel> get copyWith =>
      __$$_RecitationModelCopyWithImpl<_$_RecitationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecitationModelToJson(
      this,
    );
  }
}

abstract class _RecitationModel implements RecitationModel {
  const factory _RecitationModel(
      {required final List<Recitations> recitations}) = _$_RecitationModel;

  factory _RecitationModel.fromJson(Map<String, dynamic> json) =
      _$_RecitationModel.fromJson;

  @override
  List<Recitations> get recitations;
  @override
  @JsonKey(ignore: true)
  _$$_RecitationModelCopyWith<_$_RecitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Recitations _$RecitationsFromJson(Map<String, dynamic> json) {
  return _Recitations.fromJson(json);
}

/// @nodoc
mixin _$Recitations {
  int? get id => throw _privateConstructorUsedError;
  String? get reciterName => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;
  @JsonKey(name: 'translated_name')
  TranslatedName? get translatedName => throw _privateConstructorUsedError;

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
      {int? id,
      String? reciterName,
      String? style,
      @JsonKey(name: 'translated_name') TranslatedName? translatedName});

  $TranslatedNameCopyWith<$Res>? get translatedName;
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
    Object? id = freezed,
    Object? reciterName = freezed,
    Object? style = freezed,
    Object? translatedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reciterName: freezed == reciterName
          ? _value.reciterName
          : reciterName // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RecitationsCopyWith<$Res>
    implements $RecitationsCopyWith<$Res> {
  factory _$$_RecitationsCopyWith(
          _$_Recitations value, $Res Function(_$_Recitations) then) =
      __$$_RecitationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? reciterName,
      String? style,
      @JsonKey(name: 'translated_name') TranslatedName? translatedName});

  @override
  $TranslatedNameCopyWith<$Res>? get translatedName;
}

/// @nodoc
class __$$_RecitationsCopyWithImpl<$Res>
    extends _$RecitationsCopyWithImpl<$Res, _$_Recitations>
    implements _$$_RecitationsCopyWith<$Res> {
  __$$_RecitationsCopyWithImpl(
      _$_Recitations _value, $Res Function(_$_Recitations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reciterName = freezed,
    Object? style = freezed,
    Object? translatedName = freezed,
  }) {
    return _then(_$_Recitations(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reciterName: freezed == reciterName
          ? _value.reciterName
          : reciterName // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
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
class _$_Recitations implements _Recitations {
  const _$_Recitations(
      {required this.id,
      required this.reciterName,
      required this.style,
      @JsonKey(name: 'translated_name') required this.translatedName});

  factory _$_Recitations.fromJson(Map<String, dynamic> json) =>
      _$$_RecitationsFromJson(json);

  @override
  final int? id;
  @override
  final String? reciterName;
  @override
  final String? style;
  @override
  @JsonKey(name: 'translated_name')
  final TranslatedName? translatedName;

  @override
  String toString() {
    return 'Recitations(id: $id, reciterName: $reciterName, style: $style, translatedName: $translatedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recitations &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reciterName, reciterName) ||
                other.reciterName == reciterName) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.translatedName, translatedName) ||
                other.translatedName == translatedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, reciterName, style, translatedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecitationsCopyWith<_$_Recitations> get copyWith =>
      __$$_RecitationsCopyWithImpl<_$_Recitations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecitationsToJson(
      this,
    );
  }
}

abstract class _Recitations implements Recitations {
  const factory _Recitations(
      {required final int? id,
      required final String? reciterName,
      required final String? style,
      @JsonKey(name: 'translated_name')
          required final TranslatedName? translatedName}) = _$_Recitations;

  factory _Recitations.fromJson(Map<String, dynamic> json) =
      _$_Recitations.fromJson;

  @override
  int? get id;
  @override
  String? get reciterName;
  @override
  String? get style;
  @override
  @JsonKey(name: 'translated_name')
  TranslatedName? get translatedName;
  @override
  @JsonKey(ignore: true)
  _$$_RecitationsCopyWith<_$_Recitations> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslatedName _$TranslatedNameFromJson(Map<String, dynamic> json) {
  return _TranslatedName.fromJson(json);
}

/// @nodoc
mixin _$TranslatedName {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatedNameCopyWith<$Res> {
  factory $TranslatedNameCopyWith(
          TranslatedName value, $Res Function(TranslatedName) then) =
      _$TranslatedNameCopyWithImpl<$Res, TranslatedName>;
}

/// @nodoc
class _$TranslatedNameCopyWithImpl<$Res, $Val extends TranslatedName>
    implements $TranslatedNameCopyWith<$Res> {
  _$TranslatedNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TranslatedNameCopyWith<$Res> {
  factory _$$_TranslatedNameCopyWith(
          _$_TranslatedName value, $Res Function(_$_TranslatedName) then) =
      __$$_TranslatedNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TranslatedNameCopyWithImpl<$Res>
    extends _$TranslatedNameCopyWithImpl<$Res, _$_TranslatedName>
    implements _$$_TranslatedNameCopyWith<$Res> {
  __$$_TranslatedNameCopyWithImpl(
      _$_TranslatedName _value, $Res Function(_$_TranslatedName) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_TranslatedName implements _TranslatedName {
  const _$_TranslatedName();

  factory _$_TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$$_TranslatedNameFromJson(json);

  @override
  String toString() {
    return 'TranslatedName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TranslatedName);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslatedNameToJson(
      this,
    );
  }
}

abstract class _TranslatedName implements TranslatedName {
  const factory _TranslatedName() = _$_TranslatedName;

  factory _TranslatedName.fromJson(Map<String, dynamic> json) =
      _$_TranslatedName.fromJson;
}
