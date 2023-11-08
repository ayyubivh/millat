part of 'travel_bloc.dart';

@freezed
class TravelEvent with _$TravelEvent {
  const factory TravelEvent.changeBannerIndex({
    required int index,
  }) = ChangeBannerIndex;
  const factory TravelEvent.changeTravelTabIndex({required int index}) =
      ChangeTravelTabIndex;
  const factory TravelEvent.fetchTravelPopularProducts() =
      FetchTravelPopularProducts;
  const factory TravelEvent.fetchBestPlacesProducts() = FetchBestPlacesProducts;
  const factory TravelEvent.fetchTravelCities() = FetchTravelCities;
  const factory TravelEvent.fetchTravelProductById({
    required String id,
  }) = FetchTravelProductsById;
  const factory TravelEvent.fetchTravelSearchLocations({
    required String searchquery,
  }) = FetchTravelSearchLocations;
  const factory TravelEvent.fetchProductByLocation({required String location}) =
      FetchProductByLocation;
  const factory TravelEvent.bookTravelEvent({
    required String name,
    required String email,
    required String phoneNumber,
    required dynamic passPortPhoto,
    required String country,
    required String productId,
  }) = BookTravelEvent;
  const factory TravelEvent.increaseGuestEvent() = IncreaseGuestEvent;
  const factory TravelEvent.decreaseGuestEvent() = DecreaseGuestEvent;
  const factory TravelEvent.selectCountryEvent({
    required String country,
  }) = SelectCountryEvent;
  const factory TravelEvent.saveSearchLocation({
    required String location,
  }) = SaveSearchLocation;
  const factory TravelEvent.resetSearchData() = ResetSearchData;
  const factory TravelEvent.showCalendarEvent() = ShowCalendarEvent;
  const factory TravelEvent.selectDateRangeEvent({
    required DateTime start,
    required DateTime end,
    required DateTime focusedDay,
  }) = SelectDateRangeEvent;
  const factory TravelEvent.fetchTravelSearchedProducts({
    required String country,
    required String location,
    required String date,
  }) = FetchTravelSearchedProducts;
  const factory TravelEvent.fetchTravelWishlistProducts() =
      FetchTravelWishlistProducts;
  const factory TravelEvent.addTravelWishlist({
    required String productId,
    required TravelWishlist wishlistType,
  }) = AddTravelWishlist;
  const factory TravelEvent.travelbookingCompleted() = TravelBookingCompleted;
  const factory TravelEvent.fetchTravelHomeBannerPackages() =
      FetchTravelHomeBannerPackages;
}
