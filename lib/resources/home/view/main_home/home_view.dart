// ignore_for_file: unused_local_variable, depend_on_referenced_packages
import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import 'package:millat/routes/app_router_constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/widgets/hadit_tinder_cards.dart';
import 'package:millat/utils/constants.dart';
import '../../../../enums/enumertations.dart';
import '../../../../utils/assets_paths.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/responsive.dart';
import '../../../../utils/shimmer_utils.dart';
import '../../../../utils/size_utility.dart';
import '../../../../utils/string_constants.dart';
import '../../../../utils/utils.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../../shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../../bloc/logic/location_bloc/location_bloc.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'widgets/home_namaz_timing_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with WidgetsBindingObserver {
  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
  Timer? timer;
  @override
  void initState() {
    _fetchApi();
    OneSignal.Notifications.addClickListener((event) {
      if (event.notification.additionalData?["route"] != null) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          context.pushNamed(event.notification.additionalData?["route"]);
        });
      }
    });
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.inactive) {
      timer = Timer(const Duration(seconds: 10), () {});
      print(timer!.isActive);
    } else if (state == AppLifecycleState.resumed) {
      if (!timer!.isActive) {
        print(timer!.isActive);
        _fetchApi();
      } else {
        timer!.cancel();
      }
    }
  }

  _fetchApi() async {
    if (!mounted) {
      return;
    }
    BlocProvider.of<QuranBloc>(context).add(const GetShuffledAya());

    BlocProvider.of<BookmarkBloc>(context).add(const FetchCollectionItem());
    BlocProvider.of<LocationBloc>(context).add(const FetchCurrentLocation());
    BlocProvider.of<DatabaseBloc>(context)
      ..add(FetchAuthUser(context: context))
      ..add(const FetchCoverImage());
    BlocProvider.of<LocationBloc>(context).add(const FetchCities());
    BlocProvider.of<ShopProductsBloc>(context).add(const FetchHomeBanners());
    // BlocProvider.of<ShopProductsBloc>(context).add(FetchOrders(context));
    BlocProvider.of<NamazTimingBloc>(context)
      ..add(const GetCalculationMethodFromStorage())
      ..add(const GetAsrCalculationMethodFromStorage())
      ..add(const GetHighLatitudeMethodsToLocalStorage());

    BlocProvider.of<HomeBloc>(context)
        // ..add(const FetchLargeDiscountsBanner())
        // ..add(const FetchTopOffersBanner())
        // ..add(const FetchBrandofTheDay())
        // ..add(const FetchHadithOfTheDay())
        // ..add(const FetchEventOfTheMonth())
        // ..add(const ChangeIndexofAllaysaysBg())
        .add(const HomeEvent.fetchAllHomePageApis());
  }

  Future<void> _handleRefresh() async {
    _fetchApi();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      color: ColorManager.primary,
      onRefresh: _handleRefresh,
      child: Scaffold(
        backgroundColor: ColorManager.whiteColor,
        body: BlocListener<DatabaseBloc, DatabaseState>(
          listener: (context, state) {
            if (state.token.isNotEmpty) {
              BlocProvider.of<HomeBloc>(context).add(FetchPrayerTrackerEvent(
                  context: context, date: DateTime.now()));
            }
          },
          child: BlocListener<LocationBloc, LocationState>(
            listener: (context, state) {
              if (state.currentLocation.isNotEmpty &&
                  state.weatherConditionName.isEmpty) {
                context
                    .read<NamazTimingBloc>()
                    .add(FetchPrayerTiming(context: context));
                context.read<LocationBloc>().add(const FetchWeatherEvent());
                BlocProvider.of<HomeBloc>(context).add(
                    HomeEvent.fetchSchedulePushNotification(
                        state.currentLocation));
              }
            },
            child: BlocListener<NamazTimingBloc, NamazTimingState>(
              listener: (context, state) {
                if (state.prayerModel != null) {
                  context
                      .read<NamazTimingBloc>()
                      .add(const PrayerTimingEvent());
                }
              },
              child: ValueListenableBuilder(
                valueListenable: scrollNotifier,
                builder: (context, value, child) {
                  return NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;
                      final double scrollPosition = notification.metrics.pixels;
                      const double epsilon = 25.0;

                      if (direction == ScrollDirection.reverse) {
                        scrollNotifier.value = false;
                      } else if (scrollPosition <= 10) {
                        scrollNotifier.value = true;
                      }
                      return true;
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeNamazTimingCard(
                            scrollNotifierValue: scrollNotifier.value),
                        _remainingWidgets(context),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _remainingWidgets(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: Responsive.isMobile(context)
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.spaceAround,
                    children: [
                      buildIconWidget(
                        image: AppAssetsStrings.newShop,
                        text: Appstrings.shop,
                        onTap: () {
                          context
                              .read<HomeBloc>()
                              .add(const ChangeHomeTabIndexEvent(newIndex: 1));
                        },
                      ),
                      BlocBuilder<LocationBloc, LocationState>(
                        builder: (context, state) => buildIconWidget(
                          image: AppAssetsStrings.newTravel,
                          text: Appstrings.travel,
                          onTap: () {
                            context.read<HomeBloc>().add(
                                const ChangeHomeTabIndexEvent(newIndex: 3));
                            // if (state.currentLocation.isNotEmpty) {
                            //   context.pushNamed(
                            //       MyAppRouteConstants.compassRouteName);
                            // } else {
                            //   showSnackBar(
                            //     context,
                            //     Appstrings.turnOnLocation,
                            //   );
                            // }
                          },
                        ),
                      ),
                      buildIconWidget(
                        image: AppAssetsStrings.newReward,
                        text: Appstrings.rewards,
                        onTap: () {
                          context
                              .read<HomeBloc>()
                              .add(const ChangeHomeTabIndexEvent(newIndex: 2));
                        },
                      ),
                      buildIconWidget(
                          image: AppAssetsStrings.exploreAll,
                          text: Appstrings.exploreAll,
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) {
                                return _exploreAllBottomSheet(context);
                              },
                            );
                          })
                    ],
                  ),
                  kHeight20,

                  _bannerWidget(),
                  kHeight20,
                  _readTasbihWidget(context),
                  kHeight20,
                  _quranAyaWidget(context),
                  kHeight20,
                  _rewardPromoWidget(context),
                  kHeight20,
                  // _dailyPrayerTracker(context),
                  const SizedBox(
                    height: 340,
                    child: HaditTinkerCards(),
                  )
                ],
              ),
            ),
            kHeight25,
            // _largeDiscountWidget(context),
            _eventOfTheMonthWidget(context),
            kHeight20,
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: !Responsive.isMobile(context) ? 110 : 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topOffersWidget(),
                  kHeight25,
                ],
              ),
            ),
            _brandOftheDayWidget(),
            kHeight50,
            kHeight50,
          ],
        ),
      ),
    );
  }

  Widget _exploreAllBottomSheet(BuildContext context) {
    return Container(
      height: SizeUtility(context).height / 1.1,
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Explore All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.close,
                  size: 15,
                  color: ColorManager.black4A,
                ),
              ),
            ],
          ),
          bottomSheetWidgets(
            image: AppAssetsStrings.homeQuranIcon,
            text: Appstrings.quran,
            onTap: () {
              context.pushNamed(MyAppRouteConstants.quranRouteName);
            },
            subTitle: "Read Quran",
          ),
          bottomSheetWidgets(
              image: AppAssetsStrings.homeTasbihIcon,
              text: Appstrings.tasbih,
              onTap: () {
                context.pushNamed(MyAppRouteConstants.tasbihRouteName);
              },
              subTitle: "Read Zikr"),
          bottomSheetWidgets(
            image: AppAssetsStrings.homeDuaIcon,
            text: Appstrings.dua,
            onTap: () {
              context.pushNamed(MyAppRouteConstants.duaRouteName);
            },
            subTitle: "Read Dua",
          ),
          BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) => bottomSheetWidgets(
              image: AppAssetsStrings.homeCompassIcon,
              text: Appstrings.compass,
              onTap: () {
                if (state.currentLocation.isNotEmpty) {
                  context.goNamed(MyAppRouteConstants.compassRouteName);
                } else {
                  showSnackBar(
                    context,
                    Appstrings.turnOnLocation,
                  );
                }
              },
              subTitle: "Look for Qibla",
              isQibla: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheetWidgets({
    required String image,
    required String text,
    required VoidCallback onTap,
    required String subTitle,
    bool isQibla = false,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: ColorManager.lightGreenDB,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                image,
              ),
            ),
            kWidth10,
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: ColorManager.black4F,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                kHeight10,
                Text(
                  subTitle,
                  style: TextStyle(
                    color: ColorManager.black4F,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.midGreenColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 28,
              width: 70,
              child: Center(
                child: Text(
                  isQibla ? "GO" : "READ",
                  style: TextStyle(
                    color: ColorManager.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _rewardPromoWidget(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context.pushNamed(MyAppRouteConstants.rewardsRedeemViewRouteName);
      },
      child: SizedBox(
        height: 132,
        width: SizeUtility(context).width,
        child: Stack(
          // alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 118,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    AppAssetsStrings.rewardPromoBg,
                  ),
                  fit: BoxFit.fill,
                )),
                width: SizeUtility(context).width,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Chance\n To Win Free \nHaj & Umrah",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                        ),
                      ),
                      kHeight5,
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, right: 12),
                child: Image.asset(
                  AppAssetsStrings.kabahBuilding,
                  height: 215,
                  width: 215,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _readTasbihWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(MyAppRouteConstants.tasbihRouteName);
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: 120,
        width: SizeUtility(context).width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
              image: AssetImage(
                AppAssetsStrings.readTasbihBg,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 35,
              width: 35,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorManager.primary,
                ),
              ),
              child: Image.asset(
                AppAssetsStrings.duaTasbih,
                color: ColorManager.primary,
              ),
            ),
            const Row(
              children: [
                Text(
                  Appstrings.readTasbih,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.navigate_next)
              ],
            ),
            Text(
              Appstrings.tasbih1,
              style: TextStyle(
                fontSize: 16,
                color: ColorManager.black4F,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _brandOftheDayWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Appstrings.homeHeading3,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          kHeight15,
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return SizedBox(
                height: 230,
                // width: 330,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      state.brandOftheDayModel?.result?.banners?.length ?? 4,
                  itemBuilder: (context, index) {
                    if (state.isLoading ||
                        state.brandOftheDayModel?.result?.banners == null) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: ShimmerUtils.customRectangleShimmer(
                            230, SizeUtility(context).width / 1.6,
                            borderRadius: 12),
                      );
                    }
                    final data =
                        state.brandOftheDayModel!.result!.banners![index];
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(
                            MyAppRouteConstants.singleBrandRouteName,
                            extra: {
                              'passValue': data.brandId,
                              'brandViewType': BrandViewType.brandOftheDay,
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorManager.darkWhite,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          height: 230,
                          width: !Responsive.isMobile(context)
                              ? SizeUtility(context).width / 2
                              : SizeUtility(context).width / 1.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Stack(
                              children: [
                                Utilities().buildCachedNetworkImage(
                                  imageUrl: data.image!,
                                  height: 230,
                                  width: SizeUtility(context).width / 1.6,
                                  boxFit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Text(
                                      //   "Get\n${data.discount.toString()}%OFF",
                                      //   style: TextStyle(
                                      //     fontSize: 24,
                                      //     color: ColorManager.blackColor,
                                      //     fontWeight: FontWeight.w800,
                                      //     height: 1.2,
                                      //   ),
                                      // ),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: ColorManager.whiteColor,
                                        ),
                                        child: data.brandId?.logo == "" ||
                                                data.brandId?.logo == null
                                            ? const Placeholder()
                                            : ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: Utilities()
                                                    .buildCachedNetworkImage(
                                                  imageUrl: data.brandId!.logo,
                                                  boxFit: BoxFit.contain,
                                                ),
                                              ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _topOffersWidget() {
    return Column(
      crossAxisAlignment: !Responsive.isMobile(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const Text(
          Appstrings.homeHeading2,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight10,
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.topOffersModel?.result.banners.length ?? 4,
                itemExtent: !Responsive.isMobile(context) ? 130 : 95,
                itemBuilder: (context, index) {
                  if (state.isLoading ||
                      state.topOffersModel?.result.banners == null) {
                    return ShimmerUtils.categoriesShimmers();
                  }
                  final data = state.topOffersModel?.result.banners[index];
                  return GestureDetector(
                    onTap: () {
                      if (data?.subCategoryId == null) {
                        return;
                      }
                      context.pushNamed(
                          MyAppRouteConstants.categoriesProductsRouteName,
                          extra: {
                            'category': data?.subCategoryId?.title,
                            'itemId': data?.subCategoryName ?? "",
                            'type': FilterType.category
                          });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Utilities().buildCachedNetworkImage(
                            imageUrl: data?.image ?? "",
                            height: 75,
                            width: 75,
                          ),
                        ),
                        kHeight8,
                        Text(
                          data?.subCategoryName ?? "",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _eventOfTheMonthWidget(BuildContext context) {
    return Container(
      height: 440,
      width: SizeUtility(context).width,
      color: ColorManager.lightPrimaryGreenDE,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Appstrings.eventOftheMonth,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          kHeight20,
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final currentIndex = state.eventOfMonthIndex;
              if (state.isLoading ||
                  state.eventOfTheMonthModel?.result?.event == null) {
                return ShimmerUtils.customRectangleShimmer(
                  SizeUtility(context).width,
                  300,
                  borderRadius: 12,
                );
              }
              final banners = state.eventOfTheMonthModel?.result!.event;

              return Column(
                children: [
                  CarouselSlider(
                    items: banners?.map((banner) {
                      return GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          if (banner.routing == null ||
                              banner.routing?.route == "") {
                            return;
                          } else if (banner.routing?.route ==
                              MyAppRouteConstants.categoriesProductsRouteName) {
                            final routing = banner.routing!;

                            final categoryId = routing.categoryId?.title;
                            final subCategoryId = routing.subCategoryId?.title;
                            final itemTypeId = routing.itemTypeId?.title;

                            if (categoryId == null &&
                                subCategoryId == null &&
                                itemTypeId == null) {
                              return;
                            } else {
                              context.pushNamed(
                                routing.route ?? "",
                                extra: {
                                  'category': categoryId,
                                  'itemId': [subCategoryId ?? ""],
                                  'type': FilterType.category,
                                },
                              );
                            }
                          }
                        },
                        child: ClipRRect(
                          // child: Utilities().buildCachedNetworkImage(
                          //     imageUrl: banner.images?[0], height: 327)
                          child: Utilities().buildCachedNetworkImage(
                            imageUrl: banner.images![0],
                            height: 327,
                            boxFit: BoxFit.contain,
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 300,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        BlocProvider.of<HomeBloc>(context)
                            .add(ChangeEventOfTheMonthIndex(index: index));
                      },
                    ),
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: banners!.map((banner) {
                      int index = banners.indexOf(banner);
                      return Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: currentIndex == index
                              ? ColorManager.primary
                              : ColorManager.greyD1,
                        ),
                      );
                    }).toList(),
                  ),
                  kHeight10,
                  GestureDetector(
                    onTap: () async {
                      _downloadAndShareImage(state.eventOfTheMonthModel!.result!
                          .event![currentIndex].images![0]);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: ColorManager.grey70,
                          size: 20,
                        ),
                        kWidth10,
                        Text(
                          Appstrings.share,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.grey70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }

  // Widget _largeDiscountWidget(BuildContext context) {
  //   return Container(
  //     height: 212,
  //     width: SizeUtility(context).width,
  //     color: ColorManager.scaffoldBgColor,
  //     padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         const Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               Appstrings.largeDiscount,
  //               style: TextStyle(
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.w700,
  //               ),
  //             ),
  //             ImageIcon(
  //               AssetImage(AppAssetsStrings.discountIcon),
  //             )
  //           ],
  //         ),
  //         Text(
  //           Appstrings.onLargeDiscount,
  //           style: TextStyle(
  //               fontSize: 15,
  //               fontWeight: FontWeight.w500,
  //               color: ColorManager.blackColor),
  //         ),
  //         kHeight15,
  //         BlocBuilder<HomeBloc, HomeState>(
  //           builder: (context, state) {
  //             // if (state.isLoading ||
  //             //     state.largeDiscountModel?.result?.banners == null) {

  //             // }

  //             return Padding(
  //               padding: EdgeInsets.symmetric(
  //                   horizontal: !Responsive.isMobile(context) ? 120 : 0),
  //               child: SizedBox(
  //                 height: 90,
  //                 child: ListView.builder(
  //                   itemExtent: !Responsive.isMobile(context) ? 140 : 90,
  //                   scrollDirection: Axis.horizontal,
  //                   itemCount:
  //                       state.largeDiscountModel?.result?.banners.length ?? 6,
  //                   itemBuilder: (context, index) {
  //                     if (state.largeDiscountModel?.result?.banners == null) {
  //                       return Padding(
  //                           padding:
  //                               const EdgeInsets.symmetric(horizontal: 8.0),
  //                           child: ShimmerUtils.categoriesShimmers());
  //                     }
  //                     final banner =
  //                         state.largeDiscountModel?.result?.banners[index];
  //                     final subCategoryIdTitle = banner?.subCategoryId?.title;
  //                     final subCategoryName = banner?.subCategoryName;
  //                     return GestureDetector(
  //                       onTap: () {
  //                         context.pushNamed(
  //                             MyAppRouteConstants.categoriesProductsRouteName,
  //                             extra: {
  //                               'category': subCategoryIdTitle,
  //                               'subCategory': subCategoryName,
  //                               'type': FilterType.category
  //                             });
  //                       },
  //                       child: Padding(
  //                         padding: const EdgeInsets.only(right: 8.0),
  //                         child: ClipRRect(
  //                           borderRadius: BorderRadius.circular(12),
  //                           child: Utilities().buildCachedNetworkImage(
  //                             imageUrl: banner!.image,
  //                             boxFit: BoxFit.fill,
  //                             height: 120,
  //                             width: 80,
  //                           ),
  //                         ),
  //                       ),
  //                     );
  //                   },
  //                 ),
  //               ),
  //             );
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget _dailyPrayerTracker(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              Appstrings.homeHeading1,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.goNamed(
                    MyAppRouteConstants.prayerTrackerCalendarRouteName);
              },
              child: Text(
                Appstrings.viewAll,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.primary),
              ),
            ),
          ],
        ),
        kHeight16,
        Container(
          height: 95,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: ColorManager.lightPrimaryGreenDE,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final data = state;

              return BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) {
                  final currentNamaz = state.currentNamaz;
                  final currentNamazName = currentNamaz?['name'] ?? '';
                  final namazTime = state.prayerModel?.data.timings;

                  String fajrTime = namazTime?.fajr ?? "";
                  String sunriseTime = namazTime?.sunrise ?? "";
                  String dhuhrTime = namazTime?.dhuhr ?? "";
                  String asrTime = namazTime?.asr ?? "";
                  String magribTime = namazTime?.maghrib ?? "";
                  String ishaTime = namazTime?.isha ?? "";
                  DateTime now = DateTime.now();

                  bool isFajr = Utilities.isNamazTimeAfter(now, sunriseTime);
                  bool isDhuhr = Utilities.isNamazTimeAfter(now, asrTime);
                  bool isAsr = Utilities.isNamazTimeAfter(now, magribTime);
                  bool isMagrib = Utilities.isNamazTimeAfter(now, ishaTime);
                  bool isIsha = Utilities.isNamazTimeAfter(now, fajrTime);

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dailyTrackerWidget(
                        isUpcoming: isFajr,
                        namazName: Appstrings.fajr,
                        isCompleted: data.prayerTrackerFajr,
                        onTap: () {
                          if (data.prayerTrackerFajr == true &&
                              currentNamazName == Appstrings.fajr) {
                            context.read<HomeBloc>().add(
                                RemoveDailyPrayerTrackerNamaz(
                                    namazName: Appstrings.fajr,
                                    context: context));
                          } else if (currentNamazName == Appstrings.fajr) {
                            context.read<HomeBloc>().add(
                                AddPrayerToPrayerTracker(
                                    namazName: Appstrings.fajr,
                                    context: context));
                          }
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: isDhuhr,
                        namazName: Appstrings.dhuhr,
                        isCompleted: data.prayerTrackerDhuhr,
                        onTap: () {
                          if (data.prayerTrackerDhuhr == true &&
                              currentNamazName == Appstrings.dhuhr) {
                            context.read<HomeBloc>().add(
                                RemoveDailyPrayerTrackerNamaz(
                                    namazName: Appstrings.dhuhr,
                                    context: context));
                          } else if (currentNamazName == Appstrings.dhuhr) {
                            context.read<HomeBloc>().add(
                                AddPrayerToPrayerTracker(
                                    namazName: Appstrings.dhuhr,
                                    context: context));
                          }
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: isAsr,
                        namazName: Appstrings.asr,
                        isCompleted: data.prayerTrackerAsr,
                        onTap: () {
                          if (data.prayerTrackerAsr == true &&
                              currentNamazName == Appstrings.asr) {
                            context.read<HomeBloc>().add(
                                RemoveDailyPrayerTrackerNamaz(
                                    namazName: Appstrings.asr,
                                    context: context));
                          } else if (currentNamazName == Appstrings.asr) {
                            context.read<HomeBloc>().add(
                                AddPrayerToPrayerTracker(
                                    namazName: Appstrings.asr,
                                    context: context));
                          }
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: isMagrib,
                        namazName: Appstrings.magrib,
                        isCompleted: data.prayerTrackerMagrib,
                        onTap: () {
                          if (data.prayerTrackerMagrib == true &&
                              currentNamazName == Appstrings.magrib) {
                            context.read<HomeBloc>().add(
                                RemoveDailyPrayerTrackerNamaz(
                                    namazName: Appstrings.magrib,
                                    context: context));
                          } else if (currentNamazName == Appstrings.magrib) {
                            context.read<HomeBloc>().add(
                                AddPrayerToPrayerTracker(
                                    namazName: Appstrings.magrib,
                                    context: context));
                          }
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: true,
                        namazName: Appstrings.isha,
                        isShow: false,
                        isCompleted: data.prayerTrackerIsha,
                        onTap: () {
                          if (data.prayerTrackerIsha == true &&
                              currentNamazName == Appstrings.isha) {
                            context.read<HomeBloc>().add(
                                RemoveDailyPrayerTrackerNamaz(
                                    namazName: Appstrings.isha,
                                    context: context));
                          } else if (currentNamazName == Appstrings.isha) {
                            context.read<HomeBloc>().add(
                                AddPrayerToPrayerTracker(
                                    namazName: Appstrings.isha,
                                    context: context));
                          }
                        },
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
        kHeight20,
      ],
    );
  }

  Widget dailyTrackerWidget(
      {required String namazName,
      bool isShow = true,
      required bool isCompleted,
      required VoidCallback onTap,
      required bool isUpcoming}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isUpcoming == true && isCompleted == false
                  ? CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorManager.primary,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: ColorManager.whiteColor,
                      ),
                    )
                  : CircleAvatar(
                      backgroundColor: isCompleted == false
                          ? ColorManager.lightRedColor
                          : ColorManager.primary,
                      radius: 16,
                      child: Icon(
                        isCompleted == true ? Icons.check : Icons.close,
                        color: ColorManager.whiteColor,
                        size: 18,
                      ),
                    ),
              isShow == true
                  ? Container(
                      width: 40,
                      height: 2,
                      color: ColorManager.dividerGreyAe,
                    )
                  : const SizedBox()
            ],
          ),
          kHeight8,
          Text(
            namazName,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _quranAyaWidget(BuildContext context) {
    return SizedBox(
        height: 320,
        width: !Responsive.isMobile(context)
            ? SizeUtility(context).width / 2.5
            : SizeUtility(context).width,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final data = state.allaySaysModel?.result?.data;

            return data == null || data.isEmpty
                ? ShimmerUtils.customRectangleShimmer(
                    SizeUtility(context).width,
                    10,
                    borderRadius: 12,
                  )
                : PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: PageController(
                        initialPage: Random().nextInt(data.length)),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      data.length,
                      (index) {
                        return Container(
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/backgrounds/allay_says_bg_$index.png",
                                  ),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: ClipRRect(
                              child: Column(
                                children: [
                                  kHeight15,
                                  Text(
                                    Appstrings.allaySays,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  kHeight16,
                                  SizedBox(
                                    child: Text(
                                      data[index].content ?? '',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: ColorManager.blackColor,
                                        fontFamily: "Hafs",
                                      ),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                  kHeight5,
                                  Divider(
                                    thickness: 1,
                                    color: ColorManager.blackColor,
                                  ),
                                  kHeight8,
                                  Text(
                                    (data[index].translate != null &&
                                            data[index].translate!.length >
                                                state.translationLanguageIndex)
                                        ? data[index]
                                                .translate![state
                                                    .translationLanguageIndex]
                                                .content ??
                                            ''
                                        : '',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: ColorManager.blackColor,
                                      fontFamily: "Hafs",
                                    ),
                                  ),
                                  kHeight5,
                                  const Spacer(),
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) => Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                            color: ColorManager.whiteColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(30.0),
                                              topRight: Radius.circular(30.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: ListView.separated(
                                              itemCount: data[index]
                                                      .translate
                                                      ?.length ??
                                                  0,
                                              itemBuilder:
                                                  (context, translateIndex) {
                                                final translation = data[index]
                                                    .translate![translateIndex];
                                                return GestureDetector(
                                                  onTap: () {
                                                    BlocProvider.of<HomeBloc>(
                                                            context)
                                                        .add(ChangeTranslationLanguageIndex(
                                                            translateIndex));
                                                    context.pop();
                                                  },
                                                  behavior: HitTestBehavior
                                                      .translucent,
                                                  child: Text(
                                                    translation.language ?? '',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: ColorManager
                                                          .blackColor,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                );
                                              },
                                              separatorBuilder:
                                                  (context, index) =>
                                                      const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 6),
                                                child: Divider(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.translateIcon),
                                          size: 20,
                                          color: ColorManager.primary,
                                        ),
                                        kWidth10,
                                        Text(
                                          Appstrings.translate,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: ColorManager.primary,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: ColorManager.primary,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ));
          },
        ));
  }

  Future<void> _downloadAndShareImage(String imageUrl) async {
    try {
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        final directory = await getTemporaryDirectory();
        final imagePath = '${directory.path}/my_image.png';
        final File imageFile = File(imagePath);
        await imageFile.writeAsBytes(response.bodyBytes);

        Share.shareFiles([imagePath]);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Widget _bannerWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        if (state.homeBanner == null || state.isLoading) {
          return ShimmerUtilWidget.borderRectangle(
              width: SizeUtility(context).width, height: 150);
        }

        final banners = state.homeBanner?.result!.banners;
        return Column(
          children: [
            CarouselSlider(
              items: banners?.map((banner) {
                return GestureDetector(
                    onTap: () {
                      if (banner.routing == null ||
                          banner.routing?.route == "") {
                        return;
                      } else if (banner.routing?.route ==
                          MyAppRouteConstants.categoriesProductsRouteName) {
                        final routing = banner.routing!;

                        final categoryId = routing.categoryId?.title;
                        final subCategoryId = routing.subCategoryId?.title;
                        final itemTypeId = routing.itemTypeId?.title;

                        if (categoryId == "" &&
                            subCategoryId == "" &&
                            itemTypeId == "") {
                          return;
                        } else {
                          context.pushNamed(
                            routing.route!,
                            extra: {
                              'category': categoryId,
                              'itemId': subCategoryId.toString(),
                              'type': FilterType.category,
                            },
                          );
                        }
                      } else if (banner.routing?.route ==
                          MyAppRouteConstants.travelPackagesView) {
                        final routing = banner.routing!;
                        final city = routing.city;
                        final country = routing.country;

                        context.pushNamed(
                          routing.route!,
                          pathParameters: {
                            "title": Appstrings.products,
                          },
                          extra: {
                            'city': city,
                            'country': country,
                            "type": TravelsPackagesType.browseByCountries,
                          },
                        );
                      }
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Utilities().buildCachedNetworkImage(
                          imageUrl: banner.image,
                        )));
              }).toList(),
              options: CarouselOptions(
                height: 150,
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                onPageChanged: (index, reason) {
                  BlocProvider.of<HomeBloc>(context)
                      .add(ChangeHomeBannerIndex(index: index));
                },
              ),
            ),
            kHeight10,
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: banners!.map((banner) {
                    int index = banners.indexOf(banner);
                    return Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.homeBannerIndex == index
                            ? ColorManager.primary
                            : ColorManager.greyD1,
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildIconWidget(
      {required String image,
      required String text,
      required VoidCallback onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: black247,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(
              image,
            ),
          ),
          kHeight10,
          Text(
            text,
            style: const TextStyle(color: black165),
          )
        ],
      ),
    );
  }
}
