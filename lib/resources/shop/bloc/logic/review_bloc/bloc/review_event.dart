part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.fetchRatingEvent({
    required String id,
    required BuildContext context,
  }) = FetchRatingEvent;
  const factory ReviewEvent.addReview({
    required BuildContext context,
    required String productId,
    required String name,
    required double rating,
    required String comment,
  }) = AddReview;
  const factory ReviewEvent.updateReiview({
    required BuildContext context,
    required String productId,
    required double rating,
    required String comment,
  }) = UpdateReiview;
  const factory ReviewEvent.expandReviewList() = ExpandReviewList;
}
