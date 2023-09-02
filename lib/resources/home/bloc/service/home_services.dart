import 'dart:convert';
import 'package:millat/resources/home/bloc/models/home_models/top_offers_model/top_offers_model.dart';
import 'package:millat/services/http_services.dart';
import '../models/home_models/brand_of_the_day_model/brandofthe_day_model.dart';
import '../models/home_models/event_of_the_month_model/event_of_the_month_model.dart';
import '../models/home_models/hadit_of_the_day_model/hadit_oftheday_mode.dart';
import '../models/home_models/large_discount_model/home_large_discounts_model.dart';

class HomeServices extends HttpServices {
  final String largeDiscountUrl = "large_discount_card";
  final String topOffersUrl = "top_offer_card";
  final String brandOftheDayUrl = "brand_of_the_day";
  final String haditOfThedayUrl = "hadith_of_the_day";
  final String eventOftheMonthUrl = "event";

  //Here fetching all the large discount banners

  Future<LargeDiscountModel> fetchLargeDiscountsBanner() async {
    final response = await get(endPoint: largeDiscountUrl);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = LargeDiscountModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//Here fetching all the top offers banners
  Future<TopOffersModel> fetchAllTopOfferBanner() async {
    final response = await get(endPoint: topOffersUrl);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = TopOffersModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Here fetching all brand of the day items
  Future<BrandOftheDayModel> fetchAllbrandOftheDay() async {
    final response = await get(endPoint: brandOftheDayUrl);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = BrandOftheDayModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Here fetching the hadit of the day
  Future<HaditOfTheDayModel> fetchHadithOftheDay() async {
    final response = await get(endPoint: haditOfThedayUrl);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = HaditOfTheDayModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Here fetching the event of the month
  Future<EventOfTheMonthModel> fetchEventOfTheMonth() async {
    final response = await get(endPoint: eventOftheMonthUrl);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = EventOfTheMonthModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
