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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
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
  }) {
    return storeTokenEvent(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
  }) {
    return storeTokenEvent?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
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
  }) {
    return storeTokenEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
  }) {
    return storeTokenEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
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
  }) {
    return fetchToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
  }) {
    return fetchToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
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
  }) {
    return fetchToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
  }) {
    return fetchToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
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
mixin _$DatabaseState {
  String get token => throw _privateConstructorUsedError;

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
  $Res call({String token});
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
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
  $Res call({String token});
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
  }) {
    return _then(_$_Initial(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'DatabaseState(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DatabaseState {
  const factory _Initial({required final String token}) = _$_Initial;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
