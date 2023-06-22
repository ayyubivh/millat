// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(String email, String name) storeUserDetails,
    required TResult Function() fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(String email, String name)? storeUserDetails,
    TResult? Function()? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(String email, String name)? storeUserDetails,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(FetchUserDetails value) fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(StoreUserDetails value)? storeUserDetails,
    TResult? Function(FetchUserDetails value)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res, DatabaseEvent>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res, $Val extends DatabaseEvent>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoreTokenEventCopyWith<$Res> {
  factory _$$StoreTokenEventCopyWith(
          _$StoreTokenEvent value, $Res Function(_$StoreTokenEvent) then) =
      __$$StoreTokenEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$StoreTokenEventCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$StoreTokenEvent>
    implements _$$StoreTokenEventCopyWith<$Res> {
  __$$StoreTokenEventCopyWithImpl(
      _$StoreTokenEvent _value, $Res Function(_$StoreTokenEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$StoreTokenEvent(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreTokenEvent implements StoreTokenEvent {
  const _$StoreTokenEvent({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'DatabaseEvent.storeTokenEvent(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTokenEvent &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTokenEventCopyWith<_$StoreTokenEvent> get copyWith =>
      __$$StoreTokenEventCopyWithImpl<_$StoreTokenEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(String email, String name) storeUserDetails,
    required TResult Function() fetchUserDetails,
  }) {
    return storeTokenEvent(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(String email, String name)? storeUserDetails,
    TResult? Function()? fetchUserDetails,
  }) {
    return storeTokenEvent?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(String email, String name)? storeUserDetails,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (storeTokenEvent != null) {
      return storeTokenEvent(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(FetchUserDetails value) fetchUserDetails,
  }) {
    return storeTokenEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(StoreUserDetails value)? storeUserDetails,
    TResult? Function(FetchUserDetails value)? fetchUserDetails,
  }) {
    return storeTokenEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (storeTokenEvent != null) {
      return storeTokenEvent(this);
    }
    return orElse();
  }
}

abstract class StoreTokenEvent implements DatabaseEvent {
  const factory StoreTokenEvent({required final String token}) =
      _$StoreTokenEvent;

  String get token;
  @JsonKey(ignore: true)
  _$$StoreTokenEventCopyWith<_$StoreTokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTokenCopyWith<$Res> {
  factory _$$FetchTokenCopyWith(
          _$FetchToken value, $Res Function(_$FetchToken) then) =
      __$$FetchTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTokenCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchToken>
    implements _$$FetchTokenCopyWith<$Res> {
  __$$FetchTokenCopyWithImpl(
      _$FetchToken _value, $Res Function(_$FetchToken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchToken implements FetchToken {
  const _$FetchToken();

  @override
  String toString() {
    return 'DatabaseEvent.fetchToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(String email, String name) storeUserDetails,
    required TResult Function() fetchUserDetails,
  }) {
    return fetchToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(String email, String name)? storeUserDetails,
    TResult? Function()? fetchUserDetails,
  }) {
    return fetchToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(String email, String name)? storeUserDetails,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchToken != null) {
      return fetchToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(StoreUserDetails value)? storeUserDetails,
    TResult? Function(FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchToken != null) {
      return fetchToken(this);
    }
    return orElse();
  }
}

abstract class FetchToken implements DatabaseEvent {
  const factory FetchToken() = _$FetchToken;
}

/// @nodoc
abstract class _$$StoreUserDetailsCopyWith<$Res> {
  factory _$$StoreUserDetailsCopyWith(
          _$StoreUserDetails value, $Res Function(_$StoreUserDetails) then) =
      __$$StoreUserDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String name});
}

/// @nodoc
class __$$StoreUserDetailsCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$StoreUserDetails>
    implements _$$StoreUserDetailsCopyWith<$Res> {
  __$$StoreUserDetailsCopyWithImpl(
      _$StoreUserDetails _value, $Res Function(_$StoreUserDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
  }) {
    return _then(_$StoreUserDetails(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreUserDetails implements StoreUserDetails {
  const _$StoreUserDetails({required this.email, required this.name});

  @override
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'DatabaseEvent.storeUserDetails(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreUserDetails &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreUserDetailsCopyWith<_$StoreUserDetails> get copyWith =>
      __$$StoreUserDetailsCopyWithImpl<_$StoreUserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(String email, String name) storeUserDetails,
    required TResult Function() fetchUserDetails,
  }) {
    return storeUserDetails(email, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(String email, String name)? storeUserDetails,
    TResult? Function()? fetchUserDetails,
  }) {
    return storeUserDetails?.call(email, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(String email, String name)? storeUserDetails,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (storeUserDetails != null) {
      return storeUserDetails(email, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(FetchUserDetails value) fetchUserDetails,
  }) {
    return storeUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(StoreUserDetails value)? storeUserDetails,
    TResult? Function(FetchUserDetails value)? fetchUserDetails,
  }) {
    return storeUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (storeUserDetails != null) {
      return storeUserDetails(this);
    }
    return orElse();
  }
}

abstract class StoreUserDetails implements DatabaseEvent {
  const factory StoreUserDetails(
      {required final String email,
      required final String name}) = _$StoreUserDetails;

  String get email;
  String get name;
  @JsonKey(ignore: true)
  _$$StoreUserDetailsCopyWith<_$StoreUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchUserDetailsCopyWith<$Res> {
  factory _$$FetchUserDetailsCopyWith(
          _$FetchUserDetails value, $Res Function(_$FetchUserDetails) then) =
      __$$FetchUserDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserDetailsCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchUserDetails>
    implements _$$FetchUserDetailsCopyWith<$Res> {
  __$$FetchUserDetailsCopyWithImpl(
      _$FetchUserDetails _value, $Res Function(_$FetchUserDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchUserDetails implements FetchUserDetails {
  const _$FetchUserDetails();

  @override
  String toString() {
    return 'DatabaseEvent.fetchUserDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUserDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(String email, String name) storeUserDetails,
    required TResult Function() fetchUserDetails,
  }) {
    return fetchUserDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(String email, String name)? storeUserDetails,
    TResult? Function()? fetchUserDetails,
  }) {
    return fetchUserDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(String email, String name)? storeUserDetails,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(StoreUserDetails value)? storeUserDetails,
    TResult? Function(FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(this);
    }
    return orElse();
  }
}

abstract class FetchUserDetails implements DatabaseEvent {
  const factory FetchUserDetails() = _$FetchUserDetails;
}

/// @nodoc
mixin _$DatabaseState {
  String get token => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatabaseStateCopyWith<DatabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
  @useResult
  $Res call({String token, String name, String email});
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res, $Val extends DatabaseState>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String name, String email});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_Initial(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.token, required this.name, required this.email});

  @override
  final String token;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'DatabaseState(token: $token, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DatabaseState {
  const factory _Initial(
      {required final String token,
      required final String name,
      required final String email}) = _$_Initial;

  @override
  String get token;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
