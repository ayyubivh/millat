part of 'tasbih_bloc.dart';

@freezed
class TasbihEvent with _$TasbihEvent {
  const factory TasbihEvent.selectDhikerEvent({
    required String dikr,
    required String translate,
    required String id,
  }) = SelectDhikerEvent;
  const factory TasbihEvent.fetchDhikr() = FetchDhikr;
  const factory TasbihEvent.dikhrIncreaseCountEvent() = DikhrIncreaseCountEvent;
  const factory TasbihEvent.changeTasbihGoalEvent({
    required int newValue,
  }) = ChangeTasbihGoalEvent;
  const factory TasbihEvent.resetTashbihCounterEvent() =
      ResetTashbihCounterEvent;
  const factory TasbihEvent.addTasbihEvent({
    required BuildContext buildContext,
    required String id,
  }) = AddTasbihEvent;
  const factory TasbihEvent.checkLoopEvent() = CheckLoopEvent;
}
