// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialUserModel _$SocialUserModelFromJson(Map<String, dynamic> json) {
  return _SocialUserModel.fromJson(json);
}

/// @nodoc
mixin _$SocialUserModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  UserResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialUserModelCopyWith<SocialUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialUserModelCopyWith<$Res> {
  factory $SocialUserModelCopyWith(
          SocialUserModel value, $Res Function(SocialUserModel) then) =
      _$SocialUserModelCopyWithImpl<$Res, SocialUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') UserResult? result});

  $UserResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SocialUserModelCopyWithImpl<$Res, $Val extends SocialUserModel>
    implements $SocialUserModelCopyWith<$Res> {
  _$SocialUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $UserResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialUserModelImplCopyWith<$Res>
    implements $SocialUserModelCopyWith<$Res> {
  factory _$$SocialUserModelImplCopyWith(_$SocialUserModelImpl value,
          $Res Function(_$SocialUserModelImpl) then) =
      __$$SocialUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') UserResult? result});

  @override
  $UserResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SocialUserModelImplCopyWithImpl<$Res>
    extends _$SocialUserModelCopyWithImpl<$Res, _$SocialUserModelImpl>
    implements _$$SocialUserModelImplCopyWith<$Res> {
  __$$SocialUserModelImplCopyWithImpl(
      _$SocialUserModelImpl _value, $Res Function(_$SocialUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SocialUserModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialUserModelImpl implements _SocialUserModel {
  _$SocialUserModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$SocialUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'result')
  final UserResult? result;

  @override
  String toString() {
    return 'SocialUserModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialUserModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialUserModelImplCopyWith<_$SocialUserModelImpl> get copyWith =>
      __$$SocialUserModelImplCopyWithImpl<_$SocialUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialUserModelImplToJson(
      this,
    );
  }
}

abstract class _SocialUserModel implements SocialUserModel {
  factory _SocialUserModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'error') final String? error,
          @JsonKey(name: 'result') final UserResult? result}) =
      _$SocialUserModelImpl;

  factory _SocialUserModel.fromJson(Map<String, dynamic> json) =
      _$SocialUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'result')
  UserResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$SocialUserModelImplCopyWith<_$SocialUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResult _$UserResultFromJson(Map<String, dynamic> json) {
  return _UserResult.fromJson(json);
}

/// @nodoc
mixin _$UserResult {
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLogin')
  bool? get isLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResultCopyWith<UserResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResultCopyWith<$Res> {
  factory $UserResultCopyWith(
          UserResult value, $Res Function(UserResult) then) =
      _$UserResultCopyWithImpl<$Res, UserResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User? user,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'isLogin') bool? isLogin});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserResultCopyWithImpl<$Res, $Val extends UserResult>
    implements $UserResultCopyWith<$Res> {
  _$UserResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? isLogin = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isLogin: freezed == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResultImplCopyWith<$Res>
    implements $UserResultCopyWith<$Res> {
  factory _$$UserResultImplCopyWith(
          _$UserResultImpl value, $Res Function(_$UserResultImpl) then) =
      __$$UserResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User? user,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'isLogin') bool? isLogin});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserResultImplCopyWithImpl<$Res>
    extends _$UserResultCopyWithImpl<$Res, _$UserResultImpl>
    implements _$$UserResultImplCopyWith<$Res> {
  __$$UserResultImplCopyWithImpl(
      _$UserResultImpl _value, $Res Function(_$UserResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? isLogin = freezed,
  }) {
    return _then(_$UserResultImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isLogin: freezed == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResultImpl implements _UserResult {
  _$UserResultImpl(
      {@JsonKey(name: 'user') this.user,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'isLogin') this.isLogin});

  factory _$UserResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResultImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final User? user;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'isLogin')
  final bool? isLogin;

  @override
  String toString() {
    return 'UserResult(user: $user, token: $token, isLogin: $isLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResultImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token, isLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResultImplCopyWith<_$UserResultImpl> get copyWith =>
      __$$UserResultImplCopyWithImpl<_$UserResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResultImplToJson(
      this,
    );
  }
}

abstract class _UserResult implements UserResult {
  factory _UserResult(
      {@JsonKey(name: 'user') final User? user,
      @JsonKey(name: 'token') final String? token,
      @JsonKey(name: 'isLogin') final bool? isLogin}) = _$UserResultImpl;

  factory _UserResult.fromJson(Map<String, dynamic> json) =
      _$UserResultImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'isLogin')
  bool? get isLogin;
  @override
  @JsonKey(ignore: true)
  _$$UserResultImplCopyWith<_$UserResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? uuid = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? uuid = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, email: $email, uuid: $uuid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, username, email, uuid, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'uuid') final String? uuid,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
