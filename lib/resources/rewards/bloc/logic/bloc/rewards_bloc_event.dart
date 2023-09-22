part of 'rewards_bloc_bloc.dart';

@freezed
class RewardsEvent with _$RewardsEvent {
  const factory RewardsEvent.fetchRewards({required BuildContext context}) =
      _FetchRewards;
}
