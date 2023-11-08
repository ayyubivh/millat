
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/rewards/bloc/models/get_rewards_model.dart';
import 'package:millat/resources/rewards/bloc/models/rewards_product/rewards_product_by_id_model.dart';
import 'package:millat/resources/rewards/bloc/service/reward_service.dart';

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
  }

  _fetchRewards(_FetchRewards event, Emitter<RewardsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await rewardServices.fetchRewards(event.context);

      emit(state.copyWith(rewardsModel: data, isLoading: false));
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
}
