import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import 'package:millat/resources/home/bloc/service/quran_service.dart';
import 'package:millat/utils/constants.dart';
import '../../../utils/color_manager.dart';
import '../../../utils/size_utility.dart';
import '../../../utils/utils.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../profile/views/profile_view.dart';
import '../../shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../bloc/logic/location_bloc/location_bloc.dart';
import '../bloc/models/chapter_by_id_model/chapter_by_id_model.dart';
import 'al_quran/al_quran_view.dart';

import 'namaz_timing/namaz_timing_view.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  @override
  void initState() {
    BlocProvider.of<LocationBloc>(context).add(const FetchCurrentLocation());
    BlocProvider.of<DatabaseBloc>(context).add(const FetchUserDetails());
    BlocProvider.of<LocationBloc>(context).add(const FetchCities());
    BlocProvider.of<ShopProductsBloc>(context).add(const FetchHomeBanners());
    BlocProvider.of<ShopProductsBloc>(context).add(FetchOrders(context));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: BlocListener<LocationBloc, LocationState>(
        listener: (context, state) {
          if (state.currentLocaion.isNotEmpty) {
            context
                .read<NamazTimingBloc>()
                .add(FetchPrayerTiming(context: context));
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
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: scrollNotifier.value ? 240 : 200,
                      width: SizeUtility(context).width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            scrollNotifier.value
                                ? 'assets/images/home_app_bar.png'
                                : 'assets/images/namaz_timing_appBar.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ProfileView(),
                                  ));
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage('assets/icons/user.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Asslamualaikum,',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  BlocBuilder<DatabaseBloc, DatabaseState>(
                                    builder: (context, state) => Text(
                                        state.name,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const ImageIcon(
                                  AssetImage('assets/icons/bell.png'),
                                  color: Colors.white,
                                  size: 25),
                              const SizedBox(
                                width: 20,
                              ),
                              const ImageIcon(
                                  AssetImage('assets/icons/menu.png'),
                                  color: Colors.white,
                                  size: 25),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          scrollNotifier.value == true
                              ? animatedContainerWidget1(context)
                              : animatedContainerWidget2(context),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      buildIconWidget(
                                        image: 'assets/icons/quran.png',
                                        text: "Qur'an",
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                const AlQuranView(),
                                          ));
                                        },
                                      ),
                                      buildIconWidget(
                                        image: 'assets/icons/adzan.png',
                                        text: 'Hadith',
                                        onTap: () {},
                                      ),
                                      buildIconWidget(
                                        image: 'assets/icons/qibla.png',
                                        text: 'Qibla',
                                        onTap: () {},
                                      ),
                                      buildIconWidget(
                                        image: 'assets/icons/tasbih.png',
                                        text: 'Tasbih',
                                        onTap: () {},
                                      ),
                                      buildIconWidget(
                                        image: "assets/icons/dua.png",
                                        text: "Dua",
                                        onTap: () {
                                          // Navigator.of(context)
                                          //     .push(MaterialPageRoute(
                                          //   builder: (context) =>
                                          //       const Duav,
                                          // ));
                                        },
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  BlocBuilder<ShopProductsBloc,
                                      ShopProductsState>(
                                    builder: (context, state) {
                                      if (state.homeBanner == null) {
                                        return const SizedBox();
                                      }

                                      final banners =
                                          state.homeBanner?.result!.banners;
                                      return Column(
                                        children: [
                                          CarouselSlider(
                                            items: banners?.map((banner) {
                                              return ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.network(
                                                  banner.image,
                                                  fit: BoxFit.contain,
                                                ),
                                              );
                                            }).toList(),
                                            options: CarouselOptions(
                                              height: 150,
                                              viewportFraction: 1,
                                              enlargeCenterPage: true,
                                              autoPlay: true,
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              enableInfiniteScroll: true,
                                              enlargeFactor: 0.3,
                                              scrollDirection: Axis.horizontal,
                                              autoPlayAnimationDuration:
                                                  const Duration(
                                                      milliseconds: 800),
                                              onPageChanged: (index, reason) {
                                                setState(() {
                                                  _currentIndex = index;
                                                });
                                              },
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: banners!.map((banner) {
                                              int index =
                                                  banners.indexOf(banner);
                                              return Container(
                                                width: _currentIndex == index
                                                    ? 24
                                                    : 6,
                                                height: 6,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: _currentIndex == index
                                                      ? ColorManager.primary
                                                      : Colors.grey,
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 30),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                230, 230, 230, 1))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/quran_circle.png',
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Ramadan Special',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Mosque',
                                                  style: TextStyle(
                                                      color: black166,
                                                      fontSize: 15),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                              'assets/images/masjed.png',
                                              fit: BoxFit.cover),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                ImageIcon(
                                                  AssetImage(
                                                      'assets/icons/heart.png'),
                                                  color: black165,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text('Like',
                                                    style: TextStyle(
                                                        color: black165))
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                ImageIcon(
                                                  AssetImage(
                                                      'assets/icons/share.png'),
                                                  color: black165,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Share',
                                                  style: TextStyle(
                                                      color: black165),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  const Text(
                                    'Play Games',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 480,
                                    width: SizeUtility(context).width,
                                    padding: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              lightGreenColor,
                                              darkGreenColor
                                            ])),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'What is the name of the night during which Muslims believe the first verses of the Quran were revealed to Prophet Muhammad?',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 50,
                                          width: SizeUtility(context).width,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: const Text('1. Laitaltul Qadr',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 50,
                                          width: SizeUtility(context).width,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: const Text("Laylatul Bara'ah",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 50,
                                          width: SizeUtility(context).width,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: const Text("Laylatul Eid",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 50,
                                          width: SizeUtility(context).width,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: const Text("Lailatul Mi'raj",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              fixedSize:
                                                  MaterialStateProperty.all(
                                                      Size(
                                                          SizeUtility(context)
                                                              .width,
                                                          50))),
                                          child: const Text(
                                            'Play Games',
                                            style: TextStyle(
                                                color: dark2GreenColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    'Items of the day',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        buildShopItem(
                                            image: 'assets/dummy/sijadah.png',
                                            title:
                                                "Hijaz Turkish Gold Border Lantern..."),
                                        buildShopItem(
                                            image: 'assets/dummy/green_hat.png',
                                            title:
                                                "Green Wool Winter Large Skull Ca..."),
                                        buildShopItem(
                                            image: 'assets/dummy/sijadah.png',
                                            title:
                                                "Hijaz Turkish Gold Border Lantern..."),
                                        buildShopItem(
                                            image: 'assets/dummy/sijadah.png',
                                            title:
                                                "Hijaz Turkish Gold Border Lantern..."),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    'Try Sukoon',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: borderColor)),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          child: Image.asset(
                                              'assets/dummy/try_sukoon.png',
                                              height: 100,
                                              width: 100),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Slider(
                                                activeColor:
                                                    ColorManager.mainColor,
                                                inactiveColor: black153,
                                                value: 0.5,
                                                onChanged: (value) {},
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      '2:44',
                                                      style: TextStyle(
                                                          color: black196),
                                                    ),
                                                    Text(
                                                      '4:13',
                                                      style: TextStyle(
                                                          color: black196),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const ImageIcon(
                                                        AssetImage(
                                                            'assets/icons/previous_sound.png'),
                                                        color: black217,
                                                      )),
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        ColorManager.mainColor,
                                                    child: const Icon(
                                                        Icons.play_arrow,
                                                        color: Colors.white),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const ImageIcon(
                                                        AssetImage(
                                                            'assets/icons/next_sound.png'),
                                                        color: black217,
                                                      ))
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 120,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
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
            height: 54,
            width: 54,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: black247,
              borderRadius: BorderRadius.circular(5),
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
              style: const TextStyle(
                  color: black83,
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
