import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/rewards/bloc/models/coin_collection/coin_collection_model.dart';
import 'package:millat/resources/rewards/bloc/models/get_rewards_model.dart';
import 'package:millat/resources/rewards/bloc/models/redeem_rewards/reward_redeem_items_model.dart';
import 'package:millat/resources/rewards/bloc/models/rewards_product/rewards_product_by_id_model.dart';
import 'package:millat/resources/rewards/bloc/service/reward_service.dart';

import '../../models/redeem_rewards/redeemed_coupons_model.dart';
import '../../models/rewards_product/rewards_product_model.dart';

part 'rewards_bloc_event.dart';
part 'rewards_bloc_state.dart';
part 'rewards_bloc_bloc.freezed.dart';

class RewardsBloc extends Bloc<RewardsEvent, RewardsState> {
  RewardServices rewardServices = RewardServices();
  RewardsBloc() : super(RewardsState.initial()) {
    on<_FetchRewards>(_fetchRewards);
    on<_FetchRewardProducts>(_fetchRewardProducts);
    on<_FetchRewardProductsById>(__fetchRewardProductsById);
    on<ChangeCarousselImageIndex>(_changeCarouselimageIndex);
    on<ChangeRewardsTabIndex>(_changeRewardsTabIndex);
    on<AddRewards>(_addRewards);
    on<FetchRewardsRedeemItem>(_fetchRewardsRedeemItem);
    on<AddRewardRedeemCoupon>(_addRewardRedeemCoupon);
    on<FetchRewardRedeemedCoupons>(_fetchRewardRedeemedCoupons);
  }

  _fetchRewards(_FetchRewards event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await rewardServices.fetchRewards(event.context);

      emit(state.copyWith(
          rewardsModel: data,
          isLoading: false,
          rewardCoins: data.result?.reward?.coins?.toInt() ?? 0));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchRewardProducts(
      _FetchRewardProducts event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await rewardServices.fetchRewardProducts();

      emit(state.copyWith(rewardsProductsModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  __fetchRewardProductsById(
      _FetchRewardProductsById event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await rewardServices.fetchRewardProductsById(event.id);
      print(data);

      emit(state.copyWith(rewardsProductByIdModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _changeCarouselimageIndex(
      ChangeCarousselImageIndex event, Emitter<RewardsState> emit) {
    emit(state.copyWith(carouselImageIndex: event.index));
  }

  _changeRewardsTabIndex(
      ChangeRewardsTabIndex event, Emitter<RewardsState> emit) {
    emit(state.copyWith(tabIndex: event.index));
  }

  _addRewards(AddRewards event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await rewardServices.addReward(rewards: event.rewards);

      emit(state.copyWith(
          isLoading: false, rewardCoins: state.rewardCoins + event.rewards));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _fetchRewardsRedeemItem(event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await rewardServices.getRedeemRewardItems();
      emit(state.copyWith(redeemItemModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _addRewardRedeemCoupon(
      AddRewardRedeemCoupon event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true, isRewardRedeemSuccess: false));
    try {
      final data = await rewardServices.addRewardRedeemCoupon(id: event.id);

      if (data['status'] == 400) {
        print("data on the add redeem ${data['message']}");
        emit(state.copyWith(
          isLoading: false,
          isRewardRedeemFailure: true,
        ));
        await Future.delayed(
          const Duration(seconds: 2),
          () {
            emit(state.copyWith(isRewardRedeemFailure: false));
          },
        );
      } else {
        emit(state.copyWith(isLoading: false, isRewardRedeemSuccess: true));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _fetchRewardRedeemedCoupons(
      FetchRewardRedeemedCoupons event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true, isRewardRedeemSuccess: false));
    try {
      final data = await rewardServices.getRedeemedCoupons();

      emit(state.copyWith(isLoading: false, redeemedCouponModel: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }
}
