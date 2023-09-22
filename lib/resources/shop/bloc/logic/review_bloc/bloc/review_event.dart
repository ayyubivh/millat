part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.fetchRatingEvent({
    required String id,
    required BuildContext context,
  }) = FetchRatingEvent;
}
