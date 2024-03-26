// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aya_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyaIdModel _$AyaIdModelFromJson(Map<String, dynamic> json) {
  return _AyaIdModel.fromJson(json);
}

/// @nodoc
mixin _$AyaIdModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<Translation>? get translation => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyaIdModelCopyWith<AyaIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyaIdModelCopyWith<$Res> {
  factory $AyaIdModelCopyWith(
          AyaIdModel value, $Res Function(AyaIdModel) then) =
      _$AyaIdModelCopyWithImpl<$Res, AyaIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? content,
      List<Translation>? translation,
      dynamic required});
}

/// @nodoc
class _$AyaIdModelCopyWithImpl<$Res, $Val extends AyaIdModel>
    implements $AyaIdModelCopyWith<$Res> {
  _$AyaIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? translation = freezed,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyaIdModelImplCopyWith<$Res>
    implements $AyaIdModelCopyWith<$Res> {
  factory _$$AyaIdModelImplCopyWith(
          _$AyaIdModelImpl value, $Res Function(_$AyaIdModelImpl) then) =
      __$$AyaIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? content,
      List<Translation>? translation,
      dynamic required});
}

/// @nodoc
class __$$AyaIdModelImplCopyWithImpl<$Res>
    extends _$AyaIdModelCopyWithImpl<$Res, _$AyaIdModelImpl>
    implements _$$AyaIdModelImplCopyWith<$Res> {
  __$$AyaIdModelImplCopyWithImpl(
      _$AyaIdModelImpl _value, $Res Function(_$AyaIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? translation = freezed,
    Object? required = freezed,
  }) {
    return _then(_$AyaIdModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: freezed == translation
          ? _value._translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyaIdModelImpl implements _AyaIdModel {
  const _$AyaIdModelImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.content,
      required final List<Translation>? translation,
      this.required})
      : _translation = translation;

  factory _$AyaIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyaIdModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? content;
  final List<Translation>? _translation;
  @override
  List<Translation>? get translation {
    final value = _translation;
    if (value == null) return null;
    if (_translation is EqualUnmodifiableListView) return _translation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic required;

  @override
  String toString() {
    return 'AyaIdModel(id: $id, content: $content, translation: $translation, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyaIdModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._translation, _translation) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      const DeepCollectionEquality().hash(_translation),
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyaIdModelImplCopyWith<_$AyaIdModelImpl> get copyWith =>
      __$$AyaIdModelImplCopyWithImpl<_$AyaIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyaIdModelImplToJson(
      this,
    );
  }
}

abstract class _AyaIdModel implements AyaIdModel {
  const factory _AyaIdModel(
      {@JsonKey(name: "_id") required final String? id,
      required final String? content,
      required final List<Translation>? translation,
      final dynamic required}) = _$AyaIdModelImpl;

  factory _AyaIdModel.fromJson(Map<String, dynamic> json) =
      _$AyaIdModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get content;
  @override
  List<Translation>? get translation;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$AyaIdModelImplCopyWith<_$AyaIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
