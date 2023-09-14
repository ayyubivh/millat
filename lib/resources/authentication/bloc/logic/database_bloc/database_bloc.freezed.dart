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
abstract class _$$FetchAuthUserCopyWith<$Res> {
  factory _$$FetchAuthUserCopyWith(
          _$FetchAuthUser value, $Res Function(_$FetchAuthUser) then) =
      __$$FetchAuthUserCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchAuthUserCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchAuthUser>
    implements _$$FetchAuthUserCopyWith<$Res> {
  __$$FetchAuthUserCopyWithImpl(
      _$FetchAuthUser _value, $Res Function(_$FetchAuthUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchAuthUser(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchAuthUser implements FetchAuthUser {
  const _$FetchAuthUser({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DatabaseEvent.fetchAuthUser(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAuthUser &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAuthUserCopyWith<_$FetchAuthUser> get copyWith =>
      __$$FetchAuthUserCopyWithImpl<_$FetchAuthUser>(this, _$identity);

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
      _$FetchAuthUser;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchAuthUserCopyWith<_$FetchAuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditAuthUserCopyWith<$Res> {
  factory _$$EditAuthUserCopyWith(
          _$EditAuthUser value, $Res Function(_$EditAuthUser) then) =
      __$$EditAuthUserCopyWithImpl<$Res>;
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
class __$$EditAuthUserCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$EditAuthUser>
    implements _$$EditAuthUserCopyWith<$Res> {
  __$$EditAuthUserCopyWithImpl(
      _$EditAuthUser _value, $Res Function(_$EditAuthUser) _then)
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
    return _then(_$EditAuthUser(
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

class _$EditAuthUser implements EditAuthUser {
  const _$EditAuthUser(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAuthUser &&
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
  _$$EditAuthUserCopyWith<_$EditAuthUser> get copyWith =>
      __$$EditAuthUserCopyWithImpl<_$EditAuthUser>(this, _$identity);

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
      required final BuildContext context}) = _$EditAuthUser;

  String get name;
  String? get email;
  String get userName;
  String get institution;
  String get dob;
  String get profession;
  String get image;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$EditAuthUserCopyWith<_$EditAuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTokenEventCopyWith<$Res> {
  factory _$$RemoveTokenEventCopyWith(
          _$RemoveTokenEvent value, $Res Function(_$RemoveTokenEvent) then) =
      __$$RemoveTokenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveTokenEventCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$RemoveTokenEvent>
    implements _$$RemoveTokenEventCopyWith<$Res> {
  __$$RemoveTokenEventCopyWithImpl(
      _$RemoveTokenEvent _value, $Res Function(_$RemoveTokenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveTokenEvent implements RemoveTokenEvent {
  const _$RemoveTokenEvent();

  @override
  String toString() {
    return 'DatabaseEvent.removeTokenEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveTokenEvent);
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
    required TResult orElse(),
  }) {
    if (removeTokenEvent != null) {
      return removeTokenEvent(this);
    }
    return orElse();
  }
}

abstract class RemoveTokenEvent implements DatabaseEvent {
  const factory RemoveTokenEvent() = _$RemoveTokenEvent;
}

/// @nodoc
abstract class _$$UploadImageEventCopyWith<$Res> {
  factory _$$UploadImageEventCopyWith(
          _$UploadImageEvent value, $Res Function(_$UploadImageEvent) then) =
      __$$UploadImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$UploadImageEventCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UploadImageEvent>
    implements _$$UploadImageEventCopyWith<$Res> {
  __$$UploadImageEventCopyWithImpl(
      _$UploadImageEvent _value, $Res Function(_$UploadImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$UploadImageEvent(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$UploadImageEvent implements UploadImageEvent {
  const _$UploadImageEvent({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'DatabaseEvent.uploadImageEvent(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageEvent &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageEventCopyWith<_$UploadImageEvent> get copyWith =>
      __$$UploadImageEventCopyWithImpl<_$UploadImageEvent>(this, _$identity);

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
      _$UploadImageEvent;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$UploadImageEventCopyWith<_$UploadImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchContactEventCopyWith<$Res> {
  factory _$$FetchContactEventCopyWith(
          _$FetchContactEvent value, $Res Function(_$FetchContactEvent) then) =
      __$$FetchContactEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchContactEventCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchContactEvent>
    implements _$$FetchContactEventCopyWith<$Res> {
  __$$FetchContactEventCopyWithImpl(
      _$FetchContactEvent _value, $Res Function(_$FetchContactEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchContactEvent implements FetchContactEvent {
  const _$FetchContactEvent();

  @override
  String toString() {
    return 'DatabaseEvent.fetchContactEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchContactEvent);
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
    required TResult orElse(),
  }) {
    if (fetchContactEvent != null) {
      return fetchContactEvent(this);
    }
    return orElse();
  }
}

abstract class FetchContactEvent implements DatabaseEvent {
  const factory FetchContactEvent() = _$FetchContactEvent;
}

/// @nodoc
abstract class _$$SaveCoverImageCopyWith<$Res> {
  factory _$$SaveCoverImageCopyWith(
          _$SaveCoverImage value, $Res Function(_$SaveCoverImage) then) =
      __$$SaveCoverImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$SaveCoverImageCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SaveCoverImage>
    implements _$$SaveCoverImageCopyWith<$Res> {
  __$$SaveCoverImageCopyWithImpl(
      _$SaveCoverImage _value, $Res Function(_$SaveCoverImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$SaveCoverImage(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCoverImage implements SaveCoverImage {
  const _$SaveCoverImage({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'DatabaseEvent.saveCoverImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCoverImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCoverImageCopyWith<_$SaveCoverImage> get copyWith =>
      __$$SaveCoverImageCopyWithImpl<_$SaveCoverImage>(this, _$identity);

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
      _$SaveCoverImage;

  String get image;
  @JsonKey(ignore: true)
  _$$SaveCoverImageCopyWith<_$SaveCoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCoverImageCopyWith<$Res> {
  factory _$$FetchCoverImageCopyWith(
          _$FetchCoverImage value, $Res Function(_$FetchCoverImage) then) =
      __$$FetchCoverImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCoverImageCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$FetchCoverImage>
    implements _$$FetchCoverImageCopyWith<$Res> {
  __$$FetchCoverImageCopyWithImpl(
      _$FetchCoverImage _value, $Res Function(_$FetchCoverImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCoverImage implements FetchCoverImage {
  const _$FetchCoverImage();

  @override
  String toString() {
    return 'DatabaseEvent.fetchCoverImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCoverImage);
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
    required TResult orElse(),
  }) {
    if (fetchCoverImage != null) {
      return fetchCoverImage(this);
    }
    return orElse();
  }
}

abstract class FetchCoverImage implements DatabaseEvent {
  const factory FetchCoverImage() = _$FetchCoverImage;
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
  List<Contact>? get contacts => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;

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
      List<Contact>? contacts,
      String coverImage});

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
    Object? contacts = freezed,
    Object? coverImage = null,
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
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_InitialCopyWith<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
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
      List<Contact>? contacts,
      String coverImage});

  @override
  $AuthUserModelCopyWith<$Res>? get authUserModel;
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
    Object? authUserModel = freezed,
    Object? isLoading = null,
    Object? editIsloading = null,
    Object? succesMessage = null,
    Object? imagebytes = freezed,
    Object? failedMessage = null,
    Object? contacts = freezed,
    Object? coverImage = null,
  }) {
    return _then(_$_Initial(
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
      contacts: freezed == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.token,
      required this.authUserModel,
      required this.isLoading,
      required this.editIsloading,
      required this.succesMessage,
      required this.imagebytes,
      required this.failedMessage,
      required final List<Contact>? contacts,
      required this.coverImage})
      : _contacts = contacts;

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
  final List<Contact>? _contacts;
  @override
  List<Contact>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String coverImage;

  @override
  String toString() {
    return 'DatabaseState(token: $token, authUserModel: $authUserModel, isLoading: $isLoading, editIsloading: $editIsloading, succesMessage: $succesMessage, imagebytes: $imagebytes, failedMessage: $failedMessage, contacts: $contacts, coverImage: $coverImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
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
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage));
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
      const DeepCollectionEquality().hash(_contacts),
      coverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
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
      required final List<Contact>? contacts,
      required final String coverImage}) = _$_Initial;

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
  List<Contact>? get contacts;
  @override
  String get coverImage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
