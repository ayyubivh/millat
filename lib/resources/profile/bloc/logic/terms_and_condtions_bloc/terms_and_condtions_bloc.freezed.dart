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
  String get slug => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String slug) fetchTermsAndConditionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String slug)? fetchTermsAndConditionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String slug)? fetchTermsAndConditionsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTermsAndConditionsEvent value)
        fetchTermsAndConditionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsAndCondtionsEventCopyWith<TermsAndCondtionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsAndCondtionsEventCopyWith<$Res> {
  factory $TermsAndCondtionsEventCopyWith(TermsAndCondtionsEvent value,
          $Res Function(TermsAndCondtionsEvent) then) =
      _$TermsAndCondtionsEventCopyWithImpl<$Res, TermsAndCondtionsEvent>;
  @useResult
  $Res call({String slug});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchTermsAndConditionsEventCopyWith<$Res>
    implements $TermsAndCondtionsEventCopyWith<$Res> {
  factory _$$FetchTermsAndConditionsEventCopyWith(
          _$FetchTermsAndConditionsEvent value,
          $Res Function(_$FetchTermsAndConditionsEvent) then) =
      __$$FetchTermsAndConditionsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slug});
}

/// @nodoc
class __$$FetchTermsAndConditionsEventCopyWithImpl<$Res>
    extends _$TermsAndCondtionsEventCopyWithImpl<$Res,
        _$FetchTermsAndConditionsEvent>
    implements _$$FetchTermsAndConditionsEventCopyWith<$Res> {
  __$$FetchTermsAndConditionsEventCopyWithImpl(
      _$FetchTermsAndConditionsEvent _value,
      $Res Function(_$FetchTermsAndConditionsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
  }) {
    return _then(_$FetchTermsAndConditionsEvent(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTermsAndConditionsEvent implements FetchTermsAndConditionsEvent {
  const _$FetchTermsAndConditionsEvent({required this.slug});

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
            other is _$FetchTermsAndConditionsEvent &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTermsAndConditionsEventCopyWith<_$FetchTermsAndConditionsEvent>
      get copyWith => __$$FetchTermsAndConditionsEventCopyWithImpl<
          _$FetchTermsAndConditionsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String slug) fetchTermsAndConditionsEvent,
  }) {
    return fetchTermsAndConditionsEvent(slug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String slug)? fetchTermsAndConditionsEvent,
  }) {
    return fetchTermsAndConditionsEvent?.call(slug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String slug)? fetchTermsAndConditionsEvent,
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
  }) {
    return fetchTermsAndConditionsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
  }) {
    return fetchTermsAndConditionsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTermsAndConditionsEvent value)?
        fetchTermsAndConditionsEvent,
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
      _$FetchTermsAndConditionsEvent;

  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$FetchTermsAndConditionsEventCopyWith<_$FetchTermsAndConditionsEvent>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_TermsAndCondtionsStateCopyWith<$Res>
    implements $TermsAndCondtionsStateCopyWith<$Res> {
  factory _$$_TermsAndCondtionsStateCopyWith(_$_TermsAndCondtionsState value,
          $Res Function(_$_TermsAndCondtionsState) then) =
      __$$_TermsAndCondtionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TermsConditionsModel? termsConditionsModel, bool isLoading});

  @override
  $TermsConditionsModelCopyWith<$Res>? get termsConditionsModel;
}

/// @nodoc
class __$$_TermsAndCondtionsStateCopyWithImpl<$Res>
    extends _$TermsAndCondtionsStateCopyWithImpl<$Res,
        _$_TermsAndCondtionsState>
    implements _$$_TermsAndCondtionsStateCopyWith<$Res> {
  __$$_TermsAndCondtionsStateCopyWithImpl(_$_TermsAndCondtionsState _value,
      $Res Function(_$_TermsAndCondtionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsConditionsModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_TermsAndCondtionsState(
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

class _$_TermsAndCondtionsState implements _TermsAndCondtionsState {
  const _$_TermsAndCondtionsState(
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
            other is _$_TermsAndCondtionsState &&
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
  _$$_TermsAndCondtionsStateCopyWith<_$_TermsAndCondtionsState> get copyWith =>
      __$$_TermsAndCondtionsStateCopyWithImpl<_$_TermsAndCondtionsState>(
          this, _$identity);
}

abstract class _TermsAndCondtionsState implements TermsAndCondtionsState {
  const factory _TermsAndCondtionsState(
      {required final TermsConditionsModel? termsConditionsModel,
      required final bool isLoading}) = _$_TermsAndCondtionsState;

  @override
  TermsConditionsModel? get termsConditionsModel;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_TermsAndCondtionsStateCopyWith<_$_TermsAndCondtionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
