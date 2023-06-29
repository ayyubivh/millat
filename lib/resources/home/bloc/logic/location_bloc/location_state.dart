part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState(
      {required String currentLocaion,
      required String errorMessage,
      required String shortAddress,
      required CitiesModel? citiesModel,
      required List<StateData> cities,
      required String location
      // required String? changedLocation,
      }) = _Initial;
  factory LocationState.initial() => const LocationState(
        currentLocaion: "",
        errorMessage: "",
        shortAddress: "",
        citiesModel: null,
        location: "",
        cities: [],
      );
}
