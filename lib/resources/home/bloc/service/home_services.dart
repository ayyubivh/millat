// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/bloc/models/home_models/allah_says/allah_says_model.dart';
import 'package:millat/resources/home/bloc/models/home_models/top_offers_model/top_offers_model.dart';
import 'package:millat/services/http_services.dart';
import 'package:millat/utils/utils.dart';
import '../models/home_models/brand_of_the_day_model/brandofthe_day_model.dart';
import '../models/home_models/event_of_the_month_model/event_of_the_month_model.dart';
import '../models/home_models/hadit_of_the_day_model/hadit_oftheday_mode.dart';
import '../models/home_models/large_discount_model/home_large_discounts_model.dart';

import '../models/home_models/prayer_tracker_model.dart';

class HomeServices extends HttpServices {
  final String largeDiscountUrl = "large_discount_card";
  final String topOffersUrl = "top_offer_card";
  final String brandOftheDayUrl = "brand_of_the_day";
  final String haditOfThedayUrl = "hadith_of_the_day";
  final String eventOftheMonthUrl = "event";
  final String prayerTracker = "namaz_track?";

  //Here fetching all the large discount banners

  Future fetchAll() async {
    final data = await Future.wait([
      fetchLargeDiscountsBanner(),
      fetchAllTopOfferBanner(),
      fetchAllbrandOftheDay(),
      fetchHadithOftheDay(),
      fetchEventOfTheMonth(),
      fetchAllahSaysApi(),
    ]);
    return data;
  }

  Future<LargeDiscountModel> fetchLargeDiscountsBanner() async {
    final response = await get(endPoint: largeDiscountUrl);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = LargeDiscountModel.fromJson(data);
        return result;
      } catch (e) {
        debugPrint("error while fetching on home large discouts $e");
        throw Exception('Failed to parse response ');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  fetchSchedulePushNotification(String address) async {
    final response = await posts(
        body: {"address": address},
        endPoint: "namaz/schedule-notification-singleuser",
        isToken: true);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);

        debugPrint(data.toString());
      } catch (e) {
        debugPrint("error while fetching on shedule push notification $e");
        throw Exception('Failed to parse response ');
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
        // print(result);
        return result;
      } catch (e) {
        debugPrint("error while fetching on home top Offers discouts $e");

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
        debugPrint("error on $e");
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

//fetch allah says
  Future<AllaySaysModel> fetchAllahSaysApi() async {
    final response = await get(endPoint: "allah_says");

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = AllaySaysModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // add prayer tracker
  addDailyPrayerTracker({
    required BuildContext context,
    required String date,
    required String namazName,
  }) async {
    const endPoint = 'namaz_track/tick';

    final body = {
      "date": date,
      "namaz": namazName,
    };

    final response = await patch(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        context.read<HomeBloc>().add(
            FetchPrayerTrackerEvent(date: DateTime.now(), context: context));
        showSnackBar(context, data['message']);
        return data;
      } else {
        debugPrint(
            'API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }

//remove daily prayer tracker
  removeDailyPrayerTracker(
      {required String date,
      required String namaz,
      required BuildContext context}) async {
    final body = {
      "date": date,
      "namaz": namaz,
    };
    const endPoint = 'namaz_track/untick';

    final response = await patch(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        context.read<HomeBloc>().add(
            FetchPrayerTrackerEvent(date: DateTime.now(), context: context));
        showSnackBar(context, data['message']);
        return data;
      } else {
        debugPrint(
            'API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }

  //fetch daily prayer trackers
  Future<PrayerTrackerModel> fetchDailyPrayerTracker(
      BuildContext context, String date) async {
    try {
      // final response = await http.get(
      //     Uri.parse("$kBaseUrl${prayerTracker}date=$date"),
      //     headers: headers);
      final response = await get(
        endPoint: "${prayerTracker}date=$date",
        isToken: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = PrayerTrackerModel.fromJson(data);

        return result;
      } else {
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
}
