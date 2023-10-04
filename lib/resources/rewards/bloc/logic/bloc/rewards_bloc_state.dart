part of 'rewards_bloc_bloc.dart';

@freezed
class RewardsState with _$RewardsState {
  const factory RewardsState(
      {required bool isLoading,
      required RewardsModel? rewardsModel,
      required RewardsProductByIdModel? rewardsProductByIdModel,
      required RewardsProductsModel? rewardsProductsModel,
      required int carouselImageIndex}) = _RewardsState;
  factory RewardsState.initial() => const RewardsState(
      isLoading: false,
      rewardsModel: null,
      rewardsProductsModel: null,
      rewardsProductByIdModel: null,
      carouselImageIndex: 0);
}
