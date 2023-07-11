import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../../../utils/globals.dart';
import '../../../../utils/size_utility.dart';
import '../../../../utils/utils.dart';
import '../../../profile/views/profile_view.dart';
import '../../bloc/logic/location_bloc/location_bloc.dart';
import '../../bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import '../../bloc/service/notification_service.dart';

class NamazTimingView extends StatefulWidget {
  static const routeName = 'namaz-timing';
  const NamazTimingView({super.key});

  @override
  State<NamazTimingView> createState() => _NamazTimingViewState();
}

class _NamazTimingViewState extends State<NamazTimingView> {
  final TextEditingController _searchController = TextEditingController();

  bool isDetectLocation = true;
  bool isAutomaticSetting = true;
  int _currentIndex = 0;
  @override
  void initState() {
    BlocProvider.of<LocationBloc>(context).add(const FetchCities());
    BlocProvider.of<NamazTimingBloc>(context).add(const FetchNamazMethods());

    BlocProvider.of<NamazTimingBloc>(context)
        .add(FetchPrayerTiming(context: context));
    _currentIndex = context.read<NamazTimingBloc>().state.method;
    // _fetchCities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/namaz_timing_appBar.png',
              width: SizeUtility(context).width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
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
                            const Text('Asslamualaikum',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                                context
                                    .read<DatabaseBloc>()
                                    .state
                                    .name
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setState) {
                                    return Container(
                                      height: isAutomaticSetting
                                          ? SizeUtility(context).height / 2.2
                                          : SizeUtility(context).height * 0.75,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 6),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Expanded(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Prayer Timings Setting',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: const Icon(
                                                    Icons.close,
                                                    size: 14,
                                                    color: black122,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Divider(),
                                            const SizedBox(height: 12),
                                            const Text(
                                              'Location',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'Auto-Detect My location',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Switch(
                                                  activeColor: green24,
                                                  value: isDetectLocation,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isDetectLocation = value;
                                                    });
                                                    if (isDetectLocation ==
                                                        true) {
                                                      context
                                                          .read<LocationBloc>()
                                                          .add(
                                                              const ChangeLocationOnToggle());
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 7),
                                            isDetectLocation == false
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Location',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          BlocBuilder<
                                                              LocationBloc,
                                                              LocationState>(
                                                            builder: (context,
                                                                    state) =>
                                                                Text(
                                                                    state
                                                                        .currentLocaion,
                                                                    style: const TextStyle(
                                                                        color:
                                                                            black165)),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return locationWidget(
                                                                      context);
                                                                },
                                                              );
                                                            },
                                                            icon: const Icon(Icons
                                                                .arrow_forward_ios_rounded),
                                                            iconSize: 14,
                                                            color: black102,
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                : BlocBuilder<LocationBloc,
                                                    LocationState>(
                                                    builder: (context, state) {
                                                      return Text(
                                                          state.currentLocaion,
                                                          style: const TextStyle(
                                                              color: black165));
                                                    },
                                                  ),
                                            const SizedBox(height: 7),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'Automatic Settings',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Switch(
                                                  activeColor: green24,
                                                  value: isAutomaticSetting,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isAutomaticSetting =
                                                          value;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                            BlocBuilder<NamazTimingBloc,
                                                NamazTimingState>(
                                              builder: (context, state) => Text(
                                                state.namazMethodName,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 14),
                                            isAutomaticSetting == false
                                                ? Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                            'calculation method',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              BlocBuilder<
                                                                  NamazTimingBloc,
                                                                  NamazTimingState>(
                                                                builder: (context,
                                                                        state) =>
                                                                    Text(
                                                                  state
                                                                      .namazMethodName,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return calculationMethodWidget(
                                                                          context);
                                                                    },
                                                                  );
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded),
                                                                iconSize: 14,
                                                                color: black102,
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                            'Art Calculation-\nJuristic method',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              BlocBuilder<
                                                                  NamazTimingBloc,
                                                                  NamazTimingState>(
                                                                builder: (context,
                                                                        state) =>
                                                                    Text(
                                                                  state.isArtCalcMehod ==
                                                                          false
                                                                      ? "Hanafi"
                                                                      : "Standard(Shafi, Malik, Hambali)",
                                                                  style:
                                                                      const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return artCalculationWidget(
                                                                          context);
                                                                    },
                                                                  );
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded),
                                                                iconSize: 14,
                                                                color: black102,
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 7),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                            'High Latitude methods ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              BlocBuilder<
                                                                  NamazTimingBloc,
                                                                  NamazTimingState>(
                                                                builder: (context,
                                                                        state) =>
                                                                    Text(
                                                                  state.highLatMethodVal ==
                                                                          0
                                                                      ? "None"
                                                                      : state.highLatMethodVal ==
                                                                              1
                                                                          ? "Middle of the night"
                                                                          : state.highLatMethodVal == 2
                                                                              ? "1/7th of night"
                                                                              : state.highLatMethodVal == 3
                                                                                  ? "Angle based method"
                                                                                  : "",
                                                                  style:
                                                                      const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return highLatitudeWidget(
                                                                          context);
                                                                    },
                                                                  );
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded),
                                                                iconSize: 14,
                                                                color: black102,
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                            'Manual Corrections',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              const Text(
                                                                '0,0,0,0,0,0',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return Column(
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              IconButton(
                                                                                  onPressed: () {
                                                                                    Navigator.of(context).pop();
                                                                                  },
                                                                                  icon: const Icon(Icons.arrow_back_ios)),
                                                                              const Text(
                                                                                'Manual Corrections',
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              IconButton(
                                                                                onPressed: () {
                                                                                  Navigator.of(context).pop();
                                                                                },
                                                                                icon: const Icon(
                                                                                  Icons.close,
                                                                                  size: 16,
                                                                                  // color: black122,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const Divider(),
                                                                          const Padding(
                                                                            padding:
                                                                                EdgeInsets.all(18.0),
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Fajr',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 15),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Sunrise',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 15),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Dhuhr',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 15),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Asr',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 15),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Magrib',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 15),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Isha',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 15),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Qiyam',
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text('0 Minutes')
                                                                                  ],
                                                                                )
                                                                              ],
                                                                            ),
                                                                          )
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded),
                                                                iconSize: 14,
                                                                color: black102,
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                : const SizedBox(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'Show Imsak in Prayer Time Page',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                BlocBuilder<NamazTimingBloc,
                                                    NamazTimingState>(
                                                  builder: (context, state) {
                                                    return Switch(
                                                      activeColor: green24,
                                                      value: state.showImsak,
                                                      onChanged: (value) {
                                                        context
                                                            .read<
                                                                NamazTimingBloc>()
                                                            .add(
                                                                const ShowImsakEvent());
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              'Imsk- it is a period of time, about 10 mins, before \nthe down prayer begins and when people , who \nhave eaten suhoor, must stop eating.',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                height: 1.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: const ImageIcon(
                              AssetImage('assets/icons/settings.png'),
                              color: Colors.white,
                              size: 25),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 81,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: whiteClr,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        currentNamazName,
                                        style: const TextStyle(
                                          color: mainColor,
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
                            children: [
                              const Text(
                                'Upcoming Namaz',
                                style: TextStyle(
                                  fontSize: 12,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        upcomingNamazName,
                                        style: const TextStyle(
                                          color: mainColor,
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    children: [
                      Text(
                        '26 °',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: primaryGreen,
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        'Few clouds',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: black104,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      BlocBuilder<NamazTimingBloc, NamazTimingState>(
                        builder: (context, state) => Text(
                          state.arabicDate,
                          style: const TextStyle(
                            fontFamily: 'ArabicFont',
                            color: primaryGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        Utilities.formatDate(DateTime.now().toString()),
                        style: const TextStyle(
                          color: black104,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) {
                  if (state.prayerModel == null) {
                    return const SizedBox();
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.showImsak == true ? 7 : 6,
                    itemBuilder: (context, index) {
                      final images = [
                        "assets/icons/fajr.png",
                        "assets/icons/sunrise.png",
                        "assets/icons/duhar.png",
                        "assets/icons/asar.png",
                        "assets/icons/magrib.png",
                        "assets/icons/isha.png",
                        "assets/icons/isha.png",
                        "assets/icons/qiyam.png"
                      ];

                      final data = state.prayerModel!.data.timings;
                      final Map<String, dynamic> times = {
                        'Fajr': data.fajr,
                        'Sunrise': data.sunrise,
                        'Dhuhr': data.dhuhr,
                        'Asr': data.asr,
                        'Maghrib': data.maghrib,
                        'Isha': data.isha,
                        "Qiyam": data.imsak
                      };
                      final List<String> prayerNames = times.keys.toList();
                      final List prayerTimes = times.values.toList();

                      return buildNamazTile(
                          isNotiy: state.isNotify,
                          title: prayerNames[index],
                          time: prayerTimes[index],
                          image: images[index]);
                    },
                  );
                },
              )
            ],
          ),
        )
      ],
    ));
  }

  buildNamazTile({
    required String title,
    required String time,
    required String image,
    required bool isNotiy,
  }) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            radius: 18,
            backgroundColor: green24,
            child: Image.asset(
              image,
              width: 22,
              height: 17,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
              const SizedBox(width: 12),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isNotiy = !isNotiy;
                    });
                    print("here on the notify $isNotiy");
                    context
                        .read<NamazTimingBloc>()
                        .add(OnNotiyOnOffEvent(value: isNotiy));
                    context
                        .read<NamazTimingBloc>()
                        .add(const PrayerTimingEvent());
                  },
                  icon: isNotiy == true
                      ? const Icon(Icons.notifications_none_rounded,
                          color: primaryGreen)
                      : const Icon(Icons.notifications_off_rounded,
                          color: primaryGreen)),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }

  Container daylightSavingWidget(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteClr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const Text(
                  'Daylight Saving',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 16,
                    // color: black122,
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Auto',
                  style: TextStyle(
                    color: primaryGreen,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Radio(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  fillColor: const MaterialStatePropertyAll(green24),
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '+1 Hour',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Radio(
                  value: false,
                  groupValue: true,
                  onChanged: (value) {},
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '+30 minutes',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Radio(
                  value: false,
                  groupValue: true,
                  onChanged: (value) {},
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '-30 Minutes',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Radio(
                  value: false,
                  groupValue: true,
                  onChanged: (value) {},
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '-1 Hour',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Radio(
                  value: false,
                  groupValue: true,
                  onChanged: (value) {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container artCalculationWidget(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteClr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: BlocBuilder<NamazTimingBloc, NamazTimingState>(
          builder: (context, state) => Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'Art Calculation-\nJuristic method',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 16,
                      // color: black122,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Standard (Shafi, Maliki, Hanbali)',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color:
                          state.isArtCalcMehod == true ? primaryGreen : black26,
                    ),
                  ),
                  Radio(
                    value: state.isArtCalcMehod,
                    groupValue: true,
                    onChanged: (value) {
                      context
                          .read<NamazTimingBloc>()
                          .add(const ChangeArtCalcMethod());
                      context
                          .read<NamazTimingBloc>()
                          .add(ChangeSchoolEvent(school: 0, context: context));
                    },
                    fillColor: const MaterialStatePropertyAll(green24),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hanafi',
                    style: TextStyle(
                      color: state.isArtCalcMehod == false
                          ? primaryGreen
                          : black26,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Radio(
                    value: state.isArtCalcMehod == false ? true : false,
                    groupValue: true,
                    onChanged: (value) {
                      context
                          .read<NamazTimingBloc>()
                          .add(const ChangeArtCalcMethod());
                      context
                          .read<NamazTimingBloc>()
                          .add(ChangeSchoolEvent(school: 1, context: context));
                    },
                    fillColor: const MaterialStatePropertyAll(green24),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget highLatitudeWidget(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteClr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: BlocBuilder<NamazTimingBloc, NamazTimingState>(
          builder: (context, state) => Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'High Latitude method',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 16,
                      // color: black122,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'None',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: state.highLatMethodVal == 0
                            ? primaryGreen
                            : black26),
                  ),
                  Radio(
                    value: state.highLatMethodVal == 0,
                    groupValue: true,
                    onChanged: (value) {
                      context.read<NamazTimingBloc>().add(
                          ChangeHighLatitudeMethod(
                              numValue: 0, context: context));
                    },
                    fillColor: const MaterialStatePropertyAll(green24),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Middle of the night',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: state.highLatMethodVal == 1
                            ? primaryGreen
                            : black26),
                  ),
                  Radio(
                      value: state.highLatMethodVal == 1,
                      groupValue: true,
                      onChanged: (value) {
                        context.read<NamazTimingBloc>().add(
                            ChangeHighLatitudeMethod(
                                numValue: 1, context: context));
                      },
                      fillColor: const MaterialStatePropertyAll(green24))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1/7th of night',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: state.highLatMethodVal == 2
                            ? primaryGreen
                            : black26),
                  ),
                  Radio(
                      value: state.highLatMethodVal == 2,
                      groupValue: true,
                      onChanged: (value) {
                        context.read<NamazTimingBloc>().add(
                            ChangeHighLatitudeMethod(
                                numValue: 2, context: context));
                      },
                      fillColor: const MaterialStatePropertyAll(green24))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Angle based method',
                    style: TextStyle(
                      color:
                          state.highLatMethodVal == 3 ? primaryGreen : black26,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Radio(
                    value: state.highLatMethodVal == 3,
                    groupValue: true,
                    onChanged: (value) {
                      context.read<NamazTimingBloc>().add(
                          ChangeHighLatitudeMethod(
                              numValue: 3, context: context));
                    },
                    fillColor: const MaterialStatePropertyAll(green24),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container locationWidget(BuildContext context) {
    return Container(
      height: SizeUtility(context).height * 0.8,
      decoration: const BoxDecoration(
        color: whiteClr,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const Text(
                  'Search Location',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.my_location_rounded,
                    size: 25,
                    // color: black122,
                  ),
                ),
              ],
            ),
            const Divider(),
            BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) => Container(
                decoration: BoxDecoration(
                  color: black166.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.grey),
                  onChanged: (value) {
                    context
                        .read<LocationBloc>()
                        .add(SearchCities(query: value));
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search Location',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                  onFieldSubmitted: (value) {
                    print('object test ahn monuse');
                    context
                        .read<LocationBloc>()
                        .add(SearchCities(query: value));
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<LocationBloc, LocationState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.searchCities.length,
                    itemBuilder: (context, countryIndex) {
                      final countryData = state.searchCities[countryIndex];
                      final cities = countryData.cities;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              countryData.country,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: cities.length,
                            itemBuilder: (context, cityIndex) {
                              final city = cities[cityIndex];

                              return InkWell(
                                onTap: () {
                                  print('here on the tap city name $city');
                                  context.read<LocationBloc>().add(
                                      ChangeLocation(
                                          location:
                                              "$city ${countryData.country}"));
                                  context
                                      .read<NamazTimingBloc>()
                                      .add(FetchPrayerTiming(context: context));
                                  Navigator.of(context).pop();
                                },
                                child: ListTile(
                                  title: Text(city),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget calculationMethodWidget(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: SizeUtility(context).height * 0.9,
        decoration: BoxDecoration(
          color: whiteClr,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    'Calculation method',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 14,
                      color: black122,
                    ),
                  ),
                ],
              ),
              const Divider(),
              BlocBuilder<NamazTimingBloc, NamazTimingState>(
                builder: (context, state) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.namazMethodsModel?.length,
                      itemBuilder: (context, index) {
                        final data = state.namazMethodsModel;

                        final values = data;

                        final value = values?[index];

                        final id = value?.id!.toInt();
                        final name = value?.name;
                        final params = value?.params;
                        final location = value?.location;
                        final address = location;

                        return GestureDetector(
                          onTap: () async {
                            setState(() {
                              _currentIndex = index;
                            });

                            context.read<NamazTimingBloc>().add(
                                  ChangeNamazMethods(
                                    method: id!,
                                    context: context,
                                  ),
                                );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Container(
                                width: SizeUtility(context).width,
                                height: 200,
                                padding:
                                    const EdgeInsets.only(left: 12, top: 12),
                                decoration: BoxDecoration(
                                  color: _currentIndex == index
                                      ? black26
                                      : whiteClr,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${index + 1} $name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        height: 1.5,
                                        color: _currentIndex == index
                                            ? whiteClr
                                            : black26,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: SizeUtility(context).width / 3,
                                          height: 80,
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Calculation:',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: _currentIndex == index
                                                  ? whiteClr
                                                  : black26,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          'Fajr: ${params?.fajr ?? 0}\nMaghrib: ${params?.maghrib ?? 0}\nIsha: ${params?.isha ?? 0}\n',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17,
                                            height: 1.3,
                                            color: _currentIndex == index
                                                ? whiteClr.withOpacity(0.7)
                                                : black26,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 9),
                                    Row(
                                      children: [
                                        Container(
                                          width: SizeUtility(context).width / 3,
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Commonly used in:',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: _currentIndex == index
                                                  ? whiteClr
                                                  : black26,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 17),
                                        Expanded(
                                          child: FutureBuilder<String>(
                                            future: _getAddress(
                                              address?.latitude ?? 0,
                                              address?.longitude ?? 0,
                                            ),
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return Text(
                                                  'Loading...',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 17,
                                                    height: 1.3,
                                                    color: _currentIndex ==
                                                            index
                                                        ? whiteClr
                                                            .withOpacity(0.7)
                                                        : black26,
                                                  ),
                                                );
                                              } else if (snapshot.hasError) {
                                                return Text(
                                                  'Error: ${snapshot.error}',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 17,
                                                    height: 1.3,
                                                    color: _currentIndex ==
                                                            index
                                                        ? whiteClr
                                                            .withOpacity(0.7)
                                                        : black26,
                                                  ),
                                                );
                                              } else {
                                                final currentAddress =
                                                    snapshot.data;
                                                return Text(
                                                  currentAddress ?? '',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 17,
                                                    height: 1.3,
                                                    color: _currentIndex ==
                                                            index
                                                        ? whiteClr
                                                            .withOpacity(0.7)
                                                        : black26,
                                                  ),
                                                  overflow: TextOverflow.fade,
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10)
                                  ],
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
          ),
        ),
      ),
    );
  }

  Future<String> _getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        String administrativeArea = placemark.locality ?? '';
        String country = placemark.country ?? '';

        String currentAddress = '$administrativeArea, $country';
        return currentAddress;
      }
    } catch (e) {
      print('Error: $e');
    }

    return '';
  }
}
