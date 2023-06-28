part of 'namaz_timing_bloc.dart';

@freezed
class NamazTimingEvent with _$NamazTimingEvent {
  const factory NamazTimingEvent.fetchPrayerTiming() = FetchPrayerTiming;
  const factory NamazTimingEvent.prayerTimingEvent() = PrayerTimingEvent;
  const factory NamazTimingEvent.showImsakEvent() = ShowImsakEvent;
  const factory NamazTimingEvent.changeArtCalcMethod() = ChangeArtCalcMethod;
}
