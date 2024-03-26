// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_bookmark_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranBookmModel _$QuranBookmModelFromJson(Map<String, dynamic> json) {
  return _QuranBookmModel.fromJson(json);
}

/// @nodoc
mixin _$QuranBookmModel {
  List<String>? get surahs => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get ayahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranBookmModelCopyWith<QuranBookmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranBookmModelCopyWith<$Res> {
  factory $QuranBookmModelCopyWith(
          QuranBookmModel value, $Res Function(QuranBookmModel) then) =
      _$QuranBookmModelCopyWithImpl<$Res, QuranBookmModel>;
  @useResult
  $Res call(
      {List<String>? surahs,
      @JsonKey(name: "_id") String id,
      String? user,
      String? title,
      String? image,
      List<String>? ayahs});
}

/// @nodoc
class _$QuranBookmModelCopyWithImpl<$Res, $Val extends QuranBookmModel>
    implements $QuranBookmModelCopyWith<$Res> {
  _$QuranBookmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = freezed,
    Object? id = null,
    Object? user = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? ayahs = freezed,
  }) {
    return _then(_value.copyWith(
      surahs: freezed == surahs
          ? _value.surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      ayahs: freezed == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranBookmModelImplCopyWith<$Res>
    implements $QuranBookmModelCopyWith<$Res> {
  factory _$$QuranBookmModelImplCopyWith(_$QuranBookmModelImpl value,
          $Res Function(_$QuranBookmModelImpl) then) =
      __$$QuranBookmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? surahs,
      @JsonKey(name: "_id") String id,
      String? user,
      String? title,
      String? image,
      List<String>? ayahs});
}

/// @nodoc
class __$$QuranBookmModelImplCopyWithImpl<$Res>
    extends _$QuranBookmModelCopyWithImpl<$Res, _$QuranBookmModelImpl>
    implements _$$QuranBookmModelImplCopyWith<$Res> {
  __$$QuranBookmModelImplCopyWithImpl(
      _$QuranBookmModelImpl _value, $Res Function(_$QuranBookmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = freezed,
    Object? id = null,
    Object? user = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? ayahs = freezed,
  }) {
    return _then(_$QuranBookmModelImpl(
      surahs: freezed == surahs
          ? _value._surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      ayahs: freezed == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranBookmModelImpl implements _QuranBookmModel {
  const _$QuranBookmModelImpl(
      {required final List<String>? surahs,
      @JsonKey(name: "_id") required this.id,
      required this.user,
      required this.title,
      required this.image,
      required final List<String>? ayahs})
      : _surahs = surahs,
        _ayahs = ayahs;

  factory _$QuranBookmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranBookmModelImplFromJson(json);

  final List<String>? _surahs;
  @override
  List<String>? get surahs {
    final value = _surahs;
    if (value == null) return null;
    if (_surahs is EqualUnmodifiableListView) return _surahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String? user;
  @override
  final String? title;
  @override
  final String? image;
  final List<String>? _ayahs;
  @override
  List<String>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuranBookmModel(surahs: $surahs, id: $id, user: $user, title: $title, image: $image, ayahs: $ayahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranBookmModelImpl &&
            const DeepCollectionEquality().equals(other._surahs, _surahs) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_surahs),
      id,
      user,
      title,
      image,
      const DeepCollectionEquality().hash(_ayahs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranBookmModelImplCopyWith<_$QuranBookmModelImpl> get copyWith =>
      __$$QuranBookmModelImplCopyWithImpl<_$QuranBookmModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranBookmModelImplToJson(
      this,
    );
  }
}

abstract class _QuranBookmModel implements QuranBookmModel {
  const factory _QuranBookmModel(
      {required final List<String>? surahs,
      @JsonKey(name: "_id") required final String id,
      required final String? user,
      required final String? title,
      required final String? image,
      required final List<String>? ayahs}) = _$QuranBookmModelImpl;

  factory _QuranBookmModel.fromJson(Map<String, dynamic> json) =
      _$QuranBookmModelImpl.fromJson;

  @override
  List<String>? get surahs;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String? get user;
  @override
  String? get title;
  @override
  String? get image;
  @override
  List<String>? get ayahs;
  @override
  @JsonKey(ignore: true)
  _$$QuranBookmModelImplCopyWith<_$QuranBookmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
