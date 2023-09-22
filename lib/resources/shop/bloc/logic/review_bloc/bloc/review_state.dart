part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    required ReviewModel? reviewModel,
    required bool isLoading,
  }) = _ReviewState;
  factory ReviewState.initial() => const ReviewState(
        reviewModel: null,
        isLoading: false,
      );
}
