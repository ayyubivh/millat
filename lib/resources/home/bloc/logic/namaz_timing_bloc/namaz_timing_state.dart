part of 'namaz_timing_bloc.dart';

@freezed
class NamazTimingState with _$NamazTimingState {
  const factory NamazTimingState({
    required String success,
    required String error,
    required PrayerModel? prayerModel,
    required Map<String, dynamic>? currentNamaz,
    required Map<String, dynamic>? upcomingNamaz,
    required bool showImsak,
    required String urlDate,
    required int school,
    required bool isArtCalcMehod,
    required int method,
    required String namazMethodName,
    required String methodPlace,
    required NamazMethodsModel? namazMethodsModel,
    required int highLatMethodVal,
  }) = _Initial;
  factory NamazTimingState.initial() => NamazTimingState(
        success: "",
        error: "",
        prayerModel: null,
        currentNamaz: {},
        upcomingNamaz: {},
        showImsak: false,
        school: 0,
        isArtCalcMehod: true,
        method: 0,
        methodPlace: "",
        namazMethodName: "",
        highLatMethodVal: 0,
        namazMethodsModel: null,
        urlDate: DateFormat('dd-MM-yyyy').format(DateTime.now()).toString(),
      );
}
