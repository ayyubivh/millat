part of 'rewards_coins_collect_bloc.dart';

@freezed
class RewardsCoinsCollectState with _$RewardsCoinsCollectState {
  const factory RewardsCoinsCollectState({
    required Duration initialDuration,
    required bool checkCoinsCollected,
  }) = _RewardsCoinsCollectState;
  factory RewardsCoinsCollectState.initial() => const RewardsCoinsCollectState(
        initialDuration: Duration(
          hours: AppSize.s8,
        ),
        checkCoinsCollected: false,
      );
}
