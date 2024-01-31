part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.fetchRatingEvent({
    required String id,
    required BuildContext context,
  }) = FetchRatingEvent;
  const factory ReviewEvent.fetchReviewComments({
    required String id,
    required BuildContext context,
  }) = FetchReviewComments;
  const factory ReviewEvent.addReview({
    required BuildContext context,
    required String productId,
    required String name,
    required double rating,
    required String comment,
  }) = AddReview;
  const factory ReviewEvent.updateReview({
    required BuildContext context,
    required String productId,
    required double rating,
    required String comment,
  }) = UpdateReview;
  const factory ReviewEvent.expandReviewList() = ExpandReviewList;
  const factory ReviewEvent.saveReviewValue({
    required double value,
  }) = SaveReviewValue;
}
