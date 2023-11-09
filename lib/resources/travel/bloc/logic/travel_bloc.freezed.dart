// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelEventCopyWith<$Res> {
  factory $TravelEventCopyWith(
          TravelEvent value, $Res Function(TravelEvent) then) =
      _$TravelEventCopyWithImpl<$Res, TravelEvent>;
}

/// @nodoc
class _$TravelEventCopyWithImpl<$Res, $Val extends TravelEvent>
    implements $TravelEventCopyWith<$Res> {
  _$TravelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeBannerIndexCopyWith<$Res> {
  factory _$$ChangeBannerIndexCopyWith(
          _$ChangeBannerIndex value, $Res Function(_$ChangeBannerIndex) then) =
      __$$ChangeBannerIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeBannerIndexCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$ChangeBannerIndex>
    implements _$$ChangeBannerIndexCopyWith<$Res> {
  __$$ChangeBannerIndexCopyWithImpl(
      _$ChangeBannerIndex _value, $Res Function(_$ChangeBannerIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeBannerIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBannerIndex
    with DiagnosticableTreeMixin
    implements ChangeBannerIndex {
  const _$ChangeBannerIndex({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.changeBannerIndex(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.changeBannerIndex'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBannerIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBannerIndexCopyWith<_$ChangeBannerIndex> get copyWith =>
      __$$ChangeBannerIndexCopyWithImpl<_$ChangeBannerIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return changeBannerIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return changeBannerIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (changeBannerIndex != null) {
      return changeBannerIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return changeBannerIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return changeBannerIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (changeBannerIndex != null) {
      return changeBannerIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeBannerIndex implements TravelEvent {
  const factory ChangeBannerIndex({required final int index}) =
      _$ChangeBannerIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeBannerIndexCopyWith<_$ChangeBannerIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTravelTabIndexCopyWith<$Res> {
  factory _$$ChangeTravelTabIndexCopyWith(_$ChangeTravelTabIndex value,
          $Res Function(_$ChangeTravelTabIndex) then) =
      __$$ChangeTravelTabIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeTravelTabIndexCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$ChangeTravelTabIndex>
    implements _$$ChangeTravelTabIndexCopyWith<$Res> {
  __$$ChangeTravelTabIndexCopyWithImpl(_$ChangeTravelTabIndex _value,
      $Res Function(_$ChangeTravelTabIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeTravelTabIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTravelTabIndex
    with DiagnosticableTreeMixin
    implements ChangeTravelTabIndex {
  const _$ChangeTravelTabIndex({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.changeTravelTabIndex(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.changeTravelTabIndex'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTravelTabIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTravelTabIndexCopyWith<_$ChangeTravelTabIndex> get copyWith =>
      __$$ChangeTravelTabIndexCopyWithImpl<_$ChangeTravelTabIndex>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return changeTravelTabIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return changeTravelTabIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (changeTravelTabIndex != null) {
      return changeTravelTabIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return changeTravelTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return changeTravelTabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (changeTravelTabIndex != null) {
      return changeTravelTabIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeTravelTabIndex implements TravelEvent {
  const factory ChangeTravelTabIndex({required final int index}) =
      _$ChangeTravelTabIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeTravelTabIndexCopyWith<_$ChangeTravelTabIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD
=======
abstract class _$$FetchTravelBannersCopyWith<$Res> {
  factory _$$FetchTravelBannersCopyWith(_$FetchTravelBanners value,
          $Res Function(_$FetchTravelBanners) then) =
      __$$FetchTravelBannersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTravelBannersCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelBanners>
    implements _$$FetchTravelBannersCopyWith<$Res> {
  __$$FetchTravelBannersCopyWithImpl(
      _$FetchTravelBanners _value, $Res Function(_$FetchTravelBanners) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTravelBanners
    with DiagnosticableTreeMixin
    implements FetchTravelBanners {
  const _$FetchTravelBanners();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelBanners()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TravelEvent.fetchTravelBanners'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTravelBanners);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
    required TResult Function() fetchTravelBanners,
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
    TResult? Function()? fetchTravelBanners,
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
    TResult Function()? fetchTravelBanners,
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelBanners != null) {
      return fetchTravelBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelBanners != null) {
      return fetchTravelBanners(this);
    }
    return orElse();
  }
}

abstract class FetchTravelBanners implements TravelEvent {
  const factory FetchTravelBanners() = _$FetchTravelBanners;
}

/// @nodoc
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
abstract class _$$FetchTravelPopularProductsCopyWith<$Res> {
  factory _$$FetchTravelPopularProductsCopyWith(
          _$FetchTravelPopularProducts value,
          $Res Function(_$FetchTravelPopularProducts) then) =
      __$$FetchTravelPopularProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTravelPopularProductsCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelPopularProducts>
    implements _$$FetchTravelPopularProductsCopyWith<$Res> {
  __$$FetchTravelPopularProductsCopyWithImpl(
      _$FetchTravelPopularProducts _value,
      $Res Function(_$FetchTravelPopularProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTravelPopularProducts
    with DiagnosticableTreeMixin
    implements FetchTravelPopularProducts {
  const _$FetchTravelPopularProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelPopularProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TravelEvent.fetchTravelPopularProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTravelPopularProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelPopularProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelPopularProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelPopularProducts != null) {
      return fetchTravelPopularProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelPopularProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelPopularProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelPopularProducts != null) {
      return fetchTravelPopularProducts(this);
    }
    return orElse();
  }
}

abstract class FetchTravelPopularProducts implements TravelEvent {
  const factory FetchTravelPopularProducts() = _$FetchTravelPopularProducts;
}

/// @nodoc
abstract class _$$FetchBestPlacesProductsCopyWith<$Res> {
  factory _$$FetchBestPlacesProductsCopyWith(_$FetchBestPlacesProducts value,
          $Res Function(_$FetchBestPlacesProducts) then) =
      __$$FetchBestPlacesProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBestPlacesProductsCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchBestPlacesProducts>
    implements _$$FetchBestPlacesProductsCopyWith<$Res> {
  __$$FetchBestPlacesProductsCopyWithImpl(_$FetchBestPlacesProducts _value,
      $Res Function(_$FetchBestPlacesProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBestPlacesProducts
    with DiagnosticableTreeMixin
    implements FetchBestPlacesProducts {
  const _$FetchBestPlacesProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchBestPlacesProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TravelEvent.fetchBestPlacesProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBestPlacesProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchBestPlacesProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchBestPlacesProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchBestPlacesProducts != null) {
      return fetchBestPlacesProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchBestPlacesProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchBestPlacesProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchBestPlacesProducts != null) {
      return fetchBestPlacesProducts(this);
    }
    return orElse();
  }
}

abstract class FetchBestPlacesProducts implements TravelEvent {
  const factory FetchBestPlacesProducts() = _$FetchBestPlacesProducts;
}

/// @nodoc
abstract class _$$FetchTravelCitiesCopyWith<$Res> {
  factory _$$FetchTravelCitiesCopyWith(
          _$FetchTravelCities value, $Res Function(_$FetchTravelCities) then) =
      __$$FetchTravelCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTravelCitiesCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelCities>
    implements _$$FetchTravelCitiesCopyWith<$Res> {
  __$$FetchTravelCitiesCopyWithImpl(
      _$FetchTravelCities _value, $Res Function(_$FetchTravelCities) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTravelCities
    with DiagnosticableTreeMixin
    implements FetchTravelCities {
  const _$FetchTravelCities();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelCities()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TravelEvent.fetchTravelCities'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTravelCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelCities != null) {
      return fetchTravelCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelCities != null) {
      return fetchTravelCities(this);
    }
    return orElse();
  }
}

abstract class FetchTravelCities implements TravelEvent {
  const factory FetchTravelCities() = _$FetchTravelCities;
}

/// @nodoc
abstract class _$$FetchTravelProductsByIdCopyWith<$Res> {
  factory _$$FetchTravelProductsByIdCopyWith(_$FetchTravelProductsById value,
          $Res Function(_$FetchTravelProductsById) then) =
      __$$FetchTravelProductsByIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchTravelProductsByIdCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelProductsById>
    implements _$$FetchTravelProductsByIdCopyWith<$Res> {
  __$$FetchTravelProductsByIdCopyWithImpl(_$FetchTravelProductsById _value,
      $Res Function(_$FetchTravelProductsById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchTravelProductsById(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTravelProductsById
    with DiagnosticableTreeMixin
    implements FetchTravelProductsById {
  const _$FetchTravelProductsById({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelProductById(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.fetchTravelProductById'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTravelProductsById &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTravelProductsByIdCopyWith<_$FetchTravelProductsById> get copyWith =>
      __$$FetchTravelProductsByIdCopyWithImpl<_$FetchTravelProductsById>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelProductById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelProductById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelProductById != null) {
      return fetchTravelProductById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelProductById != null) {
      return fetchTravelProductById(this);
    }
    return orElse();
  }
}

abstract class FetchTravelProductsById implements TravelEvent {
  const factory FetchTravelProductsById({required final String id}) =
      _$FetchTravelProductsById;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchTravelProductsByIdCopyWith<_$FetchTravelProductsById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTravelSearchLocationsCopyWith<$Res> {
  factory _$$FetchTravelSearchLocationsCopyWith(
          _$FetchTravelSearchLocations value,
          $Res Function(_$FetchTravelSearchLocations) then) =
      __$$FetchTravelSearchLocationsCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchquery});
}

/// @nodoc
class __$$FetchTravelSearchLocationsCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelSearchLocations>
    implements _$$FetchTravelSearchLocationsCopyWith<$Res> {
  __$$FetchTravelSearchLocationsCopyWithImpl(
      _$FetchTravelSearchLocations _value,
      $Res Function(_$FetchTravelSearchLocations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchquery = null,
  }) {
    return _then(_$FetchTravelSearchLocations(
      searchquery: null == searchquery
          ? _value.searchquery
          : searchquery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTravelSearchLocations
    with DiagnosticableTreeMixin
    implements FetchTravelSearchLocations {
  const _$FetchTravelSearchLocations({required this.searchquery});

  @override
  final String searchquery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelSearchLocations(searchquery: $searchquery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'TravelEvent.fetchTravelSearchLocations'))
      ..add(DiagnosticsProperty('searchquery', searchquery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTravelSearchLocations &&
            (identical(other.searchquery, searchquery) ||
                other.searchquery == searchquery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchquery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTravelSearchLocationsCopyWith<_$FetchTravelSearchLocations>
      get copyWith => __$$FetchTravelSearchLocationsCopyWithImpl<
          _$FetchTravelSearchLocations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchLocations(searchquery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchLocations?.call(searchquery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelSearchLocations != null) {
      return fetchTravelSearchLocations(searchquery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelSearchLocations != null) {
      return fetchTravelSearchLocations(this);
    }
    return orElse();
  }
}

abstract class FetchTravelSearchLocations implements TravelEvent {
  const factory FetchTravelSearchLocations(
      {required final String searchquery}) = _$FetchTravelSearchLocations;

  String get searchquery;
  @JsonKey(ignore: true)
  _$$FetchTravelSearchLocationsCopyWith<_$FetchTravelSearchLocations>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductByLocationCopyWith<$Res> {
  factory _$$FetchProductByLocationCopyWith(_$FetchProductByLocation value,
          $Res Function(_$FetchProductByLocation) then) =
      __$$FetchProductByLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$FetchProductByLocationCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchProductByLocation>
    implements _$$FetchProductByLocationCopyWith<$Res> {
  __$$FetchProductByLocationCopyWithImpl(_$FetchProductByLocation _value,
      $Res Function(_$FetchProductByLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$FetchProductByLocation(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductByLocation
    with DiagnosticableTreeMixin
    implements FetchProductByLocation {
  const _$FetchProductByLocation({required this.location});

  @override
  final String location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchProductByLocation(location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.fetchProductByLocation'))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductByLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductByLocationCopyWith<_$FetchProductByLocation> get copyWith =>
      __$$FetchProductByLocationCopyWithImpl<_$FetchProductByLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchProductByLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchProductByLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchProductByLocation != null) {
      return fetchProductByLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchProductByLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchProductByLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchProductByLocation != null) {
      return fetchProductByLocation(this);
    }
    return orElse();
  }
}

abstract class FetchProductByLocation implements TravelEvent {
  const factory FetchProductByLocation({required final String location}) =
      _$FetchProductByLocation;

  String get location;
  @JsonKey(ignore: true)
  _$$FetchProductByLocationCopyWith<_$FetchProductByLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookTravelEventCopyWith<$Res> {
  factory _$$BookTravelEventCopyWith(
          _$BookTravelEvent value, $Res Function(_$BookTravelEvent) then) =
      __$$BookTravelEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      dynamic passPortPhoto,
      String country,
      String productId});
}

/// @nodoc
class __$$BookTravelEventCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$BookTravelEvent>
    implements _$$BookTravelEventCopyWith<$Res> {
  __$$BookTravelEventCopyWithImpl(
      _$BookTravelEvent _value, $Res Function(_$BookTravelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? passPortPhoto = freezed,
    Object? country = null,
    Object? productId = null,
  }) {
    return _then(_$BookTravelEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passPortPhoto: freezed == passPortPhoto
          ? _value.passPortPhoto
          : passPortPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookTravelEvent
    with DiagnosticableTreeMixin
    implements BookTravelEvent {
  const _$BookTravelEvent(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.passPortPhoto,
      required this.country,
      required this.productId});

  @override
  final String name;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final dynamic passPortPhoto;
  @override
  final String country;
  @override
  final String productId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.bookTravelEvent(name: $name, email: $email, phoneNumber: $phoneNumber, passPortPhoto: $passPortPhoto, country: $country, productId: $productId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.bookTravelEvent'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('passPortPhoto', passPortPhoto))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('productId', productId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookTravelEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.passPortPhoto, passPortPhoto) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, phoneNumber,
      const DeepCollectionEquality().hash(passPortPhoto), country, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookTravelEventCopyWith<_$BookTravelEvent> get copyWith =>
      __$$BookTravelEventCopyWithImpl<_$BookTravelEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return bookTravelEvent(
        name, email, phoneNumber, passPortPhoto, country, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return bookTravelEvent?.call(
        name, email, phoneNumber, passPortPhoto, country, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (bookTravelEvent != null) {
      return bookTravelEvent(
          name, email, phoneNumber, passPortPhoto, country, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return bookTravelEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return bookTravelEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (bookTravelEvent != null) {
      return bookTravelEvent(this);
    }
    return orElse();
  }
}

abstract class BookTravelEvent implements TravelEvent {
  const factory BookTravelEvent(
      {required final String name,
      required final String email,
      required final String phoneNumber,
      required final dynamic passPortPhoto,
      required final String country,
      required final String productId}) = _$BookTravelEvent;

  String get name;
  String get email;
  String get phoneNumber;
  dynamic get passPortPhoto;
  String get country;
  String get productId;
  @JsonKey(ignore: true)
  _$$BookTravelEventCopyWith<_$BookTravelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncreaseGuestEventCopyWith<$Res> {
  factory _$$IncreaseGuestEventCopyWith(_$IncreaseGuestEvent value,
          $Res Function(_$IncreaseGuestEvent) then) =
      __$$IncreaseGuestEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncreaseGuestEventCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$IncreaseGuestEvent>
    implements _$$IncreaseGuestEventCopyWith<$Res> {
  __$$IncreaseGuestEventCopyWithImpl(
      _$IncreaseGuestEvent _value, $Res Function(_$IncreaseGuestEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncreaseGuestEvent
    with DiagnosticableTreeMixin
    implements IncreaseGuestEvent {
  const _$IncreaseGuestEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.increaseGuestEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TravelEvent.increaseGuestEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncreaseGuestEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return increaseGuestEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return increaseGuestEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (increaseGuestEvent != null) {
      return increaseGuestEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return increaseGuestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return increaseGuestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (increaseGuestEvent != null) {
      return increaseGuestEvent(this);
    }
    return orElse();
  }
}

abstract class IncreaseGuestEvent implements TravelEvent {
  const factory IncreaseGuestEvent() = _$IncreaseGuestEvent;
}

/// @nodoc
abstract class _$$DecreaseGuestEventCopyWith<$Res> {
  factory _$$DecreaseGuestEventCopyWith(_$DecreaseGuestEvent value,
          $Res Function(_$DecreaseGuestEvent) then) =
      __$$DecreaseGuestEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecreaseGuestEventCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$DecreaseGuestEvent>
    implements _$$DecreaseGuestEventCopyWith<$Res> {
  __$$DecreaseGuestEventCopyWithImpl(
      _$DecreaseGuestEvent _value, $Res Function(_$DecreaseGuestEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecreaseGuestEvent
    with DiagnosticableTreeMixin
    implements DecreaseGuestEvent {
  const _$DecreaseGuestEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.decreaseGuestEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TravelEvent.decreaseGuestEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecreaseGuestEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return decreaseGuestEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return decreaseGuestEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (decreaseGuestEvent != null) {
      return decreaseGuestEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return decreaseGuestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return decreaseGuestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (decreaseGuestEvent != null) {
      return decreaseGuestEvent(this);
    }
    return orElse();
  }
}

abstract class DecreaseGuestEvent implements TravelEvent {
  const factory DecreaseGuestEvent() = _$DecreaseGuestEvent;
}

/// @nodoc
abstract class _$$SelectCountryEventCopyWith<$Res> {
  factory _$$SelectCountryEventCopyWith(_$SelectCountryEvent value,
          $Res Function(_$SelectCountryEvent) then) =
      __$$SelectCountryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String country});
}

/// @nodoc
class __$$SelectCountryEventCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$SelectCountryEvent>
    implements _$$SelectCountryEventCopyWith<$Res> {
  __$$SelectCountryEventCopyWithImpl(
      _$SelectCountryEvent _value, $Res Function(_$SelectCountryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$SelectCountryEvent(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCountryEvent
    with DiagnosticableTreeMixin
    implements SelectCountryEvent {
  const _$SelectCountryEvent({required this.country});

  @override
  final String country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.selectCountryEvent(country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.selectCountryEvent'))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCountryEvent &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCountryEventCopyWith<_$SelectCountryEvent> get copyWith =>
      __$$SelectCountryEventCopyWithImpl<_$SelectCountryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return selectCountryEvent(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return selectCountryEvent?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (selectCountryEvent != null) {
      return selectCountryEvent(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return selectCountryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return selectCountryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (selectCountryEvent != null) {
      return selectCountryEvent(this);
    }
    return orElse();
  }
}

abstract class SelectCountryEvent implements TravelEvent {
  const factory SelectCountryEvent({required final String country}) =
      _$SelectCountryEvent;

  String get country;
  @JsonKey(ignore: true)
  _$$SelectCountryEventCopyWith<_$SelectCountryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveSearchLocationCopyWith<$Res> {
  factory _$$SaveSearchLocationCopyWith(_$SaveSearchLocation value,
          $Res Function(_$SaveSearchLocation) then) =
      __$$SaveSearchLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$SaveSearchLocationCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$SaveSearchLocation>
    implements _$$SaveSearchLocationCopyWith<$Res> {
  __$$SaveSearchLocationCopyWithImpl(
      _$SaveSearchLocation _value, $Res Function(_$SaveSearchLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SaveSearchLocation(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveSearchLocation
    with DiagnosticableTreeMixin
    implements SaveSearchLocation {
  const _$SaveSearchLocation({required this.location});

  @override
  final String location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.saveSearchLocation(location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.saveSearchLocation'))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSearchLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSearchLocationCopyWith<_$SaveSearchLocation> get copyWith =>
      __$$SaveSearchLocationCopyWithImpl<_$SaveSearchLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return saveSearchLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return saveSearchLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (saveSearchLocation != null) {
      return saveSearchLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return saveSearchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return saveSearchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (saveSearchLocation != null) {
      return saveSearchLocation(this);
    }
    return orElse();
  }
}

abstract class SaveSearchLocation implements TravelEvent {
  const factory SaveSearchLocation({required final String location}) =
      _$SaveSearchLocation;

  String get location;
  @JsonKey(ignore: true)
  _$$SaveSearchLocationCopyWith<_$SaveSearchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchDataCopyWith<$Res> {
  factory _$$ResetSearchDataCopyWith(
          _$ResetSearchData value, $Res Function(_$ResetSearchData) then) =
      __$$ResetSearchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSearchDataCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$ResetSearchData>
    implements _$$ResetSearchDataCopyWith<$Res> {
  __$$ResetSearchDataCopyWithImpl(
      _$ResetSearchData _value, $Res Function(_$ResetSearchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSearchData
    with DiagnosticableTreeMixin
    implements ResetSearchData {
  const _$ResetSearchData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.resetSearchData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelEvent.resetSearchData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSearchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return resetSearchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return resetSearchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (resetSearchData != null) {
      return resetSearchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return resetSearchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return resetSearchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (resetSearchData != null) {
      return resetSearchData(this);
    }
    return orElse();
  }
}

abstract class ResetSearchData implements TravelEvent {
  const factory ResetSearchData() = _$ResetSearchData;
}

/// @nodoc
abstract class _$$ShowCalendarEventCopyWith<$Res> {
  factory _$$ShowCalendarEventCopyWith(
          _$ShowCalendarEvent value, $Res Function(_$ShowCalendarEvent) then) =
      __$$ShowCalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowCalendarEventCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$ShowCalendarEvent>
    implements _$$ShowCalendarEventCopyWith<$Res> {
  __$$ShowCalendarEventCopyWithImpl(
      _$ShowCalendarEvent _value, $Res Function(_$ShowCalendarEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowCalendarEvent
    with DiagnosticableTreeMixin
    implements ShowCalendarEvent {
  const _$ShowCalendarEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.showCalendarEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TravelEvent.showCalendarEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowCalendarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return showCalendarEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return showCalendarEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (showCalendarEvent != null) {
      return showCalendarEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return showCalendarEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return showCalendarEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (showCalendarEvent != null) {
      return showCalendarEvent(this);
    }
    return orElse();
  }
}

abstract class ShowCalendarEvent implements TravelEvent {
  const factory ShowCalendarEvent() = _$ShowCalendarEvent;
}

/// @nodoc
abstract class _$$SelectDateRangeEventCopyWith<$Res> {
  factory _$$SelectDateRangeEventCopyWith(_$SelectDateRangeEvent value,
          $Res Function(_$SelectDateRangeEvent) then) =
      __$$SelectDateRangeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime start, DateTime end, DateTime focusedDay});
}

/// @nodoc
class __$$SelectDateRangeEventCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$SelectDateRangeEvent>
    implements _$$SelectDateRangeEventCopyWith<$Res> {
  __$$SelectDateRangeEventCopyWithImpl(_$SelectDateRangeEvent _value,
      $Res Function(_$SelectDateRangeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? focusedDay = null,
  }) {
    return _then(_$SelectDateRangeEvent(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDateRangeEvent
    with DiagnosticableTreeMixin
    implements SelectDateRangeEvent {
  const _$SelectDateRangeEvent(
      {required this.start, required this.end, required this.focusedDay});

  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final DateTime focusedDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.selectDateRangeEvent(start: $start, end: $end, focusedDay: $focusedDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.selectDateRangeEvent'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('focusedDay', focusedDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateRangeEvent &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, focusedDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateRangeEventCopyWith<_$SelectDateRangeEvent> get copyWith =>
      __$$SelectDateRangeEventCopyWithImpl<_$SelectDateRangeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return selectDateRangeEvent(start, end, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return selectDateRangeEvent?.call(start, end, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (selectDateRangeEvent != null) {
      return selectDateRangeEvent(start, end, focusedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return selectDateRangeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return selectDateRangeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (selectDateRangeEvent != null) {
      return selectDateRangeEvent(this);
    }
    return orElse();
  }
}

abstract class SelectDateRangeEvent implements TravelEvent {
  const factory SelectDateRangeEvent(
      {required final DateTime start,
      required final DateTime end,
      required final DateTime focusedDay}) = _$SelectDateRangeEvent;

  DateTime get start;
  DateTime get end;
  DateTime get focusedDay;
  @JsonKey(ignore: true)
  _$$SelectDateRangeEventCopyWith<_$SelectDateRangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTravelSearchedProductsCopyWith<$Res> {
  factory _$$FetchTravelSearchedProductsCopyWith(
          _$FetchTravelSearchedProducts value,
          $Res Function(_$FetchTravelSearchedProducts) then) =
      __$$FetchTravelSearchedProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String country, String location, String date});
}

/// @nodoc
class __$$FetchTravelSearchedProductsCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelSearchedProducts>
    implements _$$FetchTravelSearchedProductsCopyWith<$Res> {
  __$$FetchTravelSearchedProductsCopyWithImpl(
      _$FetchTravelSearchedProducts _value,
      $Res Function(_$FetchTravelSearchedProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? location = null,
    Object? date = null,
  }) {
    return _then(_$FetchTravelSearchedProducts(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTravelSearchedProducts
    with DiagnosticableTreeMixin
    implements FetchTravelSearchedProducts {
  const _$FetchTravelSearchedProducts(
      {required this.country, required this.location, required this.date});

  @override
  final String country;
  @override
  final String location;
  @override
  final String date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelSearchedProducts(country: $country, location: $location, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TravelEvent.fetchTravelSearchedProducts'))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTravelSearchedProducts &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, location, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTravelSearchedProductsCopyWith<_$FetchTravelSearchedProducts>
      get copyWith => __$$FetchTravelSearchedProductsCopyWithImpl<
          _$FetchTravelSearchedProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchedProducts(country, location, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchedProducts?.call(country, location, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelSearchedProducts != null) {
      return fetchTravelSearchedProducts(country, location, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelSearchedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelSearchedProducts != null) {
      return fetchTravelSearchedProducts(this);
    }
    return orElse();
  }
}

abstract class FetchTravelSearchedProducts implements TravelEvent {
  const factory FetchTravelSearchedProducts(
      {required final String country,
      required final String location,
      required final String date}) = _$FetchTravelSearchedProducts;

  String get country;
  String get location;
  String get date;
  @JsonKey(ignore: true)
  _$$FetchTravelSearchedProductsCopyWith<_$FetchTravelSearchedProducts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTravelWishlistProductsCopyWith<$Res> {
  factory _$$FetchTravelWishlistProductsCopyWith(
          _$FetchTravelWishlistProducts value,
          $Res Function(_$FetchTravelWishlistProducts) then) =
      __$$FetchTravelWishlistProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTravelWishlistProductsCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelWishlistProducts>
    implements _$$FetchTravelWishlistProductsCopyWith<$Res> {
  __$$FetchTravelWishlistProductsCopyWithImpl(
      _$FetchTravelWishlistProducts _value,
      $Res Function(_$FetchTravelWishlistProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTravelWishlistProducts
    with DiagnosticableTreeMixin
    implements FetchTravelWishlistProducts {
  const _$FetchTravelWishlistProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelWishlistProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TravelEvent.fetchTravelWishlistProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTravelWishlistProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelWishlistProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelWishlistProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelWishlistProducts != null) {
      return fetchTravelWishlistProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelWishlistProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelWishlistProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelWishlistProducts != null) {
      return fetchTravelWishlistProducts(this);
    }
    return orElse();
  }
}

abstract class FetchTravelWishlistProducts implements TravelEvent {
  const factory FetchTravelWishlistProducts() = _$FetchTravelWishlistProducts;
}

/// @nodoc
abstract class _$$AddTravelWishlistCopyWith<$Res> {
  factory _$$AddTravelWishlistCopyWith(
          _$AddTravelWishlist value, $Res Function(_$AddTravelWishlist) then) =
      __$$AddTravelWishlistCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, TravelWishlist wishlistType});
}

/// @nodoc
class __$$AddTravelWishlistCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$AddTravelWishlist>
    implements _$$AddTravelWishlistCopyWith<$Res> {
  __$$AddTravelWishlistCopyWithImpl(
      _$AddTravelWishlist _value, $Res Function(_$AddTravelWishlist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? wishlistType = null,
  }) {
    return _then(_$AddTravelWishlist(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      wishlistType: null == wishlistType
          ? _value.wishlistType
          : wishlistType // ignore: cast_nullable_to_non_nullable
              as TravelWishlist,
    ));
  }
}

/// @nodoc

class _$AddTravelWishlist
    with DiagnosticableTreeMixin
    implements AddTravelWishlist {
  const _$AddTravelWishlist(
      {required this.productId, required this.wishlistType});

  @override
  final String productId;
  @override
  final TravelWishlist wishlistType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.addTravelWishlist(productId: $productId, wishlistType: $wishlistType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.addTravelWishlist'))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('wishlistType', wishlistType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTravelWishlist &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.wishlistType, wishlistType) ||
                other.wishlistType == wishlistType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, wishlistType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTravelWishlistCopyWith<_$AddTravelWishlist> get copyWith =>
      __$$AddTravelWishlistCopyWithImpl<_$AddTravelWishlist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return addTravelWishlist(productId, wishlistType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return addTravelWishlist?.call(productId, wishlistType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (addTravelWishlist != null) {
      return addTravelWishlist(productId, wishlistType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return addTravelWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return addTravelWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (addTravelWishlist != null) {
      return addTravelWishlist(this);
    }
    return orElse();
  }
}

abstract class AddTravelWishlist implements TravelEvent {
  const factory AddTravelWishlist(
      {required final String productId,
      required final TravelWishlist wishlistType}) = _$AddTravelWishlist;

  String get productId;
  TravelWishlist get wishlistType;
  @JsonKey(ignore: true)
  _$$AddTravelWishlistCopyWith<_$AddTravelWishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelBookingCompletedCopyWith<$Res> {
  factory _$$TravelBookingCompletedCopyWith(_$TravelBookingCompleted value,
          $Res Function(_$TravelBookingCompleted) then) =
      __$$TravelBookingCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelBookingCompletedCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$TravelBookingCompleted>
    implements _$$TravelBookingCompletedCopyWith<$Res> {
  __$$TravelBookingCompletedCopyWithImpl(_$TravelBookingCompleted _value,
      $Res Function(_$TravelBookingCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TravelBookingCompleted
    with DiagnosticableTreeMixin
    implements TravelBookingCompleted {
  const _$TravelBookingCompleted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.travelbookingCompleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TravelEvent.travelbookingCompleted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TravelBookingCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return travelbookingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return travelbookingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (travelbookingCompleted != null) {
      return travelbookingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return travelbookingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return travelbookingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (travelbookingCompleted != null) {
      return travelbookingCompleted(this);
    }
    return orElse();
  }
}

abstract class TravelBookingCompleted implements TravelEvent {
  const factory TravelBookingCompleted() = _$TravelBookingCompleted;
}

/// @nodoc
abstract class _$$FetchTravelHomeBannerPackagesCopyWith<$Res> {
  factory _$$FetchTravelHomeBannerPackagesCopyWith(
          _$FetchTravelHomeBannerPackages value,
          $Res Function(_$FetchTravelHomeBannerPackages) then) =
      __$$FetchTravelHomeBannerPackagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTravelHomeBannerPackagesCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$FetchTravelHomeBannerPackages>
    implements _$$FetchTravelHomeBannerPackagesCopyWith<$Res> {
  __$$FetchTravelHomeBannerPackagesCopyWithImpl(
      _$FetchTravelHomeBannerPackages _value,
      $Res Function(_$FetchTravelHomeBannerPackages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTravelHomeBannerPackages
    with DiagnosticableTreeMixin
    implements FetchTravelHomeBannerPackages {
  const _$FetchTravelHomeBannerPackages();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.fetchTravelHomeBannerPackages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TravelEvent.fetchTravelHomeBannerPackages'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTravelHomeBannerPackages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeBannerIndex,
    required TResult Function(int index) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function() fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function() fetchTravelPopularProducts,
    required TResult Function() fetchBestPlacesProducts,
    required TResult Function() fetchTravelCities,
    required TResult Function(String id) fetchTravelProductById,
    required TResult Function(String searchquery) fetchTravelSearchLocations,
    required TResult Function(String location) fetchProductByLocation,
    required TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)
        bookTravelEvent,
    required TResult Function() increaseGuestEvent,
    required TResult Function() decreaseGuestEvent,
    required TResult Function(String country) selectCountryEvent,
    required TResult Function(String location) saveSearchLocation,
    required TResult Function() resetSearchData,
    required TResult Function() showCalendarEvent,
    required TResult Function(DateTime start, DateTime end, DateTime focusedDay)
        selectDateRangeEvent,
    required TResult Function(String country, String location, String date)
        fetchTravelSearchedProducts,
    required TResult Function() fetchTravelWishlistProducts,
    required TResult Function(String productId, TravelWishlist wishlistType)
        addTravelWishlist,
    required TResult Function() travelbookingCompleted,
    required TResult Function() fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelHomeBannerPackages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeBannerIndex,
    TResult? Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function()? fetchTravelPopularProducts,
    TResult? Function()? fetchBestPlacesProducts,
    TResult? Function()? fetchTravelCities,
    TResult? Function(String id)? fetchTravelProductById,
    TResult? Function(String searchquery)? fetchTravelSearchLocations,
    TResult? Function(String location)? fetchProductByLocation,
    TResult? Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult? Function()? increaseGuestEvent,
    TResult? Function()? decreaseGuestEvent,
    TResult? Function(String country)? selectCountryEvent,
    TResult? Function(String location)? saveSearchLocation,
    TResult? Function()? resetSearchData,
    TResult? Function()? showCalendarEvent,
    TResult? Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult? Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult? Function()? fetchTravelWishlistProducts,
    TResult? Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult? Function()? travelbookingCompleted,
    TResult? Function()? fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelHomeBannerPackages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeBannerIndex,
    TResult Function(int index)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function()? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function()? fetchTravelPopularProducts,
    TResult Function()? fetchBestPlacesProducts,
    TResult Function()? fetchTravelCities,
    TResult Function(String id)? fetchTravelProductById,
    TResult Function(String searchquery)? fetchTravelSearchLocations,
    TResult Function(String location)? fetchProductByLocation,
    TResult Function(String name, String email, String phoneNumber,
            dynamic passPortPhoto, String country, String productId)?
        bookTravelEvent,
    TResult Function()? increaseGuestEvent,
    TResult Function()? decreaseGuestEvent,
    TResult Function(String country)? selectCountryEvent,
    TResult Function(String location)? saveSearchLocation,
    TResult Function()? resetSearchData,
    TResult Function()? showCalendarEvent,
    TResult Function(DateTime start, DateTime end, DateTime focusedDay)?
        selectDateRangeEvent,
    TResult Function(String country, String location, String date)?
        fetchTravelSearchedProducts,
    TResult Function()? fetchTravelWishlistProducts,
    TResult Function(String productId, TravelWishlist wishlistType)?
        addTravelWishlist,
    TResult Function()? travelbookingCompleted,
    TResult Function()? fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelHomeBannerPackages != null) {
      return fetchTravelHomeBannerPackages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBannerIndex value) changeBannerIndex,
    required TResult Function(ChangeTravelTabIndex value) changeTravelTabIndex,
<<<<<<< HEAD
=======
    required TResult Function(FetchTravelBanners value) fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    required TResult Function(FetchTravelPopularProducts value)
        fetchTravelPopularProducts,
    required TResult Function(FetchBestPlacesProducts value)
        fetchBestPlacesProducts,
    required TResult Function(FetchTravelCities value) fetchTravelCities,
    required TResult Function(FetchTravelProductsById value)
        fetchTravelProductById,
    required TResult Function(FetchTravelSearchLocations value)
        fetchTravelSearchLocations,
    required TResult Function(FetchProductByLocation value)
        fetchProductByLocation,
    required TResult Function(BookTravelEvent value) bookTravelEvent,
    required TResult Function(IncreaseGuestEvent value) increaseGuestEvent,
    required TResult Function(DecreaseGuestEvent value) decreaseGuestEvent,
    required TResult Function(SelectCountryEvent value) selectCountryEvent,
    required TResult Function(SaveSearchLocation value) saveSearchLocation,
    required TResult Function(ResetSearchData value) resetSearchData,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
    required TResult Function(SelectDateRangeEvent value) selectDateRangeEvent,
    required TResult Function(FetchTravelSearchedProducts value)
        fetchTravelSearchedProducts,
    required TResult Function(FetchTravelWishlistProducts value)
        fetchTravelWishlistProducts,
    required TResult Function(AddTravelWishlist value) addTravelWishlist,
    required TResult Function(TravelBookingCompleted value)
        travelbookingCompleted,
    required TResult Function(FetchTravelHomeBannerPackages value)
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelHomeBannerPackages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult? Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult? Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult? Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult? Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult? Function(FetchTravelCities value)? fetchTravelCities,
    TResult? Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult? Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult? Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult? Function(BookTravelEvent value)? bookTravelEvent,
    TResult? Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult? Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult? Function(SelectCountryEvent value)? selectCountryEvent,
    TResult? Function(SaveSearchLocation value)? saveSearchLocation,
    TResult? Function(ResetSearchData value)? resetSearchData,
    TResult? Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult? Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult? Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult? Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult? Function(AddTravelWishlist value)? addTravelWishlist,
    TResult? Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult? Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
  }) {
    return fetchTravelHomeBannerPackages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBannerIndex value)? changeBannerIndex,
    TResult Function(ChangeTravelTabIndex value)? changeTravelTabIndex,
<<<<<<< HEAD
=======
    TResult Function(FetchTravelBanners value)? fetchTravelBanners,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    TResult Function(FetchTravelPopularProducts value)?
        fetchTravelPopularProducts,
    TResult Function(FetchBestPlacesProducts value)? fetchBestPlacesProducts,
    TResult Function(FetchTravelCities value)? fetchTravelCities,
    TResult Function(FetchTravelProductsById value)? fetchTravelProductById,
    TResult Function(FetchTravelSearchLocations value)?
        fetchTravelSearchLocations,
    TResult Function(FetchProductByLocation value)? fetchProductByLocation,
    TResult Function(BookTravelEvent value)? bookTravelEvent,
    TResult Function(IncreaseGuestEvent value)? increaseGuestEvent,
    TResult Function(DecreaseGuestEvent value)? decreaseGuestEvent,
    TResult Function(SelectCountryEvent value)? selectCountryEvent,
    TResult Function(SaveSearchLocation value)? saveSearchLocation,
    TResult Function(ResetSearchData value)? resetSearchData,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    TResult Function(SelectDateRangeEvent value)? selectDateRangeEvent,
    TResult Function(FetchTravelSearchedProducts value)?
        fetchTravelSearchedProducts,
    TResult Function(FetchTravelWishlistProducts value)?
        fetchTravelWishlistProducts,
    TResult Function(AddTravelWishlist value)? addTravelWishlist,
    TResult Function(TravelBookingCompleted value)? travelbookingCompleted,
    TResult Function(FetchTravelHomeBannerPackages value)?
        fetchTravelHomeBannerPackages,
    required TResult orElse(),
  }) {
    if (fetchTravelHomeBannerPackages != null) {
      return fetchTravelHomeBannerPackages(this);
    }
    return orElse();
  }
}

abstract class FetchTravelHomeBannerPackages implements TravelEvent {
  const factory FetchTravelHomeBannerPackages() =
      _$FetchTravelHomeBannerPackages;
}

/// @nodoc
mixin _$TravelState {
  int get index => throw _privateConstructorUsedError;
<<<<<<< HEAD
=======
  TravelBannerModel? get travelBannerModel =>
      throw _privateConstructorUsedError;
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  bool get isLoading => throw _privateConstructorUsedError;
  TravelPopularProductsModel? get travelPopularProductsModel =>
      throw _privateConstructorUsedError;
  TravelCitiesModel? get travelCitiesModel =>
      throw _privateConstructorUsedError;
  TravelProductsModel? get travelProductsModel =>
      throw _privateConstructorUsedError;
  List<TravelProduct>? get searchProducts => throw _privateConstructorUsedError;
  TravelBestPlacesModel? get travelBestPlacesModel =>
      throw _privateConstructorUsedError;
  TravelPopularProductsModel? get productByLocationModel =>
      throw _privateConstructorUsedError;
  int get numberOfGuest => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  List<TravelSearchLocationModels>? get travelSearchLocationModels =>
      throw _privateConstructorUsedError;
  String get searchedLocation => throw _privateConstructorUsedError;
  bool get showCalendar => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;
  DateTime? get selectedStartDate => throw _privateConstructorUsedError;
  DateTime? get selectedEndDate => throw _privateConstructorUsedError;
  DateTime get focusDay => throw _privateConstructorUsedError;
  String get formattedDateRang => throw _privateConstructorUsedError;
  List<TravelProductsModel>? get wishlistProducts =>
      throw _privateConstructorUsedError;
  Set<String>? get travelWishlistItems => throw _privateConstructorUsedError;
  bool get bookingSuccess => throw _privateConstructorUsedError;
  List<TravelPackageItems>? get travelHomeBannerPackages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelStateCopyWith<TravelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelStateCopyWith<$Res> {
  factory $TravelStateCopyWith(
          TravelState value, $Res Function(TravelState) then) =
      _$TravelStateCopyWithImpl<$Res, TravelState>;
  @useResult
  $Res call(
      {int index,
<<<<<<< HEAD
=======
      TravelBannerModel? travelBannerModel,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
      bool isLoading,
      TravelPopularProductsModel? travelPopularProductsModel,
      TravelCitiesModel? travelCitiesModel,
      TravelProductsModel? travelProductsModel,
      List<TravelProduct>? searchProducts,
      TravelBestPlacesModel? travelBestPlacesModel,
      TravelPopularProductsModel? productByLocationModel,
      int numberOfGuest,
      String country,
      List<TravelSearchLocationModels>? travelSearchLocationModels,
      String searchedLocation,
      bool showCalendar,
      int tabIndex,
      DateTime? selectedStartDate,
      DateTime? selectedEndDate,
      DateTime focusDay,
      String formattedDateRang,
      List<TravelProductsModel>? wishlistProducts,
      Set<String>? travelWishlistItems,
      bool bookingSuccess,
      List<TravelPackageItems>? travelHomeBannerPackages});

<<<<<<< HEAD
=======
  $TravelBannerModelCopyWith<$Res>? get travelBannerModel;
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  $TravelPopularProductsModelCopyWith<$Res>? get travelPopularProductsModel;
  $TravelCitiesModelCopyWith<$Res>? get travelCitiesModel;
  $TravelProductsModelCopyWith<$Res>? get travelProductsModel;
  $TravelBestPlacesModelCopyWith<$Res>? get travelBestPlacesModel;
  $TravelPopularProductsModelCopyWith<$Res>? get productByLocationModel;
}

/// @nodoc
class _$TravelStateCopyWithImpl<$Res, $Val extends TravelState>
    implements $TravelStateCopyWith<$Res> {
  _$TravelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
<<<<<<< HEAD
=======
    Object? travelBannerModel = freezed,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    Object? isLoading = null,
    Object? travelPopularProductsModel = freezed,
    Object? travelCitiesModel = freezed,
    Object? travelProductsModel = freezed,
    Object? searchProducts = freezed,
    Object? travelBestPlacesModel = freezed,
    Object? productByLocationModel = freezed,
    Object? numberOfGuest = null,
    Object? country = null,
    Object? travelSearchLocationModels = freezed,
    Object? searchedLocation = null,
    Object? showCalendar = null,
    Object? tabIndex = null,
    Object? selectedStartDate = freezed,
    Object? selectedEndDate = freezed,
    Object? focusDay = null,
    Object? formattedDateRang = null,
    Object? wishlistProducts = freezed,
    Object? travelWishlistItems = freezed,
    Object? bookingSuccess = null,
    Object? travelHomeBannerPackages = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
<<<<<<< HEAD
=======
      travelBannerModel: freezed == travelBannerModel
          ? _value.travelBannerModel
          : travelBannerModel // ignore: cast_nullable_to_non_nullable
              as TravelBannerModel?,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      travelPopularProductsModel: freezed == travelPopularProductsModel
          ? _value.travelPopularProductsModel
          : travelPopularProductsModel // ignore: cast_nullable_to_non_nullable
              as TravelPopularProductsModel?,
      travelCitiesModel: freezed == travelCitiesModel
          ? _value.travelCitiesModel
          : travelCitiesModel // ignore: cast_nullable_to_non_nullable
              as TravelCitiesModel?,
      travelProductsModel: freezed == travelProductsModel
          ? _value.travelProductsModel
          : travelProductsModel // ignore: cast_nullable_to_non_nullable
              as TravelProductsModel?,
      searchProducts: freezed == searchProducts
          ? _value.searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<TravelProduct>?,
      travelBestPlacesModel: freezed == travelBestPlacesModel
          ? _value.travelBestPlacesModel
          : travelBestPlacesModel // ignore: cast_nullable_to_non_nullable
              as TravelBestPlacesModel?,
      productByLocationModel: freezed == productByLocationModel
          ? _value.productByLocationModel
          : productByLocationModel // ignore: cast_nullable_to_non_nullable
              as TravelPopularProductsModel?,
      numberOfGuest: null == numberOfGuest
          ? _value.numberOfGuest
          : numberOfGuest // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      travelSearchLocationModels: freezed == travelSearchLocationModels
          ? _value.travelSearchLocationModels
          : travelSearchLocationModels // ignore: cast_nullable_to_non_nullable
              as List<TravelSearchLocationModels>?,
      searchedLocation: null == searchedLocation
          ? _value.searchedLocation
          : searchedLocation // ignore: cast_nullable_to_non_nullable
              as String,
      showCalendar: null == showCalendar
          ? _value.showCalendar
          : showCalendar // ignore: cast_nullable_to_non_nullable
              as bool,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedStartDate: freezed == selectedStartDate
          ? _value.selectedStartDate
          : selectedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEndDate: freezed == selectedEndDate
          ? _value.selectedEndDate
          : selectedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusDay: null == focusDay
          ? _value.focusDay
          : focusDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedDateRang: null == formattedDateRang
          ? _value.formattedDateRang
          : formattedDateRang // ignore: cast_nullable_to_non_nullable
              as String,
      wishlistProducts: freezed == wishlistProducts
          ? _value.wishlistProducts
          : wishlistProducts // ignore: cast_nullable_to_non_nullable
              as List<TravelProductsModel>?,
      travelWishlistItems: freezed == travelWishlistItems
          ? _value.travelWishlistItems
          : travelWishlistItems // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      bookingSuccess: null == bookingSuccess
          ? _value.bookingSuccess
          : bookingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      travelHomeBannerPackages: freezed == travelHomeBannerPackages
          ? _value.travelHomeBannerPackages
          : travelHomeBannerPackages // ignore: cast_nullable_to_non_nullable
              as List<TravelPackageItems>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
<<<<<<< HEAD
=======
  $TravelBannerModelCopyWith<$Res>? get travelBannerModel {
    if (_value.travelBannerModel == null) {
      return null;
    }

    return $TravelBannerModelCopyWith<$Res>(_value.travelBannerModel!, (value) {
      return _then(_value.copyWith(travelBannerModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  $TravelPopularProductsModelCopyWith<$Res>? get travelPopularProductsModel {
    if (_value.travelPopularProductsModel == null) {
      return null;
    }

    return $TravelPopularProductsModelCopyWith<$Res>(
        _value.travelPopularProductsModel!, (value) {
      return _then(_value.copyWith(travelPopularProductsModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCitiesModelCopyWith<$Res>? get travelCitiesModel {
    if (_value.travelCitiesModel == null) {
      return null;
    }

    return $TravelCitiesModelCopyWith<$Res>(_value.travelCitiesModel!, (value) {
      return _then(_value.copyWith(travelCitiesModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelProductsModelCopyWith<$Res>? get travelProductsModel {
    if (_value.travelProductsModel == null) {
      return null;
    }

    return $TravelProductsModelCopyWith<$Res>(_value.travelProductsModel!,
        (value) {
      return _then(_value.copyWith(travelProductsModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelBestPlacesModelCopyWith<$Res>? get travelBestPlacesModel {
    if (_value.travelBestPlacesModel == null) {
      return null;
    }

    return $TravelBestPlacesModelCopyWith<$Res>(_value.travelBestPlacesModel!,
        (value) {
      return _then(_value.copyWith(travelBestPlacesModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelPopularProductsModelCopyWith<$Res>? get productByLocationModel {
    if (_value.productByLocationModel == null) {
      return null;
    }

    return $TravelPopularProductsModelCopyWith<$Res>(
        _value.productByLocationModel!, (value) {
      return _then(_value.copyWith(productByLocationModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelStateCopyWith<$Res>
    implements $TravelStateCopyWith<$Res> {
  factory _$$_TravelStateCopyWith(
          _$_TravelState value, $Res Function(_$_TravelState) then) =
      __$$_TravelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
<<<<<<< HEAD
=======
      TravelBannerModel? travelBannerModel,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
      bool isLoading,
      TravelPopularProductsModel? travelPopularProductsModel,
      TravelCitiesModel? travelCitiesModel,
      TravelProductsModel? travelProductsModel,
      List<TravelProduct>? searchProducts,
      TravelBestPlacesModel? travelBestPlacesModel,
      TravelPopularProductsModel? productByLocationModel,
      int numberOfGuest,
      String country,
      List<TravelSearchLocationModels>? travelSearchLocationModels,
      String searchedLocation,
      bool showCalendar,
      int tabIndex,
      DateTime? selectedStartDate,
      DateTime? selectedEndDate,
      DateTime focusDay,
      String formattedDateRang,
      List<TravelProductsModel>? wishlistProducts,
      Set<String>? travelWishlistItems,
      bool bookingSuccess,
      List<TravelPackageItems>? travelHomeBannerPackages});

  @override
<<<<<<< HEAD
=======
  $TravelBannerModelCopyWith<$Res>? get travelBannerModel;
  @override
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  $TravelPopularProductsModelCopyWith<$Res>? get travelPopularProductsModel;
  @override
  $TravelCitiesModelCopyWith<$Res>? get travelCitiesModel;
  @override
  $TravelProductsModelCopyWith<$Res>? get travelProductsModel;
  @override
  $TravelBestPlacesModelCopyWith<$Res>? get travelBestPlacesModel;
  @override
  $TravelPopularProductsModelCopyWith<$Res>? get productByLocationModel;
}

/// @nodoc
class __$$_TravelStateCopyWithImpl<$Res>
    extends _$TravelStateCopyWithImpl<$Res, _$_TravelState>
    implements _$$_TravelStateCopyWith<$Res> {
  __$$_TravelStateCopyWithImpl(
      _$_TravelState _value, $Res Function(_$_TravelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
<<<<<<< HEAD
=======
    Object? travelBannerModel = freezed,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
    Object? isLoading = null,
    Object? travelPopularProductsModel = freezed,
    Object? travelCitiesModel = freezed,
    Object? travelProductsModel = freezed,
    Object? searchProducts = freezed,
    Object? travelBestPlacesModel = freezed,
    Object? productByLocationModel = freezed,
    Object? numberOfGuest = null,
    Object? country = null,
    Object? travelSearchLocationModels = freezed,
    Object? searchedLocation = null,
    Object? showCalendar = null,
    Object? tabIndex = null,
    Object? selectedStartDate = freezed,
    Object? selectedEndDate = freezed,
    Object? focusDay = null,
    Object? formattedDateRang = null,
    Object? wishlistProducts = freezed,
    Object? travelWishlistItems = freezed,
    Object? bookingSuccess = null,
    Object? travelHomeBannerPackages = freezed,
  }) {
    return _then(_$_TravelState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
<<<<<<< HEAD
=======
      travelBannerModel: freezed == travelBannerModel
          ? _value.travelBannerModel
          : travelBannerModel // ignore: cast_nullable_to_non_nullable
              as TravelBannerModel?,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      travelPopularProductsModel: freezed == travelPopularProductsModel
          ? _value.travelPopularProductsModel
          : travelPopularProductsModel // ignore: cast_nullable_to_non_nullable
              as TravelPopularProductsModel?,
      travelCitiesModel: freezed == travelCitiesModel
          ? _value.travelCitiesModel
          : travelCitiesModel // ignore: cast_nullable_to_non_nullable
              as TravelCitiesModel?,
      travelProductsModel: freezed == travelProductsModel
          ? _value.travelProductsModel
          : travelProductsModel // ignore: cast_nullable_to_non_nullable
              as TravelProductsModel?,
      searchProducts: freezed == searchProducts
          ? _value._searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<TravelProduct>?,
      travelBestPlacesModel: freezed == travelBestPlacesModel
          ? _value.travelBestPlacesModel
          : travelBestPlacesModel // ignore: cast_nullable_to_non_nullable
              as TravelBestPlacesModel?,
      productByLocationModel: freezed == productByLocationModel
          ? _value.productByLocationModel
          : productByLocationModel // ignore: cast_nullable_to_non_nullable
              as TravelPopularProductsModel?,
      numberOfGuest: null == numberOfGuest
          ? _value.numberOfGuest
          : numberOfGuest // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      travelSearchLocationModels: freezed == travelSearchLocationModels
          ? _value._travelSearchLocationModels
          : travelSearchLocationModels // ignore: cast_nullable_to_non_nullable
              as List<TravelSearchLocationModels>?,
      searchedLocation: null == searchedLocation
          ? _value.searchedLocation
          : searchedLocation // ignore: cast_nullable_to_non_nullable
              as String,
      showCalendar: null == showCalendar
          ? _value.showCalendar
          : showCalendar // ignore: cast_nullable_to_non_nullable
              as bool,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedStartDate: freezed == selectedStartDate
          ? _value.selectedStartDate
          : selectedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEndDate: freezed == selectedEndDate
          ? _value.selectedEndDate
          : selectedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusDay: null == focusDay
          ? _value.focusDay
          : focusDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedDateRang: null == formattedDateRang
          ? _value.formattedDateRang
          : formattedDateRang // ignore: cast_nullable_to_non_nullable
              as String,
      wishlistProducts: freezed == wishlistProducts
          ? _value._wishlistProducts
          : wishlistProducts // ignore: cast_nullable_to_non_nullable
              as List<TravelProductsModel>?,
      travelWishlistItems: freezed == travelWishlistItems
          ? _value._travelWishlistItems
          : travelWishlistItems // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      bookingSuccess: null == bookingSuccess
          ? _value.bookingSuccess
          : bookingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      travelHomeBannerPackages: freezed == travelHomeBannerPackages
          ? _value._travelHomeBannerPackages
          : travelHomeBannerPackages // ignore: cast_nullable_to_non_nullable
              as List<TravelPackageItems>?,
    ));
  }
}

/// @nodoc

class _$_TravelState with DiagnosticableTreeMixin implements _TravelState {
  const _$_TravelState(
      {required this.index,
<<<<<<< HEAD
=======
      required this.travelBannerModel,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
      required this.isLoading,
      required this.travelPopularProductsModel,
      required this.travelCitiesModel,
      required this.travelProductsModel,
      required final List<TravelProduct>? searchProducts,
      required this.travelBestPlacesModel,
      required this.productByLocationModel,
      required this.numberOfGuest,
      required this.country,
      required final List<TravelSearchLocationModels>?
          travelSearchLocationModels,
      required this.searchedLocation,
      required this.showCalendar,
      required this.tabIndex,
      required this.selectedStartDate,
      required this.selectedEndDate,
      required this.focusDay,
      required this.formattedDateRang,
      required final List<TravelProductsModel>? wishlistProducts,
      required final Set<String>? travelWishlistItems,
      required this.bookingSuccess,
      required final List<TravelPackageItems>? travelHomeBannerPackages})
      : _searchProducts = searchProducts,
        _travelSearchLocationModels = travelSearchLocationModels,
        _wishlistProducts = wishlistProducts,
        _travelWishlistItems = travelWishlistItems,
        _travelHomeBannerPackages = travelHomeBannerPackages;

  @override
  final int index;
  @override
<<<<<<< HEAD
=======
  final TravelBannerModel? travelBannerModel;
  @override
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  final bool isLoading;
  @override
  final TravelPopularProductsModel? travelPopularProductsModel;
  @override
  final TravelCitiesModel? travelCitiesModel;
  @override
  final TravelProductsModel? travelProductsModel;
  final List<TravelProduct>? _searchProducts;
  @override
  List<TravelProduct>? get searchProducts {
    final value = _searchProducts;
    if (value == null) return null;
    if (_searchProducts is EqualUnmodifiableListView) return _searchProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TravelBestPlacesModel? travelBestPlacesModel;
  @override
  final TravelPopularProductsModel? productByLocationModel;
  @override
  final int numberOfGuest;
  @override
  final String country;
  final List<TravelSearchLocationModels>? _travelSearchLocationModels;
  @override
  List<TravelSearchLocationModels>? get travelSearchLocationModels {
    final value = _travelSearchLocationModels;
    if (value == null) return null;
    if (_travelSearchLocationModels is EqualUnmodifiableListView)
      return _travelSearchLocationModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String searchedLocation;
  @override
  final bool showCalendar;
  @override
  final int tabIndex;
  @override
  final DateTime? selectedStartDate;
  @override
  final DateTime? selectedEndDate;
  @override
  final DateTime focusDay;
  @override
  final String formattedDateRang;
  final List<TravelProductsModel>? _wishlistProducts;
  @override
  List<TravelProductsModel>? get wishlistProducts {
    final value = _wishlistProducts;
    if (value == null) return null;
    if (_wishlistProducts is EqualUnmodifiableListView)
      return _wishlistProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Set<String>? _travelWishlistItems;
  @override
  Set<String>? get travelWishlistItems {
    final value = _travelWishlistItems;
    if (value == null) return null;
    if (_travelWishlistItems is EqualUnmodifiableSetView)
      return _travelWishlistItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final bool bookingSuccess;
  final List<TravelPackageItems>? _travelHomeBannerPackages;
  @override
  List<TravelPackageItems>? get travelHomeBannerPackages {
    final value = _travelHomeBannerPackages;
    if (value == null) return null;
    if (_travelHomeBannerPackages is EqualUnmodifiableListView)
      return _travelHomeBannerPackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
<<<<<<< HEAD
    return 'TravelState(index: $index, isLoading: $isLoading, travelPopularProductsModel: $travelPopularProductsModel, travelCitiesModel: $travelCitiesModel, travelProductsModel: $travelProductsModel, searchProducts: $searchProducts, travelBestPlacesModel: $travelBestPlacesModel, productByLocationModel: $productByLocationModel, numberOfGuest: $numberOfGuest, country: $country, travelSearchLocationModels: $travelSearchLocationModels, searchedLocation: $searchedLocation, showCalendar: $showCalendar, tabIndex: $tabIndex, selectedStartDate: $selectedStartDate, selectedEndDate: $selectedEndDate, focusDay: $focusDay, formattedDateRang: $formattedDateRang, wishlistProducts: $wishlistProducts, travelWishlistItems: $travelWishlistItems, bookingSuccess: $bookingSuccess, travelHomeBannerPackages: $travelHomeBannerPackages)';
=======
    return 'TravelState(index: $index, travelBannerModel: $travelBannerModel, isLoading: $isLoading, travelPopularProductsModel: $travelPopularProductsModel, travelCitiesModel: $travelCitiesModel, travelProductsModel: $travelProductsModel, searchProducts: $searchProducts, travelBestPlacesModel: $travelBestPlacesModel, productByLocationModel: $productByLocationModel, numberOfGuest: $numberOfGuest, country: $country, travelSearchLocationModels: $travelSearchLocationModels, searchedLocation: $searchedLocation, showCalendar: $showCalendar, tabIndex: $tabIndex, selectedStartDate: $selectedStartDate, selectedEndDate: $selectedEndDate, focusDay: $focusDay, formattedDateRang: $formattedDateRang, wishlistProducts: $wishlistProducts, travelWishlistItems: $travelWishlistItems, bookingSuccess: $bookingSuccess, travelHomeBannerPackages: $travelHomeBannerPackages)';
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelState'))
      ..add(DiagnosticsProperty('index', index))
<<<<<<< HEAD
=======
      ..add(DiagnosticsProperty('travelBannerModel', travelBannerModel))
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty(
          'travelPopularProductsModel', travelPopularProductsModel))
      ..add(DiagnosticsProperty('travelCitiesModel', travelCitiesModel))
      ..add(DiagnosticsProperty('travelProductsModel', travelProductsModel))
      ..add(DiagnosticsProperty('searchProducts', searchProducts))
      ..add(DiagnosticsProperty('travelBestPlacesModel', travelBestPlacesModel))
      ..add(
          DiagnosticsProperty('productByLocationModel', productByLocationModel))
      ..add(DiagnosticsProperty('numberOfGuest', numberOfGuest))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty(
          'travelSearchLocationModels', travelSearchLocationModels))
      ..add(DiagnosticsProperty('searchedLocation', searchedLocation))
      ..add(DiagnosticsProperty('showCalendar', showCalendar))
      ..add(DiagnosticsProperty('tabIndex', tabIndex))
      ..add(DiagnosticsProperty('selectedStartDate', selectedStartDate))
      ..add(DiagnosticsProperty('selectedEndDate', selectedEndDate))
      ..add(DiagnosticsProperty('focusDay', focusDay))
      ..add(DiagnosticsProperty('formattedDateRang', formattedDateRang))
      ..add(DiagnosticsProperty('wishlistProducts', wishlistProducts))
      ..add(DiagnosticsProperty('travelWishlistItems', travelWishlistItems))
      ..add(DiagnosticsProperty('bookingSuccess', bookingSuccess))
      ..add(DiagnosticsProperty(
          'travelHomeBannerPackages', travelHomeBannerPackages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelState &&
            (identical(other.index, index) || other.index == index) &&
<<<<<<< HEAD
=======
            (identical(other.travelBannerModel, travelBannerModel) ||
                other.travelBannerModel == travelBannerModel) &&
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.travelPopularProductsModel,
                    travelPopularProductsModel) ||
                other.travelPopularProductsModel ==
                    travelPopularProductsModel) &&
            (identical(other.travelCitiesModel, travelCitiesModel) ||
                other.travelCitiesModel == travelCitiesModel) &&
            (identical(other.travelProductsModel, travelProductsModel) ||
                other.travelProductsModel == travelProductsModel) &&
            const DeepCollectionEquality()
                .equals(other._searchProducts, _searchProducts) &&
            (identical(other.travelBestPlacesModel, travelBestPlacesModel) ||
                other.travelBestPlacesModel == travelBestPlacesModel) &&
            (identical(other.productByLocationModel, productByLocationModel) ||
                other.productByLocationModel == productByLocationModel) &&
            (identical(other.numberOfGuest, numberOfGuest) ||
                other.numberOfGuest == numberOfGuest) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(
                other._travelSearchLocationModels,
                _travelSearchLocationModels) &&
            (identical(other.searchedLocation, searchedLocation) ||
                other.searchedLocation == searchedLocation) &&
            (identical(other.showCalendar, showCalendar) ||
                other.showCalendar == showCalendar) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.selectedStartDate, selectedStartDate) ||
                other.selectedStartDate == selectedStartDate) &&
            (identical(other.selectedEndDate, selectedEndDate) ||
                other.selectedEndDate == selectedEndDate) &&
            (identical(other.focusDay, focusDay) ||
                other.focusDay == focusDay) &&
            (identical(other.formattedDateRang, formattedDateRang) ||
                other.formattedDateRang == formattedDateRang) &&
            const DeepCollectionEquality()
                .equals(other._wishlistProducts, _wishlistProducts) &&
            const DeepCollectionEquality()
                .equals(other._travelWishlistItems, _travelWishlistItems) &&
            (identical(other.bookingSuccess, bookingSuccess) ||
                other.bookingSuccess == bookingSuccess) &&
            const DeepCollectionEquality().equals(
                other._travelHomeBannerPackages, _travelHomeBannerPackages));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        index,
<<<<<<< HEAD
=======
        travelBannerModel,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
        isLoading,
        travelPopularProductsModel,
        travelCitiesModel,
        travelProductsModel,
        const DeepCollectionEquality().hash(_searchProducts),
        travelBestPlacesModel,
        productByLocationModel,
        numberOfGuest,
        country,
        const DeepCollectionEquality().hash(_travelSearchLocationModels),
        searchedLocation,
        showCalendar,
        tabIndex,
        selectedStartDate,
        selectedEndDate,
        focusDay,
        formattedDateRang,
        const DeepCollectionEquality().hash(_wishlistProducts),
        const DeepCollectionEquality().hash(_travelWishlistItems),
        bookingSuccess,
        const DeepCollectionEquality().hash(_travelHomeBannerPackages)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelStateCopyWith<_$_TravelState> get copyWith =>
      __$$_TravelStateCopyWithImpl<_$_TravelState>(this, _$identity);
}

abstract class _TravelState implements TravelState {
  const factory _TravelState(
          {required final int index,
<<<<<<< HEAD
=======
          required final TravelBannerModel? travelBannerModel,
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
          required final bool isLoading,
          required final TravelPopularProductsModel? travelPopularProductsModel,
          required final TravelCitiesModel? travelCitiesModel,
          required final TravelProductsModel? travelProductsModel,
          required final List<TravelProduct>? searchProducts,
          required final TravelBestPlacesModel? travelBestPlacesModel,
          required final TravelPopularProductsModel? productByLocationModel,
          required final int numberOfGuest,
          required final String country,
          required final List<TravelSearchLocationModels>?
              travelSearchLocationModels,
          required final String searchedLocation,
          required final bool showCalendar,
          required final int tabIndex,
          required final DateTime? selectedStartDate,
          required final DateTime? selectedEndDate,
          required final DateTime focusDay,
          required final String formattedDateRang,
          required final List<TravelProductsModel>? wishlistProducts,
          required final Set<String>? travelWishlistItems,
          required final bool bookingSuccess,
          required final List<TravelPackageItems>? travelHomeBannerPackages}) =
      _$_TravelState;

  @override
  int get index;
  @override
<<<<<<< HEAD
=======
  TravelBannerModel? get travelBannerModel;
  @override
>>>>>>> 41530fe8820aeddb46c952fe9d99a8fc2a0014c6
  bool get isLoading;
  @override
  TravelPopularProductsModel? get travelPopularProductsModel;
  @override
  TravelCitiesModel? get travelCitiesModel;
  @override
  TravelProductsModel? get travelProductsModel;
  @override
  List<TravelProduct>? get searchProducts;
  @override
  TravelBestPlacesModel? get travelBestPlacesModel;
  @override
  TravelPopularProductsModel? get productByLocationModel;
  @override
  int get numberOfGuest;
  @override
  String get country;
  @override
  List<TravelSearchLocationModels>? get travelSearchLocationModels;
  @override
  String get searchedLocation;
  @override
  bool get showCalendar;
  @override
  int get tabIndex;
  @override
  DateTime? get selectedStartDate;
  @override
  DateTime? get selectedEndDate;
  @override
  DateTime get focusDay;
  @override
  String get formattedDateRang;
  @override
  List<TravelProductsModel>? get wishlistProducts;
  @override
  Set<String>? get travelWishlistItems;
  @override
  bool get bookingSuccess;
  @override
  List<TravelPackageItems>? get travelHomeBannerPackages;
  @override
  @JsonKey(ignore: true)
  _$$_TravelStateCopyWith<_$_TravelState> get copyWith =>
      throw _privateConstructorUsedError;
}
