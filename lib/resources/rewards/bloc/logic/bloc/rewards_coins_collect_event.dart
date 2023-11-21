part of 'rewards_coins_collect_bloc.dart';

@freezed
class RewardsCoinsCollectEvent with _$RewardsCoinsCollectEvent {
  const factory RewardsCoinsCollectEvent.rewardsCollectionInitialEvent() =
      RewardsCollectionInitialEvent;
  const factory RewardsCoinsCollectEvent.checkCoinsCollected({
    required bool value,
  }) = CheckCoinsCollected;
}
