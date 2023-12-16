part of 'rewards_bloc_bloc.dart';

@freezed
class RewardsState with _$RewardsState {
  const factory RewardsState({
    required bool isLoading,
    required RewardsModel? rewardsModel,
    required RewardsProductByIdModel? rewardsProductByIdModel,
    required RewardsProductsModel? rewardsProductsModel,
    required int carouselImageIndex,
    required int tabIndex,
    required int rewardCoins,
    required RewardRedeemItemModel? redeemItemModel,
    required bool isRewardRedeemSuccess,
    required bool isRewardRedeemFailure,
    required RedeemedCouponModel? redeemedCouponModel,
  }) = _RewardsState;
  factory RewardsState.initial() => const RewardsState(
        isLoading: false,
        rewardsModel: null,
        rewardsProductsModel: null,
        rewardsProductByIdModel: null,
        carouselImageIndex: 0,
        tabIndex: 0,
        rewardCoins: 0,
        redeemItemModel: null,
        isRewardRedeemSuccess: false,
        redeemedCouponModel: null,
        isRewardRedeemFailure: false,
      );
}
