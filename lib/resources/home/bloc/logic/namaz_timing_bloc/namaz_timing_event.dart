part of 'namaz_timing_bloc.dart';

@freezed
class NamazTimingEvent with _$NamazTimingEvent {
  const factory NamazTimingEvent.fetchPrayerTiming(
      {required BuildContext context}) = FetchPrayerTiming;
  const factory NamazTimingEvent.prayerTimingEvent() = PrayerTimingEvent;

  const factory NamazTimingEvent.changeArtCalcMethod() = ChangeArtCalcMethod;
  const factory NamazTimingEvent.fetchNamazMethods() = FetchNamazMethods;
  const factory NamazTimingEvent.changeNamazMehods(
      {required int method,
      required BuildContext context}) = ChangeNamazMethods;
  const factory NamazTimingEvent.changeSchoolEvent(
      {required int school, required BuildContext context}) = ChangeSchoolEvent;
  const factory NamazTimingEvent.changeHighLatitudeMethod(
      {required int numValue,
      required BuildContext context}) = ChangeHighLatitudeMethod;
  const factory NamazTimingEvent.changeLangLongtoAddress() =
      ChangeLangLongtoAddress;
  const factory NamazTimingEvent.onNotiyOnOffEvent({
    required int index,
  }) = OnNotiyOnOffEvent;
  const factory NamazTimingEvent.changeIndex({
    required int index,
  }) = ChangeIndex;

  const factory NamazTimingEvent.addAutoDetectValToLocalStorage({
    required bool value,
  }) = AddAutoDetectValToLocalStorage;
  const factory NamazTimingEvent.getAutoDetetectLocationFromLocalStorage() =
      GetAutoDetetectLocationFromLocalStorage;
  const factory NamazTimingEvent.addAutomaticSettingToLocalStorage({
    required bool value,
  }) = AddAutomaticSettingToLocalStorage;
  const factory NamazTimingEvent.getAutomaticSettingsFromLocalStorage() =
      GetAutomaticSettingsFromLocalStorage;
  const factory NamazTimingEvent.addShowimsakValToLocalStorage({
    required bool value,
  }) = AddShowimsakValToLocalStorage;
  const factory NamazTimingEvent.getShowimskValFromLocalStorage() =
      GetShowimskValFromLocalStorage;
  const factory NamazTimingEvent.addCalculationMethodToLocalStorage({
    required int value,
  }) = AddCalculationMethodToLocalStorage;
  const factory NamazTimingEvent.getCalculationMethodFromStorage() =
      GetCalculationMethodFromStorage;
  const factory NamazTimingEvent.addAsrCalculationMethodToLocalStorage({
    required int value,
  }) = AddAsrCalculationMethodToLocalStorage;
  const factory NamazTimingEvent.getAsrCalculationMethodFromStorage() =
      GetAsrCalculationMethodFromStorage;
  const factory NamazTimingEvent.addHighLatitudeMethodsToLocalStorage({
    required int value,
  }) = AddHighLatitudeMethodsToLocalStorage;
  const factory NamazTimingEvent.getHighLatitudeMethodsToLocalStorage() =
      GetHighLatitudeMethodsToLocalStorage;
  const factory NamazTimingEvent.fetchNamazTimingNotificationsFromLocalStorage() =
      FetchNamazTimingNotificationsFromLocalStorage;
}
