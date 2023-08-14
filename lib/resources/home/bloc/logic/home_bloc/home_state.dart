part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required LargeDiscountModel? largeDiscountModel,
    required TopOffersModel? topOffersModel,
    required BrandOftheDayModel? brandOftheDayModel,
    required HaditOfTheDayModel? haditOfTheDayModel,
    required EventOfTheMonthModel? eventOfTheMonthModel,
    required bool prayerTrackerFajr,
    required bool prayerTrackerDhuhr,
    required bool prayerTrackerAsr,
    required bool prayerTrackerMagrib,
    required bool prayerTrackerIsha,
    required List<PrayerTrackerModel>? prayerTracker,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
      isLoading: false,
      largeDiscountModel: null,
      topOffersModel: null,
      brandOftheDayModel: null,
      haditOfTheDayModel: null,
      eventOfTheMonthModel: null,
      prayerTrackerAsr: false,
      prayerTrackerDhuhr: false,
      prayerTrackerFajr: false,
      prayerTrackerIsha: false,
      prayerTrackerMagrib: false,
      prayerTracker: []);
}
