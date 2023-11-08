part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchLargeDisountsBanner() =
      FetchLargeDiscountsBanner;
  const factory HomeEvent.fetchTopOffersBanner() = FetchTopOffersBanner;
  const factory HomeEvent.fetchBrandofTheDay() = FetchBrandofTheDay;
  const factory HomeEvent.fetchHadithOfTheDay() = FetchHadithOfTheDay;
  const factory HomeEvent.fetchEventOfTheMonth() = FetchEventOfTheMonth;
  const factory HomeEvent.fetchPrayerTrackerEvent({
    required DateTime date,
    required BuildContext context,
  }) = FetchPrayerTrackerEvent;
  const factory HomeEvent.addPrayerToPrayerTracker({
    required String namazName,
    required BuildContext context,
  }) = AddPrayerToPrayerTracker;
  const factory HomeEvent.changeIndexofAllaysaysBg() = ChangeIndexofAllaysaysBg;
  const factory HomeEvent.changeHomeTabIndexEvent({
    required int newIndex,
  }) = ChangeHomeTabIndexEvent;
  const factory HomeEvent.removeDailyPrayerTrackerNamaz({
    required String namazName,
    required BuildContext context,
  }) = RemoveDailyPrayerTrackerNamaz;
  const factory HomeEvent.changeTinterCardSwipeOption({required bool value}) =
      ChangeTinterCardSwipeOption;
  const factory HomeEvent.changeCompassThemeEvent({
    required CompassTheme compassTheme,
  }) = ChangeCompassThemeEvent;
  const factory HomeEvent.changeCompassThemeIndex({
    required int index,
  }) = ChangeCompassThemeIndex;
  const factory HomeEvent.fetchNotificationApi({
    required BuildContext context,
  }) = FetchNotificationApi;
  const factory HomeEvent.addMarkReadNotificationEvent({
    required String id,
    required BuildContext context,
  }) = AddMarkReadNotificationEvent;
  const factory HomeEvent.changeHomeBannerIndex({
    required int index,
  }) = ChangeHomeBannerIndex;
}
