part of 'namaz_timing_bloc.dart';

@freezed
class NamazTimingEvent with _$NamazTimingEvent {
  const factory NamazTimingEvent.fetchPrayerTiming(
      {required BuildContext context}) = FetchPrayerTiming;
  const factory NamazTimingEvent.prayerTimingEvent() = PrayerTimingEvent;
  const factory NamazTimingEvent.showImsakEvent() = ShowImsakEvent;
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
  const factory NamazTimingEvent.onNotiyOnOffEvent({required bool value}) =
      OnNotiyOnOffEvent;
}
