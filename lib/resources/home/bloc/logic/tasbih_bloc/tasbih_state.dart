part of 'tasbih_bloc.dart';

@freezed
class TasbihState with _$TasbihState {
  const factory TasbihState(
      {required String tasbihDhikr,
      required String tasbihDikrTranslate,
      required String tasbihId,
      required DhikrModel? dhikrModel,
      required int dhikrCount,
      required int dhikrhGoal,
      required bool isBoolGreaterThanOne}) = _TasbihState;
  factory TasbihState.initial() => const TasbihState(
        tasbihDhikr: "",
        dhikrModel: null,
        tasbihId: '',
        dhikrCount: 0,
        dhikrhGoal: 33,
        tasbihDikrTranslate: "",
        isBoolGreaterThanOne: false,
      );
}
