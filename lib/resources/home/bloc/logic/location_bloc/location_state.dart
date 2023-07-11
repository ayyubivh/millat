part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required String currentLocaion,
    required String errorMessage,
    required String shortAddress,
    required CitiesModel? citiesModel,
    required List<CountryData> cities,
    required List<CountryData> searchCities,
    required int currentPage,
    required int itemsPerPage,
    required String location,
    required bool isLoadingMore,
    required List<List<String>> loadedCities,
    required bool hasReachedEnd,
    required bool isPermissionDenied,
    // required String? changedLocation,
  }) = _Initial;
  factory LocationState.initial() => const LocationState(
      currentLocaion: "",
      errorMessage: "",
      shortAddress: "",
      citiesModel: null,
      location: "",
      currentPage: 0,
      itemsPerPage: 10,
      cities: [],
      searchCities: [],
      isLoadingMore: false,
      hasReachedEnd: false,
      isPermissionDenied: false,
      loadedCities: []);
}
