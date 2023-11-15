// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_and_condtions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermsAndCondtionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String slug) fetchTermsAndConditionsEvent,
    required TResult Function(
            String email, String name, String? phoneNumber, String message)
        postHelpAndSupport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String slug)? fetchTermsAndConditionsEvent,
    TResult? Function(
            String email, String name, String? phoneNumber, String message)?
        postHelpAndSupport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String slug)? fetchTermsAndConditionsEvent,
    TResult Function(
            String email, String name, String? phoneNumber, String message)?
        postHelpAndSupport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTermsAndConditionsEvent value)
        fetchTermsAndConditionsEvent,
    required TResult Function(PostHelpAndSupport value) postHelpAndSupport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    TResult? Function(PostHelpAndSupport value)? postHelpAndSupport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    TResult Function(PostHelpAndSupport value)? postHelpAndSupport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsAndCondtionsEventCopyWith<$Res> {
  factory $TermsAndCondtionsEventCopyWith(TermsAndCondtionsEvent value,
          $Res Function(TermsAndCondtionsEvent) then) =
      _$TermsAndCondtionsEventCopyWithImpl<$Res, TermsAndCondtionsEvent>;
}

/// @nodoc
class _$TermsAndCondtionsEventCopyWithImpl<$Res,
        $Val extends TermsAndCondtionsEvent>
    implements $TermsAndCondtionsEventCopyWith<$Res> {
  _$TermsAndCondtionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTermsAndConditionsEventImplCopyWith<$Res> {
  factory _$$FetchTermsAndConditionsEventImplCopyWith(
          _$FetchTermsAndConditionsEventImpl value,
          $Res Function(_$FetchTermsAndConditionsEventImpl) then) =
      __$$FetchTermsAndConditionsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String slug});
}

/// @nodoc
class __$$FetchTermsAndConditionsEventImplCopyWithImpl<$Res>
    extends _$TermsAndCondtionsEventCopyWithImpl<$Res,
        _$FetchTermsAndConditionsEventImpl>
    implements _$$FetchTermsAndConditionsEventImplCopyWith<$Res> {
  __$$FetchTermsAndConditionsEventImplCopyWithImpl(
      _$FetchTermsAndConditionsEventImpl _value,
      $Res Function(_$FetchTermsAndConditionsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
  }) {
    return _then(_$FetchTermsAndConditionsEventImpl(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTermsAndConditionsEventImpl
    implements FetchTermsAndConditionsEvent {
  const _$FetchTermsAndConditionsEventImpl({required this.slug});

  @override
  final String slug;

  @override
  String toString() {
    return 'TermsAndCondtionsEvent.fetchTermsAndConditionsEvent(slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTermsAndConditionsEventImpl &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTermsAndConditionsEventImplCopyWith<
          _$FetchTermsAndConditionsEventImpl>
      get copyWith => __$$FetchTermsAndConditionsEventImplCopyWithImpl<
          _$FetchTermsAndConditionsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String slug) fetchTermsAndConditionsEvent,
    required TResult Function(
            String email, String name, String? phoneNumber, String message)
        postHelpAndSupport,
  }) {
    return fetchTermsAndConditionsEvent(slug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String slug)? fetchTermsAndConditionsEvent,
    TResult? Function(
            String email, String name, String? phoneNumber, String message)?
        postHelpAndSupport,
  }) {
    return fetchTermsAndConditionsEvent?.call(slug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String slug)? fetchTermsAndConditionsEvent,
    TResult Function(
            String email, String name, String? phoneNumber, String message)?
        postHelpAndSupport,
    required TResult orElse(),
  }) {
    if (fetchTermsAndConditionsEvent != null) {
      return fetchTermsAndConditionsEvent(slug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTermsAndConditionsEvent value)
        fetchTermsAndConditionsEvent,
    required TResult Function(PostHelpAndSupport value) postHelpAndSupport,
  }) {
    return fetchTermsAndConditionsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    TResult? Function(PostHelpAndSupport value)? postHelpAndSupport,
  }) {
    return fetchTermsAndConditionsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    TResult Function(PostHelpAndSupport value)? postHelpAndSupport,
    required TResult orElse(),
  }) {
    if (fetchTermsAndConditionsEvent != null) {
      return fetchTermsAndConditionsEvent(this);
    }
    return orElse();
  }
}

abstract class FetchTermsAndConditionsEvent implements TermsAndCondtionsEvent {
  const factory FetchTermsAndConditionsEvent({required final String slug}) =
      _$FetchTermsAndConditionsEventImpl;

  String get slug;
  @JsonKey(ignore: true)
  _$$FetchTermsAndConditionsEventImplCopyWith<
          _$FetchTermsAndConditionsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostHelpAndSupportImplCopyWith<$Res> {
  factory _$$PostHelpAndSupportImplCopyWith(_$PostHelpAndSupportImpl value,
          $Res Function(_$PostHelpAndSupportImpl) then) =
      __$$PostHelpAndSupportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String name, String? phoneNumber, String message});
}

/// @nodoc
class __$$PostHelpAndSupportImplCopyWithImpl<$Res>
    extends _$TermsAndCondtionsEventCopyWithImpl<$Res, _$PostHelpAndSupportImpl>
    implements _$$PostHelpAndSupportImplCopyWith<$Res> {
  __$$PostHelpAndSupportImplCopyWithImpl(_$PostHelpAndSupportImpl _value,
      $Res Function(_$PostHelpAndSupportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? message = null,
  }) {
    return _then(_$PostHelpAndSupportImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostHelpAndSupportImpl implements PostHelpAndSupport {
  const _$PostHelpAndSupportImpl(
      {required this.email,
      required this.name,
      required this.phoneNumber,
      required this.message});

  @override
  final String email;
  @override
  final String name;
  @override
  final String? phoneNumber;
  @override
  final String message;

  @override
  String toString() {
    return 'TermsAndCondtionsEvent.postHelpAndSupport(email: $email, name: $name, phoneNumber: $phoneNumber, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostHelpAndSupportImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, name, phoneNumber, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostHelpAndSupportImplCopyWith<_$PostHelpAndSupportImpl> get copyWith =>
      __$$PostHelpAndSupportImplCopyWithImpl<_$PostHelpAndSupportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String slug) fetchTermsAndConditionsEvent,
    required TResult Function(
            String email, String name, String? phoneNumber, String message)
        postHelpAndSupport,
  }) {
    return postHelpAndSupport(email, name, phoneNumber, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String slug)? fetchTermsAndConditionsEvent,
    TResult? Function(
            String email, String name, String? phoneNumber, String message)?
        postHelpAndSupport,
  }) {
    return postHelpAndSupport?.call(email, name, phoneNumber, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String slug)? fetchTermsAndConditionsEvent,
    TResult Function(
            String email, String name, String? phoneNumber, String message)?
        postHelpAndSupport,
    required TResult orElse(),
  }) {
    if (postHelpAndSupport != null) {
      return postHelpAndSupport(email, name, phoneNumber, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTermsAndConditionsEvent value)
        fetchTermsAndConditionsEvent,
    required TResult Function(PostHelpAndSupport value) postHelpAndSupport,
  }) {
    return postHelpAndSupport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    TResult? Function(PostHelpAndSupport value)? postHelpAndSupport,
  }) {
    return postHelpAndSupport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    TResult Function(PostHelpAndSupport value)? postHelpAndSupport,
    required TResult orElse(),
  }) {
    if (postHelpAndSupport != null) {
      return postHelpAndSupport(this);
    }
    return orElse();
  }
}

abstract class PostHelpAndSupport implements TermsAndCondtionsEvent {
  const factory PostHelpAndSupport(
      {required final String email,
      required final String name,
      required final String? phoneNumber,
      required final String message}) = _$PostHelpAndSupportImpl;

  String get email;
  String get name;
  String? get phoneNumber;
  String get message;
  @JsonKey(ignore: true)
  _$$PostHelpAndSupportImplCopyWith<_$PostHelpAndSupportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TermsAndCondtionsState {
  TermsConditionsModel? get termsConditionsModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsAndCondtionsStateCopyWith<TermsAndCondtionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsAndCondtionsStateCopyWith<$Res> {
  factory $TermsAndCondtionsStateCopyWith(TermsAndCondtionsState value,
          $Res Function(TermsAndCondtionsState) then) =
      _$TermsAndCondtionsStateCopyWithImpl<$Res, TermsAndCondtionsState>;
  @useResult
  $Res call({TermsConditionsModel? termsConditionsModel, bool isLoading});

  $TermsConditionsModelCopyWith<$Res>? get termsConditionsModel;
}

/// @nodoc
class _$TermsAndCondtionsStateCopyWithImpl<$Res,
        $Val extends TermsAndCondtionsState>
    implements $TermsAndCondtionsStateCopyWith<$Res> {
  _$TermsAndCondtionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsConditionsModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      termsConditionsModel: freezed == termsConditionsModel
          ? _value.termsConditionsModel
          : termsConditionsModel // ignore: cast_nullable_to_non_nullable
              as TermsConditionsModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TermsConditionsModelCopyWith<$Res>? get termsConditionsModel {
    if (_value.termsConditionsModel == null) {
      return null;
    }

    return $TermsConditionsModelCopyWith<$Res>(_value.termsConditionsModel!,
        (value) {
      return _then(_value.copyWith(termsConditionsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermsAndCondtionsStateImplCopyWith<$Res>
    implements $TermsAndCondtionsStateCopyWith<$Res> {
  factory _$$TermsAndCondtionsStateImplCopyWith(
          _$TermsAndCondtionsStateImpl value,
          $Res Function(_$TermsAndCondtionsStateImpl) then) =
      __$$TermsAndCondtionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TermsConditionsModel? termsConditionsModel, bool isLoading});

  @override
  $TermsConditionsModelCopyWith<$Res>? get termsConditionsModel;
}

/// @nodoc
class __$$TermsAndCondtionsStateImplCopyWithImpl<$Res>
    extends _$TermsAndCondtionsStateCopyWithImpl<$Res,
        _$TermsAndCondtionsStateImpl>
    implements _$$TermsAndCondtionsStateImplCopyWith<$Res> {
  __$$TermsAndCondtionsStateImplCopyWithImpl(
      _$TermsAndCondtionsStateImpl _value,
      $Res Function(_$TermsAndCondtionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsConditionsModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$TermsAndCondtionsStateImpl(
      termsConditionsModel: freezed == termsConditionsModel
          ? _value.termsConditionsModel
          : termsConditionsModel // ignore: cast_nullable_to_non_nullable
              as TermsConditionsModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TermsAndCondtionsStateImpl implements _TermsAndCondtionsState {
  const _$TermsAndCondtionsStateImpl(
      {required this.termsConditionsModel, required this.isLoading});

  @override
  final TermsConditionsModel? termsConditionsModel;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TermsAndCondtionsState(termsConditionsModel: $termsConditionsModel, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsAndCondtionsStateImpl &&
            (identical(other.termsConditionsModel, termsConditionsModel) ||
                other.termsConditionsModel == termsConditionsModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termsConditionsModel, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsAndCondtionsStateImplCopyWith<_$TermsAndCondtionsStateImpl>
      get copyWith => __$$TermsAndCondtionsStateImplCopyWithImpl<
          _$TermsAndCondtionsStateImpl>(this, _$identity);
}

abstract class _TermsAndCondtionsState implements TermsAndCondtionsState {
  const factory _TermsAndCondtionsState(
      {required final TermsConditionsModel? termsConditionsModel,
      required final bool isLoading}) = _$TermsAndCondtionsStateImpl;

  @override
  TermsConditionsModel? get termsConditionsModel;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TermsAndCondtionsStateImplCopyWith<_$TermsAndCondtionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
