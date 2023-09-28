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
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReiview,
    required TResult Function() expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult? Function()? expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReiview value) updateReiview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReiview value)? updateReiview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReiview value)? updateReiview,
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
abstract class _$$FetchRatingEventCopyWith<$Res> {
  factory _$$FetchRatingEventCopyWith(
          _$FetchRatingEvent value, $Res Function(_$FetchRatingEvent) then) =
      __$$FetchRatingEventCopyWithImpl<$Res>;
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
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReiview,
    required TResult Function() expandReviewList,
  }) {
    return fetchRatingEvent(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult? Function()? expandReviewList,
  }) {
    return fetchRatingEvent?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
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
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReiview value) updateReiview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return fetchRatingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReiview value)? updateReiview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return fetchRatingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReiview value)? updateReiview,
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
      required final BuildContext context}) = _$FetchRatingEvent;

  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchRatingEventCopyWith<_$FetchRatingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReviewCopyWith<$Res> {
  factory _$$AddReviewCopyWith(
          _$AddReview value, $Res Function(_$AddReview) then) =
      __$$AddReviewCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String productId,
      String name,
      double rating,
      String comment});
}

/// @nodoc
class __$$AddReviewCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$AddReview>
    implements _$$AddReviewCopyWith<$Res> {
  __$$AddReviewCopyWithImpl(
      _$AddReview _value, $Res Function(_$AddReview) _then)
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
    return _then(_$AddReview(
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

class _$AddReview implements AddReview {
  const _$AddReview(
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
  String toString() {
    return 'ReviewEvent.addReview(context: $context, productId: $productId, name: $name, rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReview &&
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
  _$$AddReviewCopyWith<_$AddReview> get copyWith =>
      __$$AddReviewCopyWithImpl<_$AddReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReiview,
    required TResult Function() expandReviewList,
  }) {
    return addReview(context, productId, name, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult? Function()? expandReviewList,
  }) {
    return addReview?.call(context, productId, name, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
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
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReiview value) updateReiview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return addReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReiview value)? updateReiview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return addReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReiview value)? updateReiview,
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
      required final String comment}) = _$AddReview;

  BuildContext get context;
  String get productId;
  String get name;
  double get rating;
  String get comment;
  @JsonKey(ignore: true)
  _$$AddReviewCopyWith<_$AddReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReiviewCopyWith<$Res> {
  factory _$$UpdateReiviewCopyWith(
          _$UpdateReiview value, $Res Function(_$UpdateReiview) then) =
      __$$UpdateReiviewCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context, String productId, double rating, String comment});
}

/// @nodoc
class __$$UpdateReiviewCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$UpdateReiview>
    implements _$$UpdateReiviewCopyWith<$Res> {
  __$$UpdateReiviewCopyWithImpl(
      _$UpdateReiview _value, $Res Function(_$UpdateReiview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$UpdateReiview(
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

class _$UpdateReiview implements UpdateReiview {
  const _$UpdateReiview(
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
  String toString() {
    return 'ReviewEvent.updateReiview(context: $context, productId: $productId, rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReiview &&
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
  _$$UpdateReiviewCopyWith<_$UpdateReiview> get copyWith =>
      __$$UpdateReiviewCopyWithImpl<_$UpdateReiview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReiview,
    required TResult Function() expandReviewList,
  }) {
    return updateReiview(context, productId, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult? Function()? expandReviewList,
  }) {
    return updateReiview?.call(context, productId, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult Function()? expandReviewList,
    required TResult orElse(),
  }) {
    if (updateReiview != null) {
      return updateReiview(context, productId, rating, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRatingEvent value) fetchRatingEvent,
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReiview value) updateReiview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return updateReiview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReiview value)? updateReiview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return updateReiview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReiview value)? updateReiview,
    TResult Function(ExpandReviewList value)? expandReviewList,
    required TResult orElse(),
  }) {
    if (updateReiview != null) {
      return updateReiview(this);
    }
    return orElse();
  }
}

abstract class UpdateReiview implements ReviewEvent {
  const factory UpdateReiview(
      {required final BuildContext context,
      required final String productId,
      required final double rating,
      required final String comment}) = _$UpdateReiview;

  BuildContext get context;
  String get productId;
  double get rating;
  String get comment;
  @JsonKey(ignore: true)
  _$$UpdateReiviewCopyWith<_$UpdateReiview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpandReviewListCopyWith<$Res> {
  factory _$$ExpandReviewListCopyWith(
          _$ExpandReviewList value, $Res Function(_$ExpandReviewList) then) =
      __$$ExpandReviewListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpandReviewListCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$ExpandReviewList>
    implements _$$ExpandReviewListCopyWith<$Res> {
  __$$ExpandReviewListCopyWithImpl(
      _$ExpandReviewList _value, $Res Function(_$ExpandReviewList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpandReviewList implements ExpandReviewList {
  const _$ExpandReviewList();

  @override
  String toString() {
    return 'ReviewEvent.expandReviewList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpandReviewList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, BuildContext context) fetchRatingEvent,
    required TResult Function(BuildContext context, String productId,
            String name, double rating, String comment)
        addReview,
    required TResult Function(BuildContext context, String productId,
            double rating, String comment)
        updateReiview,
    required TResult Function() expandReviewList,
  }) {
    return expandReviewList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, BuildContext context)? fetchRatingEvent,
    TResult? Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult? Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
    TResult? Function()? expandReviewList,
  }) {
    return expandReviewList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, BuildContext context)? fetchRatingEvent,
    TResult Function(BuildContext context, String productId, String name,
            double rating, String comment)?
        addReview,
    TResult Function(BuildContext context, String productId, double rating,
            String comment)?
        updateReiview,
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
    required TResult Function(AddReview value) addReview,
    required TResult Function(UpdateReiview value) updateReiview,
    required TResult Function(ExpandReviewList value) expandReviewList,
  }) {
    return expandReviewList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult? Function(AddReview value)? addReview,
    TResult? Function(UpdateReiview value)? updateReiview,
    TResult? Function(ExpandReviewList value)? expandReviewList,
  }) {
    return expandReviewList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRatingEvent value)? fetchRatingEvent,
    TResult Function(AddReview value)? addReview,
    TResult Function(UpdateReiview value)? updateReiview,
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
  const factory ExpandReviewList() = _$ExpandReviewList;
}

/// @nodoc
mixin _$ReviewState {
  ReviewModel? get reviewModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isExpandedReview => throw _privateConstructorUsedError;

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
  $Res call({ReviewModel? reviewModel, bool isLoading, bool isExpandedReview});

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
    Object? isExpandedReview = null,
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
  $Res call({ReviewModel? reviewModel, bool isLoading, bool isExpandedReview});

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
    Object? isExpandedReview = null,
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
      isExpandedReview: null == isExpandedReview
          ? _value.isExpandedReview
          : isExpandedReview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReviewState implements _ReviewState {
  const _$_ReviewState(
      {required this.reviewModel,
      required this.isLoading,
      required this.isExpandedReview});

  @override
  final ReviewModel? reviewModel;
  @override
  final bool isLoading;
  @override
  final bool isExpandedReview;

  @override
  String toString() {
    return 'ReviewState(reviewModel: $reviewModel, isLoading: $isLoading, isExpandedReview: $isExpandedReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewState &&
            (identical(other.reviewModel, reviewModel) ||
                other.reviewModel == reviewModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isExpandedReview, isExpandedReview) ||
                other.isExpandedReview == isExpandedReview));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, reviewModel, isLoading, isExpandedReview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewStateCopyWith<_$_ReviewState> get copyWith =>
      __$$_ReviewStateCopyWithImpl<_$_ReviewState>(this, _$identity);
}

abstract class _ReviewState implements ReviewState {
  const factory _ReviewState(
      {required final ReviewModel? reviewModel,
      required final bool isLoading,
      required final bool isExpandedReview}) = _$_ReviewState;

  @override
  ReviewModel? get reviewModel;
  @override
  bool get isLoading;
  @override
  bool get isExpandedReview;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewStateCopyWith<_$_ReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
