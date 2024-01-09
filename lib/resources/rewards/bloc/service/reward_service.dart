// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/rewards/bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';
import 'package:millat/resources/rewards/bloc/models/coin_collection/coin_collection_model.dart';
import 'package:millat/resources/rewards/bloc/models/get_rewards_model.dart';
import 'package:millat/resources/rewards/bloc/models/rewards_product/rewards_product_model.dart';
import 'package:millat/services/http_services.dart';

import '../models/redeem_rewards/redeemed_coupons_model.dart';
import '../models/redeem_rewards/reward_redeem_items_model.dart';
import '../models/rewards_product/rewards_product_by_id_model.dart';

class RewardServices extends HttpServices {
  Future<RewardsModel> fetchRewards(BuildContext context) async {
    const endPoint = 'reward';

    final response = await get(endPoint: endPoint, isToken: true);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = RewardsModel.fromJson(data);

          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on fetching rewards API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  Future<RewardsProductsModel> fetchRewardProducts() async {
    const endPoint = 'reward_product';

    final response = await get(
      endPoint: endPoint,
    );
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = RewardsProductsModel.fromJson(data);
          print("Results of the reward products  $result");
          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on rewards products API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

//coin collection api
  Future<CoinCollectionModel> fetchCoinCollection() async {
    const endPoint = 'coin/collection';

    final response = await get(endPoint: endPoint, isToken: true);

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = CoinCollectionModel.fromJson(data);
        print("Results of the reward products  $result");
        return result;
      } else {
        debugPrint(
            'API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('error on rewards products API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }

//add coins collection api
  addCoinsCollection(BuildContext context) async {
    const endPoint = 'coin/collection';

    final response = await put(endPoint: endPoint, isToken: true, body: {});

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        context.read<RewardsBloc>().add(const FetchCoinsCollectionEvent());
        return data;
      } else if (response.statusCode == 400) {
        final data = json.decode(response.body);
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

  Future<RewardsProductByIdModel> fetchRewardProductsById(String id) async {
    final endPoint = 'reward_product/$id';

    final response = await get(
      endPoint: endPoint,
    );
    if (response.statusCode == 200) {
      debugPrint("body ------------------- ${response.body}");
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = RewardsProductByIdModel.fromJson(data);
          print("result on the service $result");
          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

// get redeemed coupons
  Future<RedeemedCouponModel> getRedeemedCoupons() async {
    const endPoint = "order_redeem_item";

    final response = await get(endPoint: endPoint, isToken: true);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          log(response.body);
          final Map<String, dynamic> data = json.decode(response.body);
          final result = RedeemedCouponModel.fromJson(data);
          log(result.toString());
          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  // getting rewards redeem items
  Future<RewardRedeemItemModel> getRedeemRewardItems() async {
    const endPoint = 'reward-redeem/user';

    final response = await get(
      endPoint: endPoint,
      isToken: true,
    );
    if (response.statusCode == 200) {
      debugPrint("body ------------------- ${response.body}");
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = RewardRedeemItemModel.fromJson(data);
          print("result on the rewards redeem $result");
          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

// add reward redeem coupoun
  addRewardRedeemCoupon({
    required String id,
  }) async {
    const endPoint = 'order_redeem_item/order/';

    final response = await posts(endPoint: endPoint, isToken: true, body: {
      "rewardItemId": id,
    });

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);

        return data;
      } else if (response.statusCode == 400) {
        final data = json.decode(response.body);
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

  // add rewards point
  addReward({
    required int rewards,
  }) async {
    const endPoint = 'reward/add';

    final body = {
      'rewards': rewards.toString(),
    };

    final response = await put(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

    try {
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        return data;
      } else if (response.statusCode == 409) {
        final data = json.decode(response.body);
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
}
