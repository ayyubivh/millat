part of 'rewards_bloc_bloc.dart';

@freezed
class RewardsEvent with _$RewardsEvent {
  const factory RewardsEvent.fetchRewards({required BuildContext context}) =
      _FetchRewards;
  const factory RewardsEvent.fetchRewardProducts() = _FetchRewardProducts;
  const factory RewardsEvent.fetchRewardProductsById({
    required String id,
  }) = _FetchRewardProductsById;
  const factory RewardsEvent.changeCarousselImageIndex(int index) =
      ChangeCarousselImageIndex;
  const factory RewardsEvent.changeRewardsTabIndex({required int index}) =
      ChangeRewardsTabIndex;
  const factory RewardsEvent.addRewards({required int rewards}) = AddRewards;
  const factory RewardsEvent.fetchRewardsRedeemItem() = FetchRewardsRedeemItem;
  const factory RewardsEvent.addRewardRedeemCoupon({
    required String id,
  }) = AddRewardRedeemCoupon;
  const factory RewardsEvent.fetchRewardRedeemedCoupons() =
      FetchRewardRedeemedCoupons;
}
