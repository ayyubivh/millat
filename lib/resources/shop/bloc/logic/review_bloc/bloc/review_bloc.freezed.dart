// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewEvent {
  String get id => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewEventCopyWith<ReviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
          ReviewEvent value, $Res Function(ReviewEvent) then) =
      _$ReviewEventCopyWithImpl<$Res, ReviewEvent>;
  @useResult
  $Res call({String id, BuildContext context});
}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res, $Val extends ReviewEvent>
    implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchRatingEventCopyWith<$Res>
    implements $ReviewEventCopyWith<$Res> {
  factory _$$FetchRatingEventCopyWith(
          _$FetchRatingEvent value, $Res Function(_$FetchRatingEvent) then) =
      __$$FetchRatingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, BuildContext context});
}

/// @nodoc
class __$$FetchRatingEventCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$FetchRatingEvent>
    implements _$$FetchRatingEventCopyWith<$Res> {
  __$$FetchRatingEventCopyWithImpl(
      _$FetchRatingEvent _value, $Res Function(_$FetchRatingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$FetchRatingEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchRatingEvent implements FetchRatingEvent {
  const _$FetchRatingEvent({required this.id, required this.context});

  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ReviewEvent.fetchRatingEvent(id: $id, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRatingEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRatingEventCopyWith<_$FetchRatingEvent> get copyWith =>
      __$$FetchRatingEventCopyWithImpl<_$FetchRatingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
  }) {
    return fetchRatingEvent(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
  }) {
    return fetchRatingEvent?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    required TResult orElse(),
  }) {
    if (fetchRatingEvent != null) {
      return fetchRatingEvent(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
  }) {
    return fetchRatingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
  }) {
    return fetchRatingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    required TResult orElse(),
  }) {
    if (fetchRatingEvent != null) {
      return fetchRatingEvent(this);
    }
    return orElse();
  }
}

abstract class FetchRatingEvent implements ReviewEvent {
  const factory FetchRatingEvent(
      {required final String id,
      required final BuildContext context}) = _$FetchRatingEvent;

  @override
  String get id;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$FetchRatingEventCopyWith<_$FetchRatingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewState {
  ReviewModel? get reviewModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewStateCopyWith<ReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
          ReviewState value, $Res Function(ReviewState) then) =
      _$ReviewStateCopyWithImpl<$Res, ReviewState>;
  @useResult
  $Res call({ReviewModel? reviewModel, bool isLoading});

  $ReviewModelCopyWith<$Res>? get reviewModel;
}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res, $Val extends ReviewState>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      reviewModel: freezed == reviewModel
          ? _value.reviewModel
          : reviewModel // ignore: cast_nullable_to_non_nullable
              as ReviewModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewModelCopyWith<$Res>? get reviewModel {
    if (_value.reviewModel == null) {
      return null;
    }

    return $ReviewModelCopyWith<$Res>(_value.reviewModel!, (value) {
      return _then(_value.copyWith(reviewModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewStateCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory _$$_ReviewStateCopyWith(
          _$_ReviewState value, $Res Function(_$_ReviewState) then) =
      __$$_ReviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReviewModel? reviewModel, bool isLoading});

  @override
  $ReviewModelCopyWith<$Res>? get reviewModel;
}

/// @nodoc
class __$$_ReviewStateCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$_ReviewState>
    implements _$$_ReviewStateCopyWith<$Res> {
  __$$_ReviewStateCopyWithImpl(
      _$_ReviewState _value, $Res Function(_$_ReviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_ReviewState(
      reviewModel: freezed == reviewModel
          ? _value.reviewModel
          : reviewModel // ignore: cast_nullable_to_non_nullable
              as ReviewModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReviewState implements _ReviewState {
  const _$_ReviewState({required this.reviewModel, required this.isLoading});

  @override
  final ReviewModel? reviewModel;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ReviewState(reviewModel: $reviewModel, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewState &&
            (identical(other.reviewModel, reviewModel) ||
                other.reviewModel == reviewModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewModel, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewStateCopyWith<_$_ReviewState> get copyWith =>
      __$$_ReviewStateCopyWithImpl<_$_ReviewState>(this, _$identity);
}

abstract class _ReviewState implements ReviewState {
  const factory _ReviewState(
      {required final ReviewModel? reviewModel,
      required final bool isLoading}) = _$_ReviewState;

  @override
  ReviewModel? get reviewModel;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewStateCopyWith<_$_ReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
