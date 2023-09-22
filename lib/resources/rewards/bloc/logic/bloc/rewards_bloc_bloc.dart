import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/rewards/bloc/models/get_rewards_model.dart';
import 'package:millat/resources/rewards/bloc/service/reward_service.dart';

part 'rewards_bloc_event.dart';
part 'rewards_bloc_state.dart';
part 'rewards_bloc_bloc.freezed.dart';

class RewardsBloc extends Bloc<RewardsEvent, RewardsState> {
  RewardServices rewardServices = RewardServices();
  RewardsBloc() : super(RewardsState.initial()) {
    on<_FetchRewards>(_fetchRewards);
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
}
