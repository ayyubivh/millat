import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../utils/constants.dart';
import '../../../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../../bloc/logic/location_bloc/location_bloc.dart';
import '../../../bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';

class HomeNamazTimingCard extends StatelessWidget {
  const HomeNamazTimingCard({super.key, required this.scrollNotifierValue});
  final bool scrollNotifierValue;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.slowMiddle,
      duration:
          Duration(milliseconds: scrollNotifierValue == true ? 500 : 1000),
      height: scrollNotifierValue == true
          ? Platform.isIOS
              ? 320
              : 290
          : Platform.isIOS
              ? 210
              : 180,
      width: SizeUtility(context).width,
      decoration: BoxDecoration(color: ColorManager.midGreenColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ).copyWith(top: Platform.isIOS ? 60 : 35),
        child: Stack(
          children: [
            Row(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1000),
                  child: scrollNotifierValue == false
                      ? Text(
                          Appstrings.assalamuAlaikum,
                          style: TextStyle(
                            color: ColorManager.whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : Text(
                          Appstrings.assalamuAlaikum,
                          style: TextStyle(
                            color: ColorManager.whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: GestureDetector(
                    onTap: () {
                      context
                          .goNamed(MyAppRouteConstants.notificationRouteName);
                    },
                    child: ImageIcon(
                        const AssetImage(AppAssetsStrings.bellIcon),
                        color: ColorManager.whiteColor,
                        size: 25),
                  ),
                ),
              ],
            ),
            BlocBuilder<DatabaseBloc, DatabaseState>(
              builder: (context, state) => Padding(
                padding:
                    EdgeInsets.only(top: scrollNotifierValue == true ? 28 : 24),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1000),
                  child: scrollNotifierValue == false
                      ? Text(state.authUserModel?.result?.user?.name ?? "",
                          style: TextStyle(
                            color: ColorManager.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ))
                      : Text(state.authUserModel?.result?.user?.name ?? "",
                          style: TextStyle(
                            color: ColorManager.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          )),
                ),
              ),
            ),
            AnimatedContainer(
              curve: Curves.linear,
              duration: const Duration(milliseconds: 500),
              padding: EdgeInsets.only(
                top: scrollNotifierValue == true ? 12 : 0,
                left: SizeUtility(context).width / 3.5,
              ),
              child: Image.asset(
                AppAssetsStrings.homeBgDesign,
                height: 70,
                // width: SizeUtility(context).width / 2,
                // fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: scrollNotifierValue == true ? 75 : 55,
                // bottom: 15,
              ),
              child: scrollNotifierValue
                  ? animatedContainerWidget1(context)
                  : animatedContainerWidget2(context),
            ),
          ],
        ),
      ),
    );
  }

  animatedContainerWidget2(BuildContext context) {
    return AnimatedContainer(
        curve: Curves.linear,
        duration: const Duration(milliseconds: 1000),
        height: 74,
        // margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorManager.primary.withOpacity(0.1),
              blurRadius: 2,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) => state.currentLocation.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    offlineText(),
                    // _locationButton(context),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        nowText(),
                        const SizedBox(height: 6),
                        BlocBuilder<NamazTimingBloc, NamazTimingState>(
                          builder: (context, state) {
                            final currentNamaz = state.currentNamaz;
                            final currentNamazName =
                                currentNamaz?['name'] ?? '';
                            final currentNamazTime =
                                currentNamaz?['time'] ?? '';

                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentNamazName,
                                  style: _currentNamazTextstyle(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  currentNamazTime,
                                  style: const TextStyle(
                                    color: black132,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      color: black166,
                      width: 0.5,
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _upcomingText(),
                        const SizedBox(height: 6),
                        BlocBuilder<NamazTimingBloc, NamazTimingState>(
                          builder: (context, state) {
                            final upcomingNamaz = state.upcomingNamaz;
                            final upcomingNamazName =
                                upcomingNamaz?['name'] ?? '';
                            final upcomingNamazTime =
                                upcomingNamaz?['time'] ?? '';

                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  upcomingNamazName,
                                  style: _currentNamazTextstyle(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  upcomingNamazTime,
                                  style: const TextStyle(
                                    color: black132,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
        ));
  }

  Widget animatedContainerWidget1(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(milliseconds: 1000),
      height: 167,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      // margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: ColorManager.primary.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            return state.currentLocation.isEmpty
                ? offlineContainer(context)
                : buildNamazTiming(context);
          },
        ),
      ),
    );
  }
}

Widget buildNamazTiming(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          ImageIcon(
            const AssetImage('assets/icons/calendar.png'),
            color: ColorManager.mainColor,
            size: 24,
          ),
          kWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) => Text(
                  state.arabicDate,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'ArabicFont',
                    color: ColorManager.darkGrey68,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              kHeight5,
              Text(
                Utilities.formatDate(DateTime.now().toString()),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.darkGrey68,
                ),
              )
            ],
          ),
          const Spacer(),
          TextButton.icon(
              onPressed: () {
                context.pushNamed(MyAppRouteConstants.namazTimingRouteName);
              },
              icon: const ImageIcon(
                AssetImage('assets/icons/bell.png'),
                color: blueColor,
                size: 16,
              ),
              label: const Text(
                'Notify Me',
                style: TextStyle(
                  color: blueColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
      kHeight8,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              nowText(),
              kHeight5,
              BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) {
                  final currentNamaz = state.currentNamaz;
                  final currentNamazName = currentNamaz?['name'] ?? '';
                  final currentNamazTime = currentNamaz?['time'] ?? '';

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        currentNamazName,
                        style: _currentNamazTextstyle(),
                      ),
                      kWidth10,
                      Text(
                        currentNamazTime,
                        style: TextStyle(
                          color: ColorManager.darkGrey68,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          Container(
            height: 30,
            width: 0.7,
            color: dividerColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _upcomingText(),
              kHeight5,
              BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) {
                  final upcomingNamaz = state.upcomingNamaz;
                  final upcomingNamazName = upcomingNamaz?['name'] ?? '';
                  final upcomingNamazTime = upcomingNamaz?['time'] ?? '';

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(upcomingNamazName, style: _currentNamazTextstyle()),
                      kWidth10,
                      Text(
                        upcomingNamazTime,
                        style: TextStyle(
                          color: ColorManager.darkGrey68,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ],
      ),
      kHeight25,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ImageIcon(
                AssetImage('assets/icons/map-pin.png'),
                color: black165,
                size: 20,
              ),
              kWidth8,
              BlocBuilder<LocationBloc, LocationState>(
                builder: (context, state) => Text(state.currentLocation,
                    style: TextStyle(
                      color: ColorManager.textGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Share.share(
                "Salam ! I'm your true friend It's ${context.read<NamazTimingBloc>().state.currentNamaz?['name'] ?? ""} time. Don't miss your  ${context.read<NamazTimingBloc>().state.currentNamaz?['name'] ?? ""} salah. It will help you to do better in duniya & akhirah To always be on time for salah install our app (link) This app is 100% add free. Yay! Install Now",
              );
            },
            child: const Row(
              children: [
                ImageIcon(
                  AssetImage('assets/icons/share.png'),
                  color: black165,
                  size: 16,
                ),
                kWidth8,
                Text(
                  Appstrings.share,
                  style: TextStyle(
                    color: black165,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ],
  );
}

Text _upcomingText() {
  return Text(
    'Upcoming Namaz',
    style: TextStyle(
      color: ColorManager.darkGrey68,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextStyle _currentNamazTextstyle() {
  return TextStyle(
    color: ColorManager.lightPrimary,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}

Widget offlineText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nowText(),
          const Text(
            "----------",
            style: TextStyle(
              fontSize: 16,
              color: black165,
            ),
          )
        ],
      ),
      Container(
        height: 20,
        width: 0.7,
        color: dividerColor,
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upcoming Namaz',
            style: TextStyle(color: black104, fontSize: 15),
          ),
          kHeight5,
          Text(
            "----------",
            style: TextStyle(
              fontSize: 16,
              color: black165,
            ),
          )
        ],
      ),
    ],
  );
}

Text nowText() {
  return Text(
    'Now',
    style: TextStyle(
      color: ColorManager.darkGrey68,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}

Widget offlineContainer(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          ImageIcon(
            const AssetImage('assets/icons/calendar.png'),
            color: ColorManager.mainColor,
            size: 24,
          ),
          kWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) => Text(
                  state.arabicDate,
                  style: const TextStyle(
                    fontFamily: 'ArabicFont',
                    color: black104,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                Utilities.formatDate(DateTime.now().toString()),
                style: const TextStyle(color: black104),
              )
            ],
          ),
          const Spacer(),
          TextButton.icon(
              onPressed: () {
                context.pushNamed(MyAppRouteConstants.namazTimingRouteName);
              },
              icon: const ImageIcon(
                AssetImage('assets/icons/map-pin.png'),
                color: blueColor,
                size: 16,
              ),
              label: const Text(
                'Allow Me',
                style: TextStyle(
                  color: blueColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: offlineText(),
      ),
      kHeight5,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          locationButton(context),
        ],
      )
    ],
  );
}

Widget locationButton(BuildContext context) {
  return SizedBox(
    height: 30,
    width: SizeUtility(context).width / 2.8,
    child: ElevatedButton(
      onPressed: () {
        context.read<LocationBloc>().isClickedOnLocationButton = true;
        context.read<LocationBloc>().add(const FetchCurrentLocation());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
      ),
      child: const Row(
        children: [
          Icon(Icons.location_on),
          Text(
            'Enable Location',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
