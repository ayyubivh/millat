part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchLargeDisountsBanner() = FetchLargeDisountsBanner;
  const factory HomeEvent.fetchTopOffersBanner() = FetchTopOffersBanner;
  const factory HomeEvent.fetchBrandofTheDay() = FetchBrandofTheDay;
  const factory HomeEvent.fetchHadithOfTheDay() = FetchHadithOfTheDay;
  const factory HomeEvent.fetchEventOfTheMonth() = FetchEventOfTheMonth;
  const factory HomeEvent.fetchPrayerTrackerEvent() = FetchPrayerTrackerEvent;
  const factory HomeEvent.addPrayerToPrayerTracker({
    required String namazName,
  }) = AddPrayerToPrayerTracker;
}
