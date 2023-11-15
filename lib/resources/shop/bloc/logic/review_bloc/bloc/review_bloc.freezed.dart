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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(String id, BuildContext context)
        fetchReviewComments,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReview,
    required TResult Function() expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(String id, BuildContext context)? fetchReviewComments,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult? Function()? expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(String id, BuildContext context)? fetchReviewComments,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(FetchReviewComments value) fetchReviewComments,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReview value) updateReview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(FetchReviewComments value)? fetchReviewComments,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReview value)? updateReview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(FetchReviewComments value)? fetchReviewComments,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReview value)? updateReview,
    TResult Function(ExpandReviewList value)? expandReviewList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
          ReviewEvent value, $Res Function(ReviewEvent) then) =
      _$ReviewEventCopyWithImpl<$Res, ReviewEvent>;
}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res, $Val extends ReviewEvent>
    implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRatingEventImplCopyWith<$Res> {
  factory _$$FetchRatingEventImplCopyWith(_$FetchRatingEventImpl value,
          $Res Function(_$FetchRatingEventImpl) then) =
      __$$FetchRatingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, BuildContext context});
}

/// @nodoc
class __$$FetchRatingEventImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$FetchRatingEventImpl>
    implements _$$FetchRatingEventImplCopyWith<$Res> {
  __$$FetchRatingEventImplCopyWithImpl(_$FetchRatingEventImpl _value,
      $Res Function(_$FetchRatingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$FetchRatingEventImpl(
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

class _$FetchRatingEventImpl
    with DiagnosticableTreeMixin
    implements FetchRatingEvent {
  const _$FetchRatingEventImpl({required this.id, required this.context});

  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewEvent.fetchRatingEvent(id: $id, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewEvent.fetchRatingEvent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRatingEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRatingEventImplCopyWith<_$FetchRatingEventImpl> get copyWith =>
      __$$FetchRatingEventImplCopyWithImpl<_$FetchRatingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(String id, BuildContext context)
        fetchReviewComments,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReview,
    required TResult Function() expandReviewList,
  }) {
    return fetchRatingEvent(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(String id, BuildContext context)? fetchReviewComments,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult? Function()? expandReviewList,
  }) {
    return fetchRatingEvent?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(String id, BuildContext context)? fetchReviewComments,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult Function()? expandReviewList,
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
    required TResult Function(FetchReviewComments value) fetchReviewComments,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReview value) updateReview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return fetchRatingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(FetchReviewComments value)? fetchReviewComments,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReview value)? updateReview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return fetchRatingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(FetchReviewComments value)? fetchReviewComments,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReview value)? updateReview,
    TResult Function(ExpandReviewList value)? expandReviewList,
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
      required final BuildContext context}) = _$FetchRatingEventImpl;

  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchRatingEventImplCopyWith<_$FetchRatingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchReviewCommentsImplCopyWith<$Res> {
  factory _$$FetchReviewCommentsImplCopyWith(_$FetchReviewCommentsImpl value,
          $Res Function(_$FetchReviewCommentsImpl) then) =
      __$$FetchReviewCommentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, BuildContext context});
}

/// @nodoc
class __$$FetchReviewCommentsImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$FetchReviewCommentsImpl>
    implements _$$FetchReviewCommentsImplCopyWith<$Res> {
  __$$FetchReviewCommentsImplCopyWithImpl(_$FetchReviewCommentsImpl _value,
      $Res Function(_$FetchReviewCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$FetchReviewCommentsImpl(
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

class _$FetchReviewCommentsImpl
    with DiagnosticableTreeMixin
    implements FetchReviewComments {
  const _$FetchReviewCommentsImpl({required this.id, required this.context});

  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewEvent.fetchReviewComments(id: $id, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewEvent.fetchReviewComments'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReviewCommentsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReviewCommentsImplCopyWith<_$FetchReviewCommentsImpl> get copyWith =>
      __$$FetchReviewCommentsImplCopyWithImpl<_$FetchReviewCommentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(String id, BuildContext context)
        fetchReviewComments,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReview,
    required TResult Function() expandReviewList,
  }) {
    return fetchReviewComments(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(String id, BuildContext context)? fetchReviewComments,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult? Function()? expandReviewList,
  }) {
    return fetchReviewComments?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(String id, BuildContext context)? fetchReviewComments,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) {
    if (fetchReviewComments != null) {
      return fetchReviewComments(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(FetchReviewComments value) fetchReviewComments,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReview value) updateReview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return fetchReviewComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(FetchReviewComments value)? fetchReviewComments,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReview value)? updateReview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return fetchReviewComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(FetchReviewComments value)? fetchReviewComments,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReview value)? updateReview,
    TResult Function(ExpandReviewList value)? expandReviewList,
    required TResult orElse(),
  }) {
    if (fetchReviewComments != null) {
      return fetchReviewComments(this);
    }
    return orElse();
  }
}

abstract class FetchReviewComments implements ReviewEvent {
  const factory FetchReviewComments(
      {required final String id,
      required final BuildContext context}) = _$FetchReviewCommentsImpl;

  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchReviewCommentsImplCopyWith<_$FetchReviewCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReviewImplCopyWith<$Res> {
  factory _$$AddReviewImplCopyWith(
          _$AddReviewImpl value, $Res Function(_$AddReviewImpl) then) =
      __$$AddReviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String productId,
      String name,
      double rating,
      String comment});
}

/// @nodoc
class __$$AddReviewImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$AddReviewImpl>
    implements _$$AddReviewImplCopyWith<$Res> {
  __$$AddReviewImplCopyWithImpl(
      _$AddReviewImpl _value, $Res Function(_$AddReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? name = null,
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$AddReviewImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddReviewImpl with DiagnosticableTreeMixin implements AddReview {
  const _$AddReviewImpl(
      {required this.context,
      required this.productId,
      required this.name,
      required this.rating,
      required this.comment});

  @override
  final BuildContext context;
  @override
  final String productId;
  @override
  final String name;
  @override
  final double rating;
  @override
  final String comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewEvent.addReview(context: $context, productId: $productId, name: $name, rating: $rating, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewEvent.addReview'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReviewImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, productId, name, rating, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewImplCopyWith<_$AddReviewImpl> get copyWith =>
      __$$AddReviewImplCopyWithImpl<_$AddReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(String id, BuildContext context)
        fetchReviewComments,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReview,
    required TResult Function() expandReviewList,
  }) {
    return addReview(context, productId, name, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(String id, BuildContext context)? fetchReviewComments,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult? Function()? expandReviewList,
  }) {
    return addReview?.call(context, productId, name, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(String id, BuildContext context)? fetchReviewComments,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(context, productId, name, rating, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(FetchReviewComments value) fetchReviewComments,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReview value) updateReview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return addReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(FetchReviewComments value)? fetchReviewComments,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReview value)? updateReview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return addReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(FetchReviewComments value)? fetchReviewComments,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReview value)? updateReview,
    TResult Function(ExpandReviewList value)? expandReviewList,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(this);
    }
    return orElse();
  }
}

abstract class AddReview implements ReviewEvent {
  const factory AddReview(
      {required final BuildContext context,
      required final String productId,
      required final String name,
      required final double rating,
      required final String comment}) = _$AddReviewImpl;

  BuildContext get context;
  String get productId;
  String get name;
  double get rating;
  String get comment;
  @JsonKey(ignore: true)
  _$$AddReviewImplCopyWith<_$AddReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReviewImplCopyWith<$Res> {
  factory _$$UpdateReviewImplCopyWith(
          _$UpdateReviewImpl value, $Res Function(_$UpdateReviewImpl) then) =
      __$$UpdateReviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context, String productId, double rating, String comment});
}

/// @nodoc
class __$$UpdateReviewImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$UpdateReviewImpl>
    implements _$$UpdateReviewImplCopyWith<$Res> {
  __$$UpdateReviewImplCopyWithImpl(
      _$UpdateReviewImpl _value, $Res Function(_$UpdateReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$UpdateReviewImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateReviewImpl with DiagnosticableTreeMixin implements UpdateReview {
  const _$UpdateReviewImpl(
      {required this.context,
      required this.productId,
      required this.rating,
      required this.comment});

  @override
  final BuildContext context;
  @override
  final String productId;
  @override
  final double rating;
  @override
  final String comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewEvent.updateReview(context: $context, productId: $productId, rating: $rating, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewEvent.updateReview'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReviewImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, productId, rating, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReviewImplCopyWith<_$UpdateReviewImpl> get copyWith =>
      __$$UpdateReviewImplCopyWithImpl<_$UpdateReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(String id, BuildContext context)
        fetchReviewComments,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReview,
    required TResult Function() expandReviewList,
  }) {
    return updateReview(context, productId, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(String id, BuildContext context)? fetchReviewComments,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult? Function()? expandReviewList,
  }) {
    return updateReview?.call(context, productId, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(String id, BuildContext context)? fetchReviewComments,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) {
    if (updateReview != null) {
      return updateReview(context, productId, rating, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(FetchReviewComments value) fetchReviewComments,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReview value) updateReview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return updateReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(FetchReviewComments value)? fetchReviewComments,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReview value)? updateReview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return updateReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(FetchReviewComments value)? fetchReviewComments,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReview value)? updateReview,
    TResult Function(ExpandReviewList value)? expandReviewList,
    required TResult orElse(),
  }) {
    if (updateReview != null) {
      return updateReview(this);
    }
    return orElse();
  }
}

abstract class UpdateReview implements ReviewEvent {
  const factory UpdateReview(
      {required final BuildContext context,
      required final String productId,
      required final double rating,
      required final String comment}) = _$UpdateReviewImpl;

  BuildContext get context;
  String get productId;
  double get rating;
  String get comment;
  @JsonKey(ignore: true)
  _$$UpdateReviewImplCopyWith<_$UpdateReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpandReviewListImplCopyWith<$Res> {
  factory _$$ExpandReviewListImplCopyWith(_$ExpandReviewListImpl value,
          $Res Function(_$ExpandReviewListImpl) then) =
      __$$ExpandReviewListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpandReviewListImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$ExpandReviewListImpl>
    implements _$$ExpandReviewListImplCopyWith<$Res> {
  __$$ExpandReviewListImplCopyWithImpl(_$ExpandReviewListImpl _value,
      $Res Function(_$ExpandReviewListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpandReviewListImpl
    with DiagnosticableTreeMixin
    implements ExpandReviewList {
  const _$ExpandReviewListImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewEvent.expandReviewList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ReviewEvent.expandReviewList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpandReviewListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(String id, BuildContext context)
        fetchReviewComments,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReview,
    required TResult Function() expandReviewList,
  }) {
    return expandReviewList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(String id, BuildContext context)? fetchReviewComments,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult? Function()? expandReviewList,
  }) {
    return expandReviewList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(String id, BuildContext context)? fetchReviewComments,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) {
    if (expandReviewList != null) {
      return expandReviewList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(FetchReviewComments value) fetchReviewComments,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReview value) updateReview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return expandReviewList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(FetchReviewComments value)? fetchReviewComments,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReview value)? updateReview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return expandReviewList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(FetchReviewComments value)? fetchReviewComments,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReview value)? updateReview,
    TResult Function(ExpandReviewList value)? expandReviewList,
    required TResult orElse(),
  }) {
    if (expandReviewList != null) {
      return expandReviewList(this);
    }
    return orElse();
  }
}

abstract class ExpandReviewList implements ReviewEvent {
  const factory ExpandReviewList() = _$ExpandReviewListImpl;
}

/// @nodoc
mixin _$ReviewState {
  ReviewModel? get reviewModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isExpandedReview => throw _privateConstructorUsedError;
  ReviewCommentsModel? get reviewCommentsModel =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {ReviewModel? reviewModel,
      bool isLoading,
      bool isExpandedReview,
      ReviewCommentsModel? reviewCommentsModel});

  $ReviewModelCopyWith<$Res>? get reviewModel;
  $ReviewCommentsModelCopyWith<$Res>? get reviewCommentsModel;
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
    Object? isExpandedReview = null,
    Object? reviewCommentsModel = freezed,
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
      isExpandedReview: null == isExpandedReview
          ? _value.isExpandedReview
          : isExpandedReview // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCommentsModel: freezed == reviewCommentsModel
          ? _value.reviewCommentsModel
          : reviewCommentsModel // ignore: cast_nullable_to_non_nullable
              as ReviewCommentsModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $ReviewCommentsModelCopyWith<$Res>? get reviewCommentsModel {
    if (_value.reviewCommentsModel == null) {
      return null;
    }

    return $ReviewCommentsModelCopyWith<$Res>(_value.reviewCommentsModel!,
        (value) {
      return _then(_value.copyWith(reviewCommentsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewStateImplCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory _$$ReviewStateImplCopyWith(
          _$ReviewStateImpl value, $Res Function(_$ReviewStateImpl) then) =
      __$$ReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReviewModel? reviewModel,
      bool isLoading,
      bool isExpandedReview,
      ReviewCommentsModel? reviewCommentsModel});

  @override
  $ReviewModelCopyWith<$Res>? get reviewModel;
  @override
  $ReviewCommentsModelCopyWith<$Res>? get reviewCommentsModel;
}

/// @nodoc
class __$$ReviewStateImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$ReviewStateImpl>
    implements _$$ReviewStateImplCopyWith<$Res> {
  __$$ReviewStateImplCopyWithImpl(
      _$ReviewStateImpl _value, $Res Function(_$ReviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewModel = freezed,
    Object? isLoading = null,
    Object? isExpandedReview = null,
    Object? reviewCommentsModel = freezed,
  }) {
    return _then(_$ReviewStateImpl(
      reviewModel: freezed == reviewModel
          ? _value.reviewModel
          : reviewModel // ignore: cast_nullable_to_non_nullable
              as ReviewModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpandedReview: null == isExpandedReview
          ? _value.isExpandedReview
          : isExpandedReview // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCommentsModel: freezed == reviewCommentsModel
          ? _value.reviewCommentsModel
          : reviewCommentsModel // ignore: cast_nullable_to_non_nullable
              as ReviewCommentsModel?,
    ));
  }
}

/// @nodoc

class _$ReviewStateImpl with DiagnosticableTreeMixin implements _ReviewState {
  const _$ReviewStateImpl(
      {required this.reviewModel,
      required this.isLoading,
      required this.isExpandedReview,
      required this.reviewCommentsModel});

  @override
  final ReviewModel? reviewModel;
  @override
  final bool isLoading;
  @override
  final bool isExpandedReview;
  @override
  final ReviewCommentsModel? reviewCommentsModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewState(reviewModel: $reviewModel, isLoading: $isLoading, isExpandedReview: $isExpandedReview, reviewCommentsModel: $reviewCommentsModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewState'))
      ..add(DiagnosticsProperty('reviewModel', reviewModel))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isExpandedReview', isExpandedReview))
      ..add(DiagnosticsProperty('reviewCommentsModel', reviewCommentsModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewStateImpl &&
            (identical(other.reviewModel, reviewModel) ||
                other.reviewModel == reviewModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isExpandedReview, isExpandedReview) ||
                other.isExpandedReview == isExpandedReview) &&
            (identical(other.reviewCommentsModel, reviewCommentsModel) ||
                other.reviewCommentsModel == reviewCommentsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewModel, isLoading,
      isExpandedReview, reviewCommentsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewStateImplCopyWith<_$ReviewStateImpl> get copyWith =>
      __$$ReviewStateImplCopyWithImpl<_$ReviewStateImpl>(this, _$identity);
}

abstract class _ReviewState implements ReviewState {
  const factory _ReviewState(
          {required final ReviewModel? reviewModel,
          required final bool isLoading,
          required final bool isExpandedReview,
          required final ReviewCommentsModel? reviewCommentsModel}) =
      _$ReviewStateImpl;

  @override
  ReviewModel? get reviewModel;
  @override
  bool get isLoading;
  @override
  bool get isExpandedReview;
  @override
  ReviewCommentsModel? get reviewCommentsModel;
  @override
  @JsonKey(ignore: true)
  _$$ReviewStateImplCopyWith<_$ReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
