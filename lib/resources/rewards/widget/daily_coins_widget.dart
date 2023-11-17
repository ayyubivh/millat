import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/rewards/bloc/logic/bloc/rewards_bloc_bloc.dart';
import 'package:millat/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class DailyCoinsWidget extends StatefulWidget {
  const DailyCoinsWidget({Key? key}) : super(key: key);

  @override
  State<DailyCoinsWidget> createState() => _DailyCoinsWidgetState();
}

class _DailyCoinsWidgetState extends State<DailyCoinsWidget> {
  late Timer _timer;
  bool? isCoinColleted = false;
  Duration duration = const Duration();
  late SharedPreferences prefs;

  final Duration initialDuration = const Duration(seconds: 10);

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  _initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    print("latest time ========= ${_loadLastTimestamp()}");
    _loadLastTimestamp();
    _startTimer();
  }

  _startTimer() {
    _timer =
        Timer.periodic(const Duration(seconds: 1), (_) => calculateTimeLeft());
  }

  calculateTimeLeft() {
    _checkConisCollected();
    final lastTimestamp = _loadLastTimestamp();
    print("latest time ========= ${lastTimestamp}");
    final now = DateTime.now();
    final elapsedSeconds = now.difference(lastTimestamp).inSeconds;
    print("elapsed seconds ========= ${elapsedSeconds}");
    print("initial duration========= ${initialDuration.inSeconds}");
    setState(() {
      duration = Duration(seconds: initialDuration.inSeconds - elapsedSeconds);
    });
    print("duration ============== $duration");
    if (elapsedSeconds >= initialDuration.inSeconds) {
      _saveCurrentTimestamp();
      _timer.cancel();
      _startTimer();
      _resetCollectedValue();
    }
  }

  _resetCollectedValue() async {
    await Utilities.saveBoolToSharedPreferences(
        Appstrings.rewardsCoinsKey, false);
    setState(() {
      isCoinColleted = false;
    });
  }

  _checkConisCollected() async {
    final value = await Utilities.getBoolFromSharedPreferences(
        Appstrings.rewardsCoinsKey);
    setState(() {
      isCoinColleted = value;
    });
    print("is coins collected value ============= $value");
  }

  _saveCurrentTimestamp() async {
    print(DateTime.now().millisecondsSinceEpoch);
    await Utilities.saveIntToSharedPreferences(
        Appstrings.lastTimestampKey, DateTime.now().millisecondsSinceEpoch);
  }

  DateTime _loadLastTimestamp() {
    final lastTimestamp = prefs.getInt(Appstrings.lastTimestampKey) ??
        DateTime.now().millisecondsSinceEpoch;

    return DateTime.fromMillisecondsSinceEpoch(lastTimestamp);
  }

  @override
  void dispose() {
    _saveCurrentTimestamp();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hour = duration.inHours.toString().padLeft(2, '0');
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return Column(
      children: [
        Container(
          height: 175,
          width: SizeUtility(context).width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            image: const DecorationImage(
              image: AssetImage(
                AppAssetsStrings.rewardCoinsBg,
              ),
              fit: BoxFit.fitWidth,
            ),
            gradient: LinearGradient(
              colors: [
                ColorManager.primary,
                ColorManager.primaryGreenGradient,
              ],
              begin: Alignment.center,
              end: Alignment.topRight,
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 28,
                        width: 92,
                        decoration: BoxDecoration(
                          color: ColorManager.whiteColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            Appstrings.dailyCoins,
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorManager.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      kHeight16,
                      Text(
                        Appstrings.text500,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                      kHeight5,
                      Text(
                        Appstrings.coins,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              kHeight8,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Appstrings.earnFreeConins,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.whiteColor,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 135,
          width: SizeUtility(context).width,
          decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              border: Border.all(
                color: ColorManager.primary,
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(12),
              )),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      _numberContainer(hour[0]),
                      kWidth15,
                      _numberContainer(hour[1]),
                    ],
                  ),
                  Row(
                    children: [
                      _numberContainer(minutes[0]),
                      kWidth15,
                      _numberContainer(minutes[1]),
                    ],
                  ),
                  Row(
                    children: [
                      _numberContainer(seconds[0]),
                      kWidth15,
                      _numberContainer(seconds[1]),
                    ],
                  ),
                ],
              ),
              kHeight20,
              GestureDetector(
                onTap: () async {
                  await Utilities.saveBoolToSharedPreferences(
                      Appstrings.rewardsCoinsKey, true);
                  BlocProvider.of<RewardsBloc>(context)
                      .add(AddRewards(rewards: 1));
                },
                child: Container(
                  height: 38,
                  width: SizeUtility(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(
                        colors: [
                          ColorManager.primary
                              .withOpacity(isCoinColleted == true ? 0.4 : 0.6),
                          ColorManager.primary
                              .withOpacity(isCoinColleted == true ? 0.6 : 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                  child: Center(
                    child: Text(
                      isCoinColleted == true
                          ? Appstrings.collected
                          : Appstrings.collect,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _numberContainer(String time) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            colors: [
              ColorManager.primaryGreenGradient2,
              ColorManager.primary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          )),
      child: Center(
        child: Text(
          time.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: ColorManager.whiteColor,
          ),
        ),
      ),
    );
  }
}
