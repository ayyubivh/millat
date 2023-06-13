// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_by_brand_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopBrandModel _$ShopBrandModelFromJson(Map<String, dynamic> json) {
  return _ShopBrandModel.fromJson(json);
}

/// @nodoc
mixin _$ShopBrandModel {
  List<User>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopBrandModelCopyWith<ShopBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopBrandModelCopyWith<$Res> {
  factory $ShopBrandModelCopyWith(
          ShopBrandModel value, $Res Function(ShopBrandModel) then) =
      _$ShopBrandModelCopyWithImpl<$Res, ShopBrandModel>;
  @useResult
  $Res call({List<User>? users});
}

/// @nodoc
class _$ShopBrandModelCopyWithImpl<$Res, $Val extends ShopBrandModel>
    implements $ShopBrandModelCopyWith<$Res> {
  _$ShopBrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopBrandModelCopyWith<$Res>
    implements $ShopBrandModelCopyWith<$Res> {
  factory _$$_ShopBrandModelCopyWith(
          _$_ShopBrandModel value, $Res Function(_$_ShopBrandModel) then) =
      __$$_ShopBrandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User>? users});
}

/// @nodoc
class __$$_ShopBrandModelCopyWithImpl<$Res>
    extends _$ShopBrandModelCopyWithImpl<$Res, _$_ShopBrandModel>
    implements _$$_ShopBrandModelCopyWith<$Res> {
  __$$_ShopBrandModelCopyWithImpl(
      _$_ShopBrandModel _value, $Res Function(_$_ShopBrandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$_ShopBrandModel(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopBrandModel implements _ShopBrandModel {
  const _$_ShopBrandModel({required final List<User>? users}) : _users = users;

  factory _$_ShopBrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopBrandModelFromJson(json);

  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShopBrandModel(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopBrandModel &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopBrandModelCopyWith<_$_ShopBrandModel> get copyWith =>
      __$$_ShopBrandModelCopyWithImpl<_$_ShopBrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopBrandModelToJson(
      this,
    );
  }
}

abstract class _ShopBrandModel implements ShopBrandModel {
  const factory _ShopBrandModel({required final List<User>? users}) =
      _$_ShopBrandModel;

  factory _ShopBrandModel.fromJson(Map<String, dynamic> json) =
      _$_ShopBrandModel.fromJson;

  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_ShopBrandModelCopyWith<_$_ShopBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get roles => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String? name,
      String? email,
      String? password,
      String? roles,
      bool? active,
      DateTime createdAt,
      DateTime updatedAt,
      String? otp,
      String? phoneNumber,
      String? description,
      String? image});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? roles = freezed,
    Object? active = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? otp = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String? name,
      String? email,
      String? password,
      String? roles,
      bool? active,
      DateTime createdAt,
      DateTime updatedAt,
      String? otp,
      String? phoneNumber,
      String? description,
      String? image});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? roles = freezed,
    Object? active = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? otp = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@JsonKey(name: "_id") required this.id,
      this.name,
      this.email,
      this.password,
      this.roles,
      this.active,
      required this.createdAt,
      required this.updatedAt,
      this.otp,
      this.phoneNumber,
      this.description,
      this.image});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? roles;
  @override
  final bool? active;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? otp;
  @override
  final String? phoneNumber;
  @override
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, password: $password, roles: $roles, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, phoneNumber: $phoneNumber, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, password, roles,
      active, createdAt, updatedAt, otp, phoneNumber, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "_id") required final String id,
      final String? name,
      final String? email,
      final String? password,
      final String? roles,
      final bool? active,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? otp,
      final String? phoneNumber,
      final String? description,
      final String? image}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get roles;
  @override
  bool? get active;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get otp;
  @override
  String? get phoneNumber;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
