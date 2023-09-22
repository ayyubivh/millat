part of 'rewards_bloc_bloc.dart';

@freezed
class RewardsState with _$RewardsState {
  const factory RewardsState({
    required bool isLoading,
    required RewardsModel? rewardsModel,
  }) = _RewardsState;
  factory RewardsState.initial() =>
      RewardsState(isLoading: false, rewardsModel: null);
}
