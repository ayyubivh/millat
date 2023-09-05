// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/shop/view/brand/single_brand_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/qibla/qibla_view.dart';
import 'package:millat/resources/home/view/tasbih/tasbih_view.dart';
import 'package:millat/resources/home/view/widgets/hadit_tinder_cards.dart';

import 'package:millat/resources/home/view/widgets/notification_view.dart';
import 'package:millat/resources/home/view/widgets/prayer_tracker_calendar_view.dart';
import 'package:millat/resources/shop/view/categories/categories_view.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import '../../../enums/enumertations.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/color_manager.dart';
import '../../../utils/size_utility.dart';
import '../../../utils/string_constants.dart';
import '../../../utils/utils.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../bloc/logic/location_bloc/location_bloc.dart';
import 'al_quran/al_quran_view.dart';
import 'dua/dua_view.dart';
import 'namaz_timing/namaz_timing_view.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  String verskey = "";

  @override
  void initState() {
    BlocProvider.of<QuranBloc>(context)
        .add(FetchVersesByKey(verseKey: getShuffledList()));

    BlocProvider.of<BookmarkBloc>(context).add(const FetchCollectionItem());
    BlocProvider.of<LocationBloc>(context).add(const FetchCurrentLocation());
    BlocProvider.of<DatabaseBloc>(context)
      ..add(const FetchUserDetails())
      ..add(FetchAuthUser(context: context));
    BlocProvider.of<LocationBloc>(context).add(const FetchCities());
    BlocProvider.of<ShopProductsBloc>(context).add(const FetchHomeBanners());
    BlocProvider.of<ShopProductsBloc>(context).add(FetchOrders(context));
    BlocProvider.of<NamazTimingBloc>(context)
      ..add(const GetCalculationMethodFromStorage())
      ..add(const GetAsrCalculationMethodFromStorage())
      ..add(const GetHighLatitudeMethodsToLocalStorage());

    BlocProvider.of<HomeBloc>(context)
      ..add(const FetchLargeDisountsBanner())
      ..add(const FetchTopOffersBanner())
      ..add(const FetchBrandofTheDay())
      ..add(const FetchHadithOfTheDay())
      ..add(const FetchEventOfTheMonth())
      ..add(const ChangeIndexofAllaysaysBg());

    super.initState();
  }

  List<String> getShuffledList() {
    final shuffledList = List.from(context.read<QuranBloc>().state.tempListAya)
      ..shuffle();
    final selectedAya = shuffledList.first;
    setState(() {
      verskey = selectedAya;
    });
    return [selectedAya];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // endDrawer: const HomeDrawyerWidget(),
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
            if (state.currentLocaion.isNotEmpty) {
              context
                  .read<NamazTimingBloc>()
                  .add(FetchPrayerTiming(context: context));
              context.read<LocationBloc>().add(const FetchWeatherEvent());
            }
          },
          child: BlocListener<NamazTimingBloc, NamazTimingState>(
            listener: (context, state) {
              if (state.prayerModel != null) {
                context.read<NamazTimingBloc>().add(const PrayerTimingEvent());
              }
            },
            child: ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (context, value, child) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    final double scrollPosition = notification.metrics.pixels;
                    const double epsilon = 1.0;

                    if (direction == ScrollDirection.reverse) {
                      scrollNotifier.value = false;
                    } else if (direction == ScrollDirection.forward &&
                        scrollPosition <= epsilon) {
                      scrollNotifier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 200,
                        width: SizeUtility(context).width,
                        decoration: BoxDecoration(
                          // color: Colors.transparent.withOpacity(0),
                          image: DecorationImage(
                            image: AssetImage(
                              scrollNotifier.value
                                  ? AppAssetsStrings.homeAppbar
                                  : AppAssetsStrings.namazTimingAppbar,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          kHeight50,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(Appstrings.assalamuAlaikum,
                                        style: TextStyle(
                                            color: ColorManager.whiteColor,
                                            fontSize: 18)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    BlocBuilder<DatabaseBloc, DatabaseState>(
                                      builder: (context, state) => Text(
                                          state.authUserModel?.result?.user
                                                  ?.name ??
                                              "",
                                          style: TextStyle(
                                              color: ColorManager.whiteColor,
                                              fontSize: 18)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const NotificationView(),
                                    ));
                                  },
                                  child: ImageIcon(
                                      const AssetImage(
                                          AppAssetsStrings.bellIcon),
                                      color: ColorManager.whiteColor,
                                      size: 25),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                // GestureDetector(
                                //   onTap: () {
                                //     Scaffold.of(context).openEndDrawer();
                                //   },
                                //   child: ImageIcon(
                                //       const AssetImage(
                                //           AppAssetsStrings.menuIcon),
                                //       color: ColorManager.whiteColor,
                                //       size: 25),
                                // ),
                              ],
                            ),
                          ),
                          kHeight25,
                          scrollNotifier.value == true
                              ? animatedContainerWidget1(context)
                              : animatedContainerWidget2(context),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  kHeight16,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            buildIconWidget(
                                              image: AppAssetsStrings
                                                  .homeQuranIcon,
                                              text: Appstrings.quran,
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AlQuranView(),
                                                ));
                                              },
                                            ),
                                            BlocBuilder<LocationBloc,
                                                LocationState>(
                                              builder: (context, state) =>
                                                  buildIconWidget(
                                                image: AppAssetsStrings
                                                    .homeCompassIcon,
                                                text: Appstrings.compass,
                                                onTap: () {
                                                  if (state.currentLocaion
                                                      .isNotEmpty) {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const QiblahScreen(),
                                                        ));
                                                  } else {
                                                    showSnackBar(
                                                      context,
                                                      Appstrings.turnOnLocation,
                                                    );
                                                  }
                                                },
                                              ),
                                            ),
                                            buildIconWidget(
                                              image: AppAssetsStrings
                                                  .homeTasbihIcon,
                                              text: Appstrings.tasbih,
                                              onTap: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const TasbihView()));
                                              },
                                            ),
                                            buildIconWidget(
                                                image: AppAssetsStrings
                                                    .homeDuaIcon,
                                                text: Appstrings.dua,
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        const DuaView(),
                                                  ));
                                                })
                                          ],
                                        ),
                                        kHeight20,
                                        _bannerWidget(),
                                        kHeight15,
                                        _quranAyaWidget(context),
                                        _dailyPrayerTracker(context),
                                        const SizedBox(
                                          height: 340,
                                          child: HaditTinkerCards(),
                                        )
                                      ],
                                    ),
                                  ),
                                  kHeight25,
                                  _largeDiscountWidget(context),
                                  _eventOfTheMonthWidget(context),
                                  kHeight20,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      children: [
                                        _topOffersWidget(),
                                        kHeight25,
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: _brandOftheDayWidget(),
                                  ),
                                  kHeight50,
                                  kHeight50,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _brandOftheDayWidget() {
    return Column(
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
            if (state.isLoading ||
                state.brandOftheDayModel?.result?.banners == null) {
              return const Loader();
            }
            return SizedBox(
              height: 230,
              // width: 330,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.brandOftheDayModel!.result!.banners!.length,
                itemBuilder: (context, index) {
                  final data =
                      state.brandOftheDayModel!.result!.banners![index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleBrandView(
                            passValue: data.brandId,
                            brandViewType: BrandViewType.brandOftheDay),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.veryLightGreen,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        height: 230,
                        width: SizeUtility(context).width / 1.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Stack(
                            children: [
                              Image.network(
                                data.image!,
                                height: 230,
                                width: SizeUtility(context).width / 1.6,
                                fit: BoxFit.cover,
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
                                        borderRadius: BorderRadius.circular(12),
                                        color: ColorManager.whiteColor,
                                      ),
                                      child:
                                          Image.network(data.brandId!.image!),
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
    );
  }

  Widget _topOffersWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            if (state.isLoading ||
                state.topOffersModel?.result.banners == null) {
              return const Loader();
            }
            return SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.topOffersModel!.result.banners.length,
                itemExtent: 95,
                itemBuilder: (context, index) {
                  final data = state.topOffersModel!.result.banners[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CategoriesView(
                            category: data.subCategoryId.title,
                            subCategory: data.subCategoryName,
                            type: FilterType.category),
                      ));
                    },
                    child: Column(
                      children: [
                        Image.network(
                          data.image,
                          height: 75,
                          width: 75,
                        ),
                        kHeight5,
                        Text(
                          data.subCategoryName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
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
              if (state.isLoading ||
                  state.eventOfTheMonthModel?.result?.event == null) {
                return const Loader();
              }
              final banners =
                  state.eventOfTheMonthModel?.result!.event![0].images;

              return Column(
                children: [
                  CarouselSlider(
                    items: banners?.map((banner) {
                      return ClipRRect(
                        // borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          banner,
                          height: 327,
                          fit: BoxFit.contain,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 300,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
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
                          color: _currentIndex == index
                              ? ColorManager.primary
                              : ColorManager.greyD1,
                        ),
                      );
                    }).toList(),
                  ),
                  kHeight10,
                  GestureDetector(
                    onTap: () async {
                      _downloadAndShareImage(state
                          .eventOfTheMonthModel!.result!.event![0].images![0]);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: ColorManager.grey70,
                          size: 20,
                        ),
                        kWidht10,
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

  Container _largeDiscountWidget(BuildContext context) {
    return Container(
      height: 212,
      width: SizeUtility(context).width,
      color: ColorManager.scaffolBgColor,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Appstrings.largeDiscount,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ImageIcon(
                AssetImage(AppAssetsStrings.discountIcon),
              )
            ],
          ),
          Text(
            Appstrings.onLargeDiscount,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: ColorManager.blackColor),
          ),
          kHeight15,
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading ||
                  state.largeDiscountModel?.result.banners == null) {
                return const Loader();
              }

              return SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.largeDiscountModel!.result.banners.length,
                  itemBuilder: (context, index) {
                    final banner =
                        state.largeDiscountModel!.result.banners[index];
                    final subCategoryIdTitle = banner.subCategoryId.title;
                    final subCategoryName = banner.subCategoryName;
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategoriesView(
                            category: subCategoryIdTitle,
                            subCategory: subCategoryName,
                            type: FilterType.category,
                          ),
                        ));
                      },
                      child: Image.network(
                        banner.image,
                        height: 70,
                        width: 90,
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }

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
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PrayerTrackerCalendarView(),
                ));
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

                  String currentNamazTime = currentNamaz?['time'] ?? '';
                  DateTime now = DateTime.now();
                  List<String> timeParts = currentNamazTime.split(':');

                  bool isFajr = false;
                  bool isDhuhr = false;
                  bool isAsr = false;
                  bool isMagrib = false;
                  bool isIsha = false;

                  if (timeParts.length == 2) {
                    int hour = int.tryParse(timeParts[0]) ?? 0;
                    int minute = int.tryParse(timeParts[1]) ?? 0;
                    DateTime namazTime =
                        DateTime(now.year, now.month, now.day, hour, minute);
                    // print(namazTime);
                    isFajr = namazTime.isAfter(now);
                    isDhuhr = namazTime.isAfter(now);
                    isAsr = namazTime.isAfter(now);
                    isMagrib = namazTime.isAfter(now);
                    isIsha = namazTime.isAfter(now);
                  }

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dailyTrackerWidget(
                        isUpcoming: isFajr,
                        namazName: Appstrings.fajr,
                        isCompleted: data.prayerTrackerFajr,
                        onTap: () {
                          currentNamazName == Appstrings.fajr
                              ? context.read<HomeBloc>().add(
                                  AddPrayerToPrayerTracker(
                                      namazName: Appstrings.fajr,
                                      context: context))
                              : null;
                          context.read<HomeBloc>().add(FetchPrayerTrackerEvent(
                              date: DateTime.now(), context: context));
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: isDhuhr,
                        namazName: Appstrings.dhuhr,
                        isCompleted: data.prayerTrackerDhuhr,
                        onTap: () {
                          currentNamazName == Appstrings.dhuhr
                              ? context.read<HomeBloc>().add(
                                  AddPrayerToPrayerTracker(
                                      namazName: Appstrings.dhuhr,
                                      context: context))
                              : null;
                          context.read<HomeBloc>().add(FetchPrayerTrackerEvent(
                              date: DateTime.now(), context: context));
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: isAsr,
                        namazName: Appstrings.asr,
                        isCompleted: data.prayerTrackerAsr,
                        onTap: () {
                          currentNamazName == Appstrings.asr
                              ? context.read<HomeBloc>().add(
                                  AddPrayerToPrayerTracker(
                                      namazName: Appstrings.asr,
                                      context: context))
                              : null;
                          context.read<HomeBloc>().add(FetchPrayerTrackerEvent(
                              date: DateTime.now(), context: context));
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: true,
                        namazName: Appstrings.magrib,
                        isCompleted: data.prayerTrackerMagrib,
                        onTap: () {
                          currentNamazName == Appstrings.magrib
                              ? context.read<HomeBloc>().add(
                                  AddPrayerToPrayerTracker(
                                      namazName: Appstrings.magrib,
                                      context: context))
                              : null;
                          context.read<HomeBloc>().add(FetchPrayerTrackerEvent(
                              date: DateTime.now(), context: context));
                        },
                      ),
                      dailyTrackerWidget(
                        isUpcoming: true,
                        namazName: Appstrings.isha,
                        isShow: false,
                        isCompleted: data.prayerTrackerIsha,
                        onTap: () {
                          currentNamazName == Appstrings.isha
                              ? context.read<HomeBloc>().add(
                                  AddPrayerToPrayerTracker(
                                      namazName: Appstrings.isha,
                                      context: context))
                              : null;
                          context.read<HomeBloc>().add(FetchPrayerTrackerEvent(
                              date: DateTime.now(), context: context));
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isUpcoming == true
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
    );
  }

  Widget _quranAyaWidget(BuildContext context) {
    return SizedBox(
      height: 290,
      width: SizeUtility(context).width,
      child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: PageController(
              initialPage: context.read<HomeBloc>().state.allaysBgindex),
          children: List.generate(
            7,
            (index) => Container(
              height: 290,
              width: SizeUtility(context).width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/backgrounds/allay_says_bg_$index.png"))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: BlocBuilder<QuranBloc, QuranState>(
                  builder: (context, state) {
                    if (state.versesByKeyModel!.isEmpty) {
                      return const Loader();
                    }
                    final data = state.versesByKeyModel?[0];

                    return Column(
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
                        kHeight10,
                        // Text(
                        //   "Al-Faitha : 2,3",
                        //   style: TextStyle(
                        //     fontSize: 15,
                        //     fontWeight: FontWeight.w500,
                        //     color: ColorManager.textGrey88,
                        //   ),
                        // ),
                        kHeight10,
                        Text(
                          data!.verses[0].textIndopak,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.blackColor,
                            fontFamily: "Hafs",
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        kHeight5,
                        Divider(
                          thickness: 1,
                          color: ColorManager.blackColor,
                        ),
                        kHeight8,
                        Text(
                          verskey == "1:2"
                              ? Appstrings.tempAyaMeaning1
                              : verskey == "2:2"
                                  ? Appstrings.tempAyaMeaning2
                                  : verskey == "3:4"
                                      ? Appstrings.tempAyaMeaning3
                                      : Appstrings.tempAyaMeaning4,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.blackColor,
                            letterSpacing: 0.5,
                            height: 1.2,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        kHeight5,
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Appstrings.learnMore,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.primary,
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          )),
    );
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
      print('Error downloading or sharing image: $e');
    }
  }

  BlocBuilder<ShopProductsBloc, ShopProductsState> _bannerWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        if (state.homeBanner == null) {
          return const SizedBox();
        }

        final banners = state.homeBanner?.result!.banners;
        return Column(
          children: [
            CarouselSlider(
              items: banners?.map((banner) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CategoriesView(
                            category: "",
                            subCategory: "",
                            type: FilterType.category)));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      banner.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 150,
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
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
                    color: _currentIndex == index
                        ? ColorManager.primary
                        : ColorManager.greyD1,
                  ),
                );
              }).toList(),
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
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: black247,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(color: black165),
          )
        ],
      ),
    );
  }

  animatedContainerWidget2(BuildContext context) {
    return AnimatedContainer(
        curve: Curves.decelerate,
        duration: const Duration(milliseconds: 1000),
        height: 90,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
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
          builder: (context, state) => state.currentLocaion.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _offlineText(),
                    _locationButton(context),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Now',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
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
                                  style: TextStyle(
                                    color: ColorManager.mainColor,
                                    fontSize: 20,
                                  ),
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
                        const Text(
                          'Upcoming Namaz',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
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
                                  style: TextStyle(
                                    color: ColorManager.mainColor,
                                    fontSize: 20,
                                  ),
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
      curve: Curves.decelerate,
      duration: const Duration(milliseconds: 1000),
      height: scrollNotifier.value == false ? 180 : 190,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
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
            return state.currentLocaion.isEmpty
                ? offlineContainer(context)
                : buildNamazTiming(context);
          },
        ),
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
              size: 35,
            ),
            const SizedBox(
              width: 10,
            ),
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
                  Navigator.of(context).pushNamed(NamazTimingView.routeName);
                },
                icon: const ImageIcon(AssetImage('assets/icons/location.png'),
                    color: blueColor),
                label: const Text(
                  'Allow Me',
                  style: TextStyle(
                    color: blueColor,
                    fontSize: 15,
                  ),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: _offlineText(),
        ),
        kHeight5,
        _locationButton(context)
      ],
    );
  }

  Widget _offlineText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Now',
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
        Container(
          height: 30,
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

  SizedBox _locationButton(BuildContext context) {
    return SizedBox(
      height: 35,
      width: SizeUtility(context).width / 2.8,
      child: ElevatedButton(
        onPressed: () {
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

  Widget buildNamazTiming(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(
              const AssetImage('assets/icons/calendar.png'),
              color: ColorManager.mainColor,
              size: 35,
            ),
            const SizedBox(
              width: 10,
            ),
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
                kHeight5,
                Text(
                  Utilities.formatDate(DateTime.now().toString()),
                  style: const TextStyle(color: black104),
                )
              ],
            ),
            const Spacer(),
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed(NamazTimingView.routeName);
                },
                icon: const ImageIcon(AssetImage('assets/icons/bell.png'),
                    color: blueColor),
                label: const Text(
                  'Notify Me',
                  style: TextStyle(color: blueColor),
                )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Now',
                  style: TextStyle(color: black104, fontSize: 15),
                ),
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
                          style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 20,
                          ),
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
              height: 30,
              width: 0.7,
              color: dividerColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Upcoming Namaz',
                  style: TextStyle(color: black104, fontSize: 15),
                ),
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
                        Text(
                          upcomingNamazName,
                          style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 20,
                          ),
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
        const SizedBox(
          height: 20,
        ),
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
                const SizedBox(
                  width: 10,
                ),
                BlocBuilder<LocationBloc, LocationState>(
                  builder: (context, state) => Text(state.currentLocaion,
                      style: const TextStyle(color: black165)),
                )
              ],
            ),
            const Row(
              children: [
                ImageIcon(
                  AssetImage('assets/icons/share.png'),
                  color: black165,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Share',
                  style: TextStyle(color: black165),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  Padding buildShopItem({required String image, required String title}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 160,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColor)),
              child: Image.asset(image),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                  color: ColorManager.grey83,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.3),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'MRP',
                      style: TextStyle(
                          color: ColorManager.mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '(₹.345)',
                      style: TextStyle(
                          color: blue126,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                const Text(
                  '11%off',
                  style: TextStyle(
                      color: orange255,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '₹307.80',
              style: TextStyle(
                  color: ColorManager.midGreenColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
