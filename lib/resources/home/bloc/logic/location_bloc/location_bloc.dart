import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:weather/weather.dart';
import 'package:permission_handler/permission_handler.dart' as perm;
import 'package:permission_handler/permission_handler.dart';
import '../../models/cities_models/cities_model.dart';
import '../../service/location_service.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationService locationService = LocationService();
  LocationBloc() : super(LocationState.initial()) {
    on<FetchCurrentLocation>(_fetchCurrentLocation);
    on<FetchCities>(_fetchCities);
    on<SearchCities>(_searchCities);
    on<ChangeLocation>(_changeLocation);
    on<ChangeLocationOnToggle>(_changeLocationOnToggle);
    on<FetchWeatherEvent>(_fetchWeatherEvent);
  }
  Future<void> _fetchCities(
      FetchCities event, Emitter<LocationState> emit) async {
    try {
      final data = await locationService.fetchCities();
      final List<CountryData> cities = data!.data.toList();
      emit(state.copyWith(
          citiesModel: data, cities: cities, searchCities: cities));
      // debugPrint('cities on the bloc $data');
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('Error fetching cities: $e');
        debugPrint('Stack trace: $stackTrace');
      }
      emit(state.copyWith(
        errorMessage: 'An error occurred while fetching cities.',
      ));
    }
  }

  FutureOr<void> _searchCities(
      SearchCities event, Emitter<LocationState> emit) async {
    final query = event.query.toLowerCase();

    if (query.isEmpty) {
      emit(state.copyWith(searchCities: state.cities));
    } else {
      final searchResults = state.searchCities
          .map((countryData) => CountryData(
                iso3: countryData.iso3,
                iso2: countryData.iso2,
                country: countryData.country,
                cities: countryData.cities
                    .where((city) => city.toLowerCase().contains(query))
                    .toList(),
              ))
          .where((countryData) => countryData.cities.isNotEmpty)
          .toList();

      emit(state.copyWith(searchCities: searchResults));
    }
  }

  Future<void> _fetchCurrentLocation(
    FetchCurrentLocation event,
    Emitter<LocationState> emit,
  ) async {
    try {
      Position? lastLocation = await Geolocator.getLastKnownPosition();
      if (lastLocation != null) {
        emit(state.copyWith(lanAndLong: lastLocation));
      }

      PermissionStatus permissionStatus = await Permission.location.request();
      debugPrint('Permission status: $permissionStatus');

      if (permissionStatus.isGranted) {
        bool isLocationServiceEnabled =
            await Geolocator.isLocationServiceEnabled();
        if (!isLocationServiceEnabled) {
          emit(state.copyWith(errorMessage: 'Location services are disabled'));
          return;
        }

        // Get the current location
        Position currentLocation = await Geolocator.getCurrentPosition();
        emit(state.copyWith(lanAndLong: currentLocation));

        // Get the current address based on coordinates
        String currentAddress = await getAddress(
          currentLocation.latitude,
          currentLocation.longitude,
        );
        emit(state.copyWith(
          currentLocaion: currentAddress,
          location: currentAddress,
        ));
      } else if (permissionStatus.isPermanentlyDenied) {
        debugPrint('Location permission permanently denied');
        emit(state.copyWith(errorMessage: 'Location permission denied'));
        await openAppSettings();
      } else {
        debugPrint('Location permission denied');
        emit(state.copyWith(errorMessage: 'Location permission denied'));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Error fetching location: $e'));
      debugPrint('Error fetching location: $e');
    }
  }

  Future<String> getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        // String address = placemark.thoroughfare ?? '';
        String locality = placemark.locality ?? '';
        // String subAdministrativeArea = placemark.subAdministrativeArea ?? '';
        String administrativeArea = placemark.administrativeArea ?? '';
        // String country = placemark.country ?? '';
        // print(
        //     "=======$placemark address :::: $address===========\nlocality ::::: $locality=============\n subadminstrative area:::::$subAdministrativeArea========\n");
        String currentAddress = ' $locality, $administrativeArea';
        return currentAddress;
      }
    } catch (e) {
      debugPrint('Error:-------- $e');
    }

    return '';
  }

  FutureOr<void> _changeLocation(
      ChangeLocation event, Emitter<LocationState> emit) {
    try {
      emit(state.copyWith(currentLocaion: event.location));
    } catch (e) {
      throw Exception(e);
    }
  }

  FutureOr<void> _changeLocationOnToggle(
      ChangeLocationOnToggle event, Emitter<LocationState> emit) {
    emit(state.copyWith(currentLocaion: state.location));
  }

  _fetchWeatherEvent(
      FetchWeatherEvent event, Emitter<LocationState> emit) async {
    WeatherFactory wf = WeatherFactory("b3d5766982a6bc07ad257a10d0939899",
        language: Language.ENGLISH);
    final pos = state.lanAndLong;
    Weather w = await wf.currentWeatherByLocation(
        pos?.latitude ?? 0, pos?.longitude ?? 0);
    emit(state.copyWith(
        weatherConditionName: w.weatherDescription.toString(),
        weatherTemperature: w.temperature));
  }
}
