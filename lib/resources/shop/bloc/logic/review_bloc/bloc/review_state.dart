part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    required ReviewModel? reviewModel,
    required bool isLoading,
    required bool isExpandedReview,
    required double reviewValue,
    required ReviewCommentsModel? reviewCommentsModel,
  }) = _ReviewState;
  factory ReviewState.initial() => const ReviewState(
      reviewModel: null,
      isLoading: false,
      isExpandedReview: false,
      reviewValue: 0.0,
      reviewCommentsModel: null);
}
