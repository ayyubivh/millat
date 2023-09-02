part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.fetchCurrentLocation() = FetchCurrentLocation;
  const factory LocationEvent.changeLocation({required String location}) =
      ChangeLocation;
  const factory LocationEvent.fetchCities() = FetchCities;
  const factory LocationEvent.loadMoreCities() = LoadMoreCities;
  const factory LocationEvent.searchCities({required String query}) =
      SearchCities;
  const factory LocationEvent.changeLocationOnToggle() = ChangeLocationOnToggle;
  const factory LocationEvent.fetchWeatherEvent() = FetchWeatherEvent;
}
