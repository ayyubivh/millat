part of 'rewards_coins_collect_bloc.dart';

@freezed
class RewardsCoinsCollectEvent with _$RewardsCoinsCollectEvent {
  const factory RewardsCoinsCollectEvent.fetchCoinsCollectionEvent() =
      FetchCoinsCollectionEvent;
  const factory RewardsCoinsCollectEvent.addCoinsCollectionEvent(
      BuildContext context) = AddCoinsCollectionEvent;
}
