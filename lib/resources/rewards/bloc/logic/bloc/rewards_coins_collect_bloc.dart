import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/rewards/bloc/models/coin_collection/coin_collection_model.dart';
import 'package:millat/resources/rewards/bloc/service/reward_service.dart';
import 'package:millat/utils/app_size.dart';

part 'rewards_coins_collect_event.dart';
part 'rewards_coins_collect_state.dart';
part 'rewards_coins_collect_bloc.freezed.dart';

class RewardsCoinsCollectBloc
    extends Bloc<RewardsCoinsCollectEvent, RewardsCoinsCollectState> {
  final rewardService = RewardServices();
  RewardsCoinsCollectBloc() : super(RewardsCoinsCollectState.initial()) {
    on<FetchCoinsCollectionEvent>(_fetchCoinsCollectionEvent);
    on<AddCoinsCollectionEvent>(_addCoinsCollectionEvent);
  }

  _fetchCoinsCollectionEvent(FetchCoinsCollectionEvent event,
      Emitter<RewardsCoinsCollectState> emit) async {
    emit(state.copyWith());
    try {
      final data = await rewardService.fetchCoinCollection();
      final isCoinCollected = data.result?.data.isCollected;
      emit(state.copyWith(
          isLoading: true,
          coinCollectionModel: data,
          checkCoinsCollected: isCoinCollected ?? false));
    } catch (e) {
      throw Exception(e);
    }
  }

  _addCoinsCollectionEvent(AddCoinsCollectionEvent event,
      Emitter<RewardsCoinsCollectState> emit) async {
    try {
      await rewardService.addCoinsCollection(event.context);
    } catch (e) {
      throw Exception(e);
    }
  }
}
