import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:millat/resources/rewards/bloc/models/get_rewards_model.dart';
import 'package:millat/resources/rewards/bloc/models/rewards_product/rewards_product_model.dart';
import 'package:millat/services/http_services.dart';

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
        print('error on fetching rewards API fetch: ${e.toString()}');
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
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on rewards products API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  Future<RewardsProductByIdModel> fetchRewardProductsById(String id) async {
    final endPoint = 'reward_product/$id';

    final response = await get(
      endPoint: endPoint,
    );
    if (response.statusCode == 200) {
      print("body ------------------- ${response.body}");
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = RewardsProductByIdModel.fromJson(data);
          print("result on the service $result");
          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
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
        print('API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
}
