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
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
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
abstract class _$$StoreTokenEventImplCopyWith<$Res> {
  factory _$$StoreTokenEventImplCopyWith(_$StoreTokenEventImpl value,
          $Res Function(_$StoreTokenEventImpl) then) =
      __$$StoreTokenEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$StoreTokenEventImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$StoreTokenEventImpl>
    implements _$$StoreTokenEventImplCopyWith<$Res> {
  __$$StoreTokenEventImplCopyWithImpl(
      _$StoreTokenEventImpl _value, $Res Function(_$StoreTokenEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$StoreTokenEventImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreTokenEventImpl implements StoreTokenEvent {
  const _$StoreTokenEventImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'DatabaseEvent.storeTokenEvent(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTokenEventImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTokenEventImplCopyWith<_$StoreTokenEventImpl> get copyWith =>
      __$$StoreTokenEventImplCopyWithImpl<_$StoreTokenEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return storeTokenEvent(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return storeTokenEvent?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
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
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return storeTokenEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return storeTokenEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
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
      _$StoreTokenEventImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$StoreTokenEventImplCopyWith<_$StoreTokenEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTokenImplCopyWith<$Res> {
  factory _$$FetchTokenImplCopyWith(
          _$FetchTokenImpl value, $Res Function(_$FetchTokenImpl) then) =
      __$$FetchTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTokenImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchTokenImpl>
    implements _$$FetchTokenImplCopyWith<$Res> {
  __$$FetchTokenImplCopyWithImpl(
      _$FetchTokenImpl _value, $Res Function(_$FetchTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTokenImpl implements FetchToken {
  const _$FetchTokenImpl();

  @override
  String toString() {
    return 'DatabaseEvent.fetchToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return fetchToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return fetchToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
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
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return fetchToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return fetchToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchToken != null) {
      return fetchToken(this);
    }
    return orElse();
  }
}

abstract class FetchToken implements DatabaseEvent {
  const factory FetchToken() = _$FetchTokenImpl;
}

/// @nodoc
abstract class _$$FetchAuthUserImplCopyWith<$Res> {
  factory _$$FetchAuthUserImplCopyWith(
          _$FetchAuthUserImpl value, $Res Function(_$FetchAuthUserImpl) then) =
      __$$FetchAuthUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchAuthUserImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchAuthUserImpl>
    implements _$$FetchAuthUserImplCopyWith<$Res> {
  __$$FetchAuthUserImplCopyWithImpl(
      _$FetchAuthUserImpl _value, $Res Function(_$FetchAuthUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchAuthUserImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchAuthUserImpl implements FetchAuthUser {
  const _$FetchAuthUserImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DatabaseEvent.fetchAuthUser(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAuthUserImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAuthUserImplCopyWith<_$FetchAuthUserImpl> get copyWith =>
      __$$FetchAuthUserImplCopyWithImpl<_$FetchAuthUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return fetchAuthUser(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return fetchAuthUser?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchAuthUser != null) {
      return fetchAuthUser(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return fetchAuthUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return fetchAuthUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchAuthUser != null) {
      return fetchAuthUser(this);
    }
    return orElse();
  }
}

abstract class FetchAuthUser implements DatabaseEvent {
  const factory FetchAuthUser({required final BuildContext context}) =
      _$FetchAuthUserImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchAuthUserImplCopyWith<_$FetchAuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditAuthUserImplCopyWith<$Res> {
  factory _$$EditAuthUserImplCopyWith(
          _$EditAuthUserImpl value, $Res Function(_$EditAuthUserImpl) then) =
      __$$EditAuthUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String? email,
      String userName,
      String institution,
      String dob,
      String profession,
      String image,
      BuildContext context});
}

/// @nodoc
class __$$EditAuthUserImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$EditAuthUserImpl>
    implements _$$EditAuthUserImplCopyWith<$Res> {
  __$$EditAuthUserImplCopyWithImpl(
      _$EditAuthUserImpl _value, $Res Function(_$EditAuthUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = freezed,
    Object? userName = null,
    Object? institution = null,
    Object? dob = null,
    Object? profession = null,
    Object? image = null,
    Object? context = null,
  }) {
    return _then(_$EditAuthUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$EditAuthUserImpl implements EditAuthUser {
  const _$EditAuthUserImpl(
      {required this.name,
      this.email,
      required this.userName,
      required this.institution,
      required this.dob,
      required this.profession,
      required this.image,
      required this.context});

  @override
  final String name;
  @override
  final String? email;
  @override
  final String userName;
  @override
  final String institution;
  @override
  final String dob;
  @override
  final String profession;
  @override
  final String image;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DatabaseEvent.editAuthUser(name: $name, email: $email, userName: $userName, institution: $institution, dob: $dob, profession: $profession, image: $image, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAuthUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, userName,
      institution, dob, profession, image, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAuthUserImplCopyWith<_$EditAuthUserImpl> get copyWith =>
      __$$EditAuthUserImplCopyWithImpl<_$EditAuthUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return editAuthUser(
        name, email, userName, institution, dob, profession, image, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return editAuthUser?.call(
        name, email, userName, institution, dob, profession, image, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (editAuthUser != null) {
      return editAuthUser(
          name, email, userName, institution, dob, profession, image, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return editAuthUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return editAuthUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (editAuthUser != null) {
      return editAuthUser(this);
    }
    return orElse();
  }
}

abstract class EditAuthUser implements DatabaseEvent {
  const factory EditAuthUser(
      {required final String name,
      final String? email,
      required final String userName,
      required final String institution,
      required final String dob,
      required final String profession,
      required final String image,
      required final BuildContext context}) = _$EditAuthUserImpl;

  String get name;
  String? get email;
  String get userName;
  String get institution;
  String get dob;
  String get profession;
  String get image;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$EditAuthUserImplCopyWith<_$EditAuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTokenEventImplCopyWith<$Res> {
  factory _$$RemoveTokenEventImplCopyWith(_$RemoveTokenEventImpl value,
          $Res Function(_$RemoveTokenEventImpl) then) =
      __$$RemoveTokenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveTokenEventImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$RemoveTokenEventImpl>
    implements _$$RemoveTokenEventImplCopyWith<$Res> {
  __$$RemoveTokenEventImplCopyWithImpl(_$RemoveTokenEventImpl _value,
      $Res Function(_$RemoveTokenEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveTokenEventImpl implements RemoveTokenEvent {
  const _$RemoveTokenEventImpl();

  @override
  String toString() {
    return 'DatabaseEvent.removeTokenEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveTokenEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return removeTokenEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return removeTokenEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (removeTokenEvent != null) {
      return removeTokenEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return removeTokenEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return removeTokenEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (removeTokenEvent != null) {
      return removeTokenEvent(this);
    }
    return orElse();
  }
}

abstract class RemoveTokenEvent implements DatabaseEvent {
  const factory RemoveTokenEvent() = _$RemoveTokenEventImpl;
}

/// @nodoc
abstract class _$$UploadImageEventImplCopyWith<$Res> {
  factory _$$UploadImageEventImplCopyWith(_$UploadImageEventImpl value,
          $Res Function(_$UploadImageEventImpl) then) =
      __$$UploadImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$UploadImageEventImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UploadImageEventImpl>
    implements _$$UploadImageEventImplCopyWith<$Res> {
  __$$UploadImageEventImplCopyWithImpl(_$UploadImageEventImpl _value,
      $Res Function(_$UploadImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$UploadImageEventImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$UploadImageEventImpl implements UploadImageEvent {
  const _$UploadImageEventImpl({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'DatabaseEvent.uploadImageEvent(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageEventImpl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageEventImplCopyWith<_$UploadImageEventImpl> get copyWith =>
      __$$UploadImageEventImplCopyWithImpl<_$UploadImageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return uploadImageEvent(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return uploadImageEvent?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (uploadImageEvent != null) {
      return uploadImageEvent(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return uploadImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return uploadImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (uploadImageEvent != null) {
      return uploadImageEvent(this);
    }
    return orElse();
  }
}

abstract class UploadImageEvent implements DatabaseEvent {
  const factory UploadImageEvent({required final ImageSource source}) =
      _$UploadImageEventImpl;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$UploadImageEventImplCopyWith<_$UploadImageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchContactEventImplCopyWith<$Res> {
  factory _$$FetchContactEventImplCopyWith(_$FetchContactEventImpl value,
          $Res Function(_$FetchContactEventImpl) then) =
      __$$FetchContactEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchContactEventImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchContactEventImpl>
    implements _$$FetchContactEventImplCopyWith<$Res> {
  __$$FetchContactEventImplCopyWithImpl(_$FetchContactEventImpl _value,
      $Res Function(_$FetchContactEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchContactEventImpl implements FetchContactEvent {
  const _$FetchContactEventImpl();

  @override
  String toString() {
    return 'DatabaseEvent.fetchContactEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchContactEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return fetchContactEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return fetchContactEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchContactEvent != null) {
      return fetchContactEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return fetchContactEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return fetchContactEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchContactEvent != null) {
      return fetchContactEvent(this);
    }
    return orElse();
  }
}

abstract class FetchContactEvent implements DatabaseEvent {
  const factory FetchContactEvent() = _$FetchContactEventImpl;
}

/// @nodoc
abstract class _$$SaveCoverImageImplCopyWith<$Res> {
  factory _$$SaveCoverImageImplCopyWith(_$SaveCoverImageImpl value,
          $Res Function(_$SaveCoverImageImpl) then) =
      __$$SaveCoverImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$SaveCoverImageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SaveCoverImageImpl>
    implements _$$SaveCoverImageImplCopyWith<$Res> {
  __$$SaveCoverImageImplCopyWithImpl(
      _$SaveCoverImageImpl _value, $Res Function(_$SaveCoverImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$SaveCoverImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCoverImageImpl implements SaveCoverImage {
  const _$SaveCoverImageImpl({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'DatabaseEvent.saveCoverImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCoverImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCoverImageImplCopyWith<_$SaveCoverImageImpl> get copyWith =>
      __$$SaveCoverImageImplCopyWithImpl<_$SaveCoverImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return saveCoverImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return saveCoverImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (saveCoverImage != null) {
      return saveCoverImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return saveCoverImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return saveCoverImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (saveCoverImage != null) {
      return saveCoverImage(this);
    }
    return orElse();
  }
}

abstract class SaveCoverImage implements DatabaseEvent {
  const factory SaveCoverImage({required final String image}) =
      _$SaveCoverImageImpl;

  String get image;
  @JsonKey(ignore: true)
  _$$SaveCoverImageImplCopyWith<_$SaveCoverImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCoverImageImplCopyWith<$Res> {
  factory _$$FetchCoverImageImplCopyWith(_$FetchCoverImageImpl value,
          $Res Function(_$FetchCoverImageImpl) then) =
      __$$FetchCoverImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCoverImageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchCoverImageImpl>
    implements _$$FetchCoverImageImplCopyWith<$Res> {
  __$$FetchCoverImageImplCopyWithImpl(
      _$FetchCoverImageImpl _value, $Res Function(_$FetchCoverImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCoverImageImpl implements FetchCoverImage {
  const _$FetchCoverImageImpl();

  @override
  String toString() {
    return 'DatabaseEvent.fetchCoverImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCoverImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return fetchCoverImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return fetchCoverImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchCoverImage != null) {
      return fetchCoverImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return fetchCoverImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return fetchCoverImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchCoverImage != null) {
      return fetchCoverImage(this);
    }
    return orElse();
  }
}

abstract class FetchCoverImage implements DatabaseEvent {
  const factory FetchCoverImage() = _$FetchCoverImageImpl;
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$DeleteAccountImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DeleteAccountImpl implements DeleteAccount {
  const _$DeleteAccountImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DatabaseEvent.deleteAccount(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      __$$DeleteAccountImplCopyWithImpl<_$DeleteAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return deleteAccount(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return deleteAccount?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteAccount implements DatabaseEvent {
  const factory DeleteAccount({required final BuildContext context}) =
      _$DeleteAccountImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchUserReferralCodeImplCopyWith<$Res> {
  factory _$$FetchUserReferralCodeImplCopyWith(
          _$FetchUserReferralCodeImpl value,
          $Res Function(_$FetchUserReferralCodeImpl) then) =
      __$$FetchUserReferralCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserReferralCodeImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchUserReferralCodeImpl>
    implements _$$FetchUserReferralCodeImplCopyWith<$Res> {
  __$$FetchUserReferralCodeImplCopyWithImpl(_$FetchUserReferralCodeImpl _value,
      $Res Function(_$FetchUserReferralCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchUserReferralCodeImpl implements FetchUserReferralCode {
  const _$FetchUserReferralCodeImpl();

  @override
  String toString() {
    return 'DatabaseEvent.fetchUserReferralCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserReferralCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return fetchUserReferralCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return fetchUserReferralCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchUserReferralCode != null) {
      return fetchUserReferralCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return fetchUserReferralCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return fetchUserReferralCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchUserReferralCode != null) {
      return fetchUserReferralCode(this);
    }
    return orElse();
  }
}

abstract class FetchUserReferralCode implements DatabaseEvent {
  const factory FetchUserReferralCode() = _$FetchUserReferralCodeImpl;
}

/// @nodoc
abstract class _$$FetchReferralMessageImplCopyWith<$Res> {
  factory _$$FetchReferralMessageImplCopyWith(_$FetchReferralMessageImpl value,
          $Res Function(_$FetchReferralMessageImpl) then) =
      __$$FetchReferralMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchReferralMessageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchReferralMessageImpl>
    implements _$$FetchReferralMessageImplCopyWith<$Res> {
  __$$FetchReferralMessageImplCopyWithImpl(_$FetchReferralMessageImpl _value,
      $Res Function(_$FetchReferralMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchReferralMessageImpl implements FetchReferralMessage {
  const _$FetchReferralMessageImpl();

  @override
  String toString() {
    return 'DatabaseEvent.fetchReferralMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReferralMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return fetchReferralMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return fetchReferralMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchReferralMessage != null) {
      return fetchReferralMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return fetchReferralMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return fetchReferralMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (fetchReferralMessage != null) {
      return fetchReferralMessage(this);
    }
    return orElse();
  }
}

abstract class FetchReferralMessage implements DatabaseEvent {
  const factory FetchReferralMessage() = _$FetchReferralMessageImpl;
}

/// @nodoc
abstract class _$$SearchContactEventImplCopyWith<$Res> {
  factory _$$SearchContactEventImplCopyWith(_$SearchContactEventImpl value,
          $Res Function(_$SearchContactEventImpl) then) =
      __$$SearchContactEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchContactEventImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SearchContactEventImpl>
    implements _$$SearchContactEventImplCopyWith<$Res> {
  __$$SearchContactEventImplCopyWithImpl(_$SearchContactEventImpl _value,
      $Res Function(_$SearchContactEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchContactEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchContactEventImpl implements SearchContactEvent {
  const _$SearchContactEventImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'DatabaseEvent.searchContactEvent(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContactEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContactEventImplCopyWith<_$SearchContactEventImpl> get copyWith =>
      __$$SearchContactEventImplCopyWithImpl<_$SearchContactEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return searchContactEvent(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return searchContactEvent?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (searchContactEvent != null) {
      return searchContactEvent(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return searchContactEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return searchContactEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (searchContactEvent != null) {
      return searchContactEvent(this);
    }
    return orElse();
  }
}

abstract class SearchContactEvent implements DatabaseEvent {
  const factory SearchContactEvent({required final String query}) =
      _$SearchContactEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchContactEventImplCopyWith<_$SearchContactEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStatesImplCopyWith<$Res> {
  factory _$$EmptyStatesImplCopyWith(
          _$EmptyStatesImpl value, $Res Function(_$EmptyStatesImpl) then) =
      __$$EmptyStatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyStatesImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$EmptyStatesImpl>
    implements _$$EmptyStatesImplCopyWith<$Res> {
  __$$EmptyStatesImplCopyWithImpl(
      _$EmptyStatesImpl _value, $Res Function(_$EmptyStatesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyStatesImpl implements EmptyStates {
  const _$EmptyStatesImpl();

  @override
  String toString() {
    return 'DatabaseEvent.emptyStates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyStatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) storeTokenEvent,
    required TResult Function() fetchToken,
    required TResult Function(BuildContext context) fetchAuthUser,
    required TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)
        editAuthUser,
    required TResult Function() removeTokenEvent,
    required TResult Function(ImageSource source) uploadImageEvent,
    required TResult Function() fetchContactEvent,
    required TResult Function(String image) saveCoverImage,
    required TResult Function() fetchCoverImage,
    required TResult Function(BuildContext context) deleteAccount,
    required TResult Function() fetchUserReferralCode,
    required TResult Function() fetchReferralMessage,
    required TResult Function(String query) searchContactEvent,
    required TResult Function() emptyStates,
  }) {
    return emptyStates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? storeTokenEvent,
    TResult? Function()? fetchToken,
    TResult? Function(BuildContext context)? fetchAuthUser,
    TResult? Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult? Function()? removeTokenEvent,
    TResult? Function(ImageSource source)? uploadImageEvent,
    TResult? Function()? fetchContactEvent,
    TResult? Function(String image)? saveCoverImage,
    TResult? Function()? fetchCoverImage,
    TResult? Function(BuildContext context)? deleteAccount,
    TResult? Function()? fetchUserReferralCode,
    TResult? Function()? fetchReferralMessage,
    TResult? Function(String query)? searchContactEvent,
    TResult? Function()? emptyStates,
  }) {
    return emptyStates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? storeTokenEvent,
    TResult Function()? fetchToken,
    TResult Function(BuildContext context)? fetchAuthUser,
    TResult Function(
            String name,
            String? email,
            String userName,
            String institution,
            String dob,
            String profession,
            String image,
            BuildContext context)?
        editAuthUser,
    TResult Function()? removeTokenEvent,
    TResult Function(ImageSource source)? uploadImageEvent,
    TResult Function()? fetchContactEvent,
    TResult Function(String image)? saveCoverImage,
    TResult Function()? fetchCoverImage,
    TResult Function(BuildContext context)? deleteAccount,
    TResult Function()? fetchUserReferralCode,
    TResult Function()? fetchReferralMessage,
    TResult Function(String query)? searchContactEvent,
    TResult Function()? emptyStates,
    required TResult orElse(),
  }) {
    if (emptyStates != null) {
      return emptyStates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTokenEvent value) storeTokenEvent,
    required TResult Function(FetchToken value) fetchToken,
    required TResult Function(FetchAuthUser value) fetchAuthUser,
    required TResult Function(EditAuthUser value) editAuthUser,
    required TResult Function(RemoveTokenEvent value) removeTokenEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(FetchContactEvent value) fetchContactEvent,
    required TResult Function(SaveCoverImage value) saveCoverImage,
    required TResult Function(FetchCoverImage value) fetchCoverImage,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(FetchUserReferralCode value)
        fetchUserReferralCode,
    required TResult Function(FetchReferralMessage value) fetchReferralMessage,
    required TResult Function(SearchContactEvent value) searchContactEvent,
    required TResult Function(EmptyStates value) emptyStates,
  }) {
    return emptyStates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTokenEvent value)? storeTokenEvent,
    TResult? Function(FetchToken value)? fetchToken,
    TResult? Function(FetchAuthUser value)? fetchAuthUser,
    TResult? Function(EditAuthUser value)? editAuthUser,
    TResult? Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(FetchContactEvent value)? fetchContactEvent,
    TResult? Function(SaveCoverImage value)? saveCoverImage,
    TResult? Function(FetchCoverImage value)? fetchCoverImage,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult? Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult? Function(SearchContactEvent value)? searchContactEvent,
    TResult? Function(EmptyStates value)? emptyStates,
  }) {
    return emptyStates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTokenEvent value)? storeTokenEvent,
    TResult Function(FetchToken value)? fetchToken,
    TResult Function(FetchAuthUser value)? fetchAuthUser,
    TResult Function(EditAuthUser value)? editAuthUser,
    TResult Function(RemoveTokenEvent value)? removeTokenEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(FetchContactEvent value)? fetchContactEvent,
    TResult Function(SaveCoverImage value)? saveCoverImage,
    TResult Function(FetchCoverImage value)? fetchCoverImage,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(FetchUserReferralCode value)? fetchUserReferralCode,
    TResult Function(FetchReferralMessage value)? fetchReferralMessage,
    TResult Function(SearchContactEvent value)? searchContactEvent,
    TResult Function(EmptyStates value)? emptyStates,
    required TResult orElse(),
  }) {
    if (emptyStates != null) {
      return emptyStates(this);
    }
    return orElse();
  }
}

abstract class EmptyStates implements DatabaseEvent {
  const factory EmptyStates() = _$EmptyStatesImpl;
}

/// @nodoc
mixin _$DatabaseState {
  String get token =>
      throw _privateConstructorUsedError; // required String name,
// required String email,
  AuthUserModel? get authUserModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get editIsloading => throw _privateConstructorUsedError;
  String get succesMessage => throw _privateConstructorUsedError;
  File? get imagebytes => throw _privateConstructorUsedError;
  String get failedMessage => throw _privateConstructorUsedError;
  String get editFailedMessage => throw _privateConstructorUsedError;
  List<Contact>? get contacts => throw _privateConstructorUsedError;
  List<Contact>? get searchContacts => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  String get editSuccesMessage => throw _privateConstructorUsedError;
  String get referralCode => throw _privateConstructorUsedError;
  String get referralMessage => throw _privateConstructorUsedError;

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
  $Res call(
      {String token,
      AuthUserModel? authUserModel,
      bool isLoading,
      bool editIsloading,
      String succesMessage,
      File? imagebytes,
      String failedMessage,
      String editFailedMessage,
      List<Contact>? contacts,
      List<Contact>? searchContacts,
      String coverImage,
      String editSuccesMessage,
      String referralCode,
      String referralMessage});

  $AuthUserModelCopyWith<$Res>? get authUserModel;
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
    Object? authUserModel = freezed,
    Object? isLoading = null,
    Object? editIsloading = null,
    Object? succesMessage = null,
    Object? imagebytes = freezed,
    Object? failedMessage = null,
    Object? editFailedMessage = null,
    Object? contacts = freezed,
    Object? searchContacts = freezed,
    Object? coverImage = null,
    Object? editSuccesMessage = null,
    Object? referralCode = null,
    Object? referralMessage = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      authUserModel: freezed == authUserModel
          ? _value.authUserModel
          : authUserModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      editIsloading: null == editIsloading
          ? _value.editIsloading
          : editIsloading // ignore: cast_nullable_to_non_nullable
              as bool,
      succesMessage: null == succesMessage
          ? _value.succesMessage
          : succesMessage // ignore: cast_nullable_to_non_nullable
              as String,
      imagebytes: freezed == imagebytes
          ? _value.imagebytes
          : imagebytes // ignore: cast_nullable_to_non_nullable
              as File?,
      failedMessage: null == failedMessage
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      editFailedMessage: null == editFailedMessage
          ? _value.editFailedMessage
          : editFailedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
      searchContacts: freezed == searchContacts
          ? _value.searchContacts
          : searchContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      editSuccesMessage: null == editSuccesMessage
          ? _value.editSuccesMessage
          : editSuccesMessage // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referralMessage: null == referralMessage
          ? _value.referralMessage
          : referralMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserModelCopyWith<$Res>? get authUserModel {
    if (_value.authUserModel == null) {
      return null;
    }

    return $AuthUserModelCopyWith<$Res>(_value.authUserModel!, (value) {
      return _then(_value.copyWith(authUserModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      AuthUserModel? authUserModel,
      bool isLoading,
      bool editIsloading,
      String succesMessage,
      File? imagebytes,
      String failedMessage,
      String editFailedMessage,
      List<Contact>? contacts,
      List<Contact>? searchContacts,
      String coverImage,
      String editSuccesMessage,
      String referralCode,
      String referralMessage});

  @override
  $AuthUserModelCopyWith<$Res>? get authUserModel;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? authUserModel = freezed,
    Object? isLoading = null,
    Object? editIsloading = null,
    Object? succesMessage = null,
    Object? imagebytes = freezed,
    Object? failedMessage = null,
    Object? editFailedMessage = null,
    Object? contacts = freezed,
    Object? searchContacts = freezed,
    Object? coverImage = null,
    Object? editSuccesMessage = null,
    Object? referralCode = null,
    Object? referralMessage = null,
  }) {
    return _then(_$InitialImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      authUserModel: freezed == authUserModel
          ? _value.authUserModel
          : authUserModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      editIsloading: null == editIsloading
          ? _value.editIsloading
          : editIsloading // ignore: cast_nullable_to_non_nullable
              as bool,
      succesMessage: null == succesMessage
          ? _value.succesMessage
          : succesMessage // ignore: cast_nullable_to_non_nullable
              as String,
      imagebytes: freezed == imagebytes
          ? _value.imagebytes
          : imagebytes // ignore: cast_nullable_to_non_nullable
              as File?,
      failedMessage: null == failedMessage
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      editFailedMessage: null == editFailedMessage
          ? _value.editFailedMessage
          : editFailedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: freezed == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
      searchContacts: freezed == searchContacts
          ? _value._searchContacts
          : searchContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      editSuccesMessage: null == editSuccesMessage
          ? _value.editSuccesMessage
          : editSuccesMessage // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referralMessage: null == referralMessage
          ? _value.referralMessage
          : referralMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.token,
      required this.authUserModel,
      required this.isLoading,
      required this.editIsloading,
      required this.succesMessage,
      required this.imagebytes,
      required this.failedMessage,
      required this.editFailedMessage,
      required final List<Contact>? contacts,
      required final List<Contact>? searchContacts,
      required this.coverImage,
      required this.editSuccesMessage,
      required this.referralCode,
      required this.referralMessage})
      : _contacts = contacts,
        _searchContacts = searchContacts;

  @override
  final String token;
// required String name,
// required String email,
  @override
  final AuthUserModel? authUserModel;
  @override
  final bool isLoading;
  @override
  final bool editIsloading;
  @override
  final String succesMessage;
  @override
  final File? imagebytes;
  @override
  final String failedMessage;
  @override
  final String editFailedMessage;
  final List<Contact>? _contacts;
  @override
  List<Contact>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Contact>? _searchContacts;
  @override
  List<Contact>? get searchContacts {
    final value = _searchContacts;
    if (value == null) return null;
    if (_searchContacts is EqualUnmodifiableListView) return _searchContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String coverImage;
  @override
  final String editSuccesMessage;
  @override
  final String referralCode;
  @override
  final String referralMessage;

  @override
  String toString() {
    return 'DatabaseState(token: $token, authUserModel: $authUserModel, isLoading: $isLoading, editIsloading: $editIsloading, succesMessage: $succesMessage, imagebytes: $imagebytes, failedMessage: $failedMessage, editFailedMessage: $editFailedMessage, contacts: $contacts, searchContacts: $searchContacts, coverImage: $coverImage, editSuccesMessage: $editSuccesMessage, referralCode: $referralCode, referralMessage: $referralMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.authUserModel, authUserModel) ||
                other.authUserModel == authUserModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.editIsloading, editIsloading) ||
                other.editIsloading == editIsloading) &&
            (identical(other.succesMessage, succesMessage) ||
                other.succesMessage == succesMessage) &&
            (identical(other.imagebytes, imagebytes) ||
                other.imagebytes == imagebytes) &&
            (identical(other.failedMessage, failedMessage) ||
                other.failedMessage == failedMessage) &&
            (identical(other.editFailedMessage, editFailedMessage) ||
                other.editFailedMessage == editFailedMessage) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._searchContacts, _searchContacts) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.editSuccesMessage, editSuccesMessage) ||
                other.editSuccesMessage == editSuccesMessage) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referralMessage, referralMessage) ||
                other.referralMessage == referralMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      authUserModel,
      isLoading,
      editIsloading,
      succesMessage,
      imagebytes,
      failedMessage,
      editFailedMessage,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_searchContacts),
      coverImage,
      editSuccesMessage,
      referralCode,
      referralMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements DatabaseState {
  const factory _Initial(
      {required final String token,
      required final AuthUserModel? authUserModel,
      required final bool isLoading,
      required final bool editIsloading,
      required final String succesMessage,
      required final File? imagebytes,
      required final String failedMessage,
      required final String editFailedMessage,
      required final List<Contact>? contacts,
      required final List<Contact>? searchContacts,
      required final String coverImage,
      required final String editSuccesMessage,
      required final String referralCode,
      required final String referralMessage}) = _$InitialImpl;

  @override
  String get token;
  @override // required String name,
// required String email,
  AuthUserModel? get authUserModel;
  @override
  bool get isLoading;
  @override
  bool get editIsloading;
  @override
  String get succesMessage;
  @override
  File? get imagebytes;
  @override
  String get failedMessage;
  @override
  String get editFailedMessage;
  @override
  List<Contact>? get contacts;
  @override
  List<Contact>? get searchContacts;
  @override
  String get coverImage;
  @override
  String get editSuccesMessage;
  @override
  String get referralCode;
  @override
  String get referralMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
