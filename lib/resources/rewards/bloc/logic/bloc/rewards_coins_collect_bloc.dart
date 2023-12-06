import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/utils/app_size.dart';

part 'rewards_coins_collect_event.dart';
part 'rewards_coins_collect_state.dart';
part 'rewards_coins_collect_bloc.freezed.dart';

class RewardsCoinsCollectBloc
    extends Bloc<RewardsCoinsCollectEvent, RewardsCoinsCollectState> {
  RewardsCoinsCollectBloc() : super(RewardsCoinsCollectState.initial()) {
    on<RewardsCollectionInitialEvent>(_rewardsCollectionInitialEvent);
    on<CheckCoinsCollected>(_checkCoinsCollected);
  }

  _rewardsCollectionInitialEvent(RewardsCollectionInitialEvent event,
      Emitter<RewardsCoinsCollectState> emit) async {}

  _checkCoinsCollected(
      CheckCoinsCollected event, Emitter<RewardsCoinsCollectState> emit) {
    emit(state.copyWith(checkCoinsCollected: event.value));
  }
}
