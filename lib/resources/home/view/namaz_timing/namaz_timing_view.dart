import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/models/cities_models/cities_model.dart';
import '../../../../utils/globals.dart';
import '../../../../utils/size_utility.dart';
import '../../../profile/views/profile_view.dart';
import '../../bloc/logic/location_bloc/location_bloc.dart';
import '../../bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import '../../bloc/service/locatio_service.dart';

class NamazTimingView extends StatefulWidget {
  static const routeName = 'namaz-timing';
  const NamazTimingView({super.key});

  @override
  State<NamazTimingView> createState() => _NamazTimingViewState();
}

class _NamazTimingViewState extends State<NamazTimingView> {
  List<StateData> _cities = [];
  final List<StateData> _searchResults = [];
  final TextEditingController _searchController = TextEditingController();

  bool isDetectLocation = false;
  bool isAutomaticSetting = false;
  @override
  void initState() {
    BlocProvider.of<NamazTimingBloc>(context).add(const FetchPrayerTiming());
    // BlocProvider.of<NamazTimingBloc>(context).add(const PrayerTimingEvent());
    BlocProvider.of<LocationBloc>(context).add(const FetchCities());
    _fetchCities();
    super.initState();
  }

  Future<void> _fetchCities() async {
    try {
      final cities = context.read<LocationBloc>().state.cities;
      setState(() {
        _cities = cities;
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  void _search(String query) {
    _searchResults.clear();

    if (query.isNotEmpty) {
      for (var city in _cities) {
        if (city.name!.toLowerCase().contains(query.toLowerCase())) {
          _searchResults.add(city);
        }
      }
    } else {
      _searchResults.addAll(_cities);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // print('location ${_currentAddress}');
    return Scaffold(
        body: Stack(
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
                        backgroundImage: AssetImage('assets/icons/user.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Asslamualaikum',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(context.read<DatabaseBloc>().state.name.toString(),
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
                                                  'Prayer Timmings Setting',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
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
                                              MainAxisAlignment.spaceBetween,
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
                                                      BlocBuilder<LocationBloc,
                                                          LocationState>(
                                                        builder: (context, state) => Text(
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
                                                            context: context,
                                                            builder: (context) {
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
                                                builder: (context, state) =>
                                                    Text(state.currentLocaion,
                                                        style: const TextStyle(
                                                            color: black165)),
                                              ),
                                        const SizedBox(height: 7),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                  isAutomaticSetting = value;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          'University fo Islamic Science\'s, Karachi',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
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
                                                              FontWeight.w600,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            'University of islamic\n Science\'s, Karachi',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                                height: 1.5),
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
                                                            icon: const Icon(Icons
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
                                                              FontWeight.w600,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            'Hanafi',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
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
                                                            icon: const Icon(Icons
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
                                                              FontWeight.w600,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            'Angle based method',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
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
                                                            icon: const Icon(Icons
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
                                                              FontWeight.w600,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            '0,0,0,0,0,0',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(Icons
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
                                              MainAxisAlignment.spaceBetween,
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
                                                        .read<NamazTimingBloc>()
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
                                              height: 1.4),
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
                              return
                                  //  state.currentNamaz == null
                                  //     ? const SizedBox()
                                  //     :
                                  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    // state.currentNamaz?.keys
                                    //         .toString()
                                    //         .replaceAll('(', '')
                                    //         .replaceAll(')', '') ??
                                    //     '',
                                    'Asr: 15:34',
                                    style: TextStyle(
                                      color: mainColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      state.currentNamaz?.values
                                              .toString()
                                              .replaceAll('(', '')
                                              .replaceAll(')', '') ??
                                          '',
                                      style: const TextStyle(
                                          color: black132,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600)),
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
                              return
                                  // state.upcomingNamaz == null
                                  // ? const SizedBox()
                                  // :
                                  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    // state.upcomingNamaz?.keys
                                    //         .toString()
                                    //         .replaceAll('(', '')
                                    //         .replaceAll(')', '') ??
                                    //     '',
                                    'Asr: 15:34',
                                    style: TextStyle(
                                      color: mainColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      state.upcomingNamaz?.values
                                              .toString()
                                              .replaceAll('(', '')
                                              .replaceAll(')', '') ??
                                          '',
                                      style: const TextStyle(
                                          color: black132,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600)),
                                ],
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
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
                        Text(
                          '2 Dhu al-Qi\'dah,1444',
                          style: TextStyle(
                            color: primaryGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          'Monday,22nd May 2023',
                          style: TextStyle(
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
                            title: prayerNames[index],
                            time: prayerTimes[index],
                            image: images[index]);
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    ));
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

  Container highLatitudeWidget(BuildContext context) {
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
                const Text(
                  'None',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Middle of the night',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '1/7th of night',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Angle based method',
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
            )
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
            Container(
              decoration: BoxDecoration(
                color: black166.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: _searchController,
                style: const TextStyle(color: Colors.grey),
                onChanged: (value) {
                  setState(() {
                    _searchController.value = _searchController.value.copyWith(
                      text: value,
                      selection: TextSelection.fromPosition(
                        TextPosition(offset: value.length),
                      ),
                    );
                  });
                  BlocProvider.of<LocationBloc>(context)
                      .add(SearchCities(query: value));
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search Location',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<LocationBloc, LocationState>(
                builder: (context, state) {
                  final searchResults = _searchController.text.isEmpty
                      ? state.cities
                      : state.cities;

                  return ListView.builder(
                    itemCount: searchResults.length,
                    itemBuilder: (context, index) {
                      final city = searchResults[index];

                      return InkWell(
                        onTap: () {
                          context
                              .read<LocationBloc>()
                              .add(ChangeLocation(location: city.name!));
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          title: Text(city.name!),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container calculationMethodWidget(BuildContext context) {
    return Container(
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
                    icon: const Icon(Icons.arrow_back_ios)),
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
                final data = state.prayerModel?.data.meta.method;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. ${data?.name}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: SizeUtility(context).width / 3,
                          height: 80,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Calculation:',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        Text(
                          'Fajr: ${data?.params.fajr}\nIsha: ${data?.params.isha}\n',
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              height: 1.3,
                              color: black104),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: SizeUtility(context).width / 3,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Commonly used',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        Text(
                          state.methodPlace,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            height: 1.3,
                            color: black104,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '2. Custom Method',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: SizeUtility(context).width / 3,
                          height: 80,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Calculation:',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        const Text(
                          'Fajr: 18.0\nMaghrib: 0 Mins after Sunset\nIsha: 17.0°\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              height: 1.3,
                              color: black104),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: SizeUtility(context).width / 3,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Commonly used in:',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        const Text(
                          '-',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              height: 1.3,
                              color: black104),
                        ),
                      ],
                    ),
                    const Text(
                      '3. Custom Method',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: SizeUtility(context).width / 3,
                          height: 80,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Calculation:',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        const Text(
                          'Fajr: 18.0\nMaghrib: 0 Mins after Sunset\nIsha: 17.0°\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              height: 1.3,
                              color: black104),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: SizeUtility(context).width / 3,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Commonly used in:',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        const Text(
                          '-',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              height: 1.3,
                              color: black104),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 10),
            Container(
              width: SizeUtility(context).width,
              height: 180,
              padding: const EdgeInsets.only(left: 12, top: 12),
              decoration: BoxDecoration(
                  color: black26, borderRadius: BorderRadius.circular(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '4. University of Islamic Sciences, Karachi',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 1.5,
                      color: whiteClr,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        width: SizeUtility(context).width / 3,
                        height: 80,
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Calculation:',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: whiteClr),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Fajr: 18.0\nMaghrib: 0 Mins after Sunset\nIsha: 17.0°\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            height: 1.3,
                            color: whiteClr.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9),
                  Row(
                    children: [
                      Container(
                        width: SizeUtility(context).width / 3,
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Commonly used in:',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: whiteClr,
                          ),
                        ),
                      ),
                      const SizedBox(width: 17),
                      Text(
                        'Pakistan Banladesh, India',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          height: 1.3,
                          color: whiteClr.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        // String address = placemark.thoroughfare ?? '';
        // String locality = placemark.locality ?? '';
        // String subAdministrativeArea = placemark.subAdministrativeArea ?? '';
        String administrativeArea = placemark.administrativeArea ?? '';
        String country = placemark.country ?? '';

        String currentAddress = '$administrativeArea, $country';
        return currentAddress;
      }
    } catch (e) {
      print('Error: $e');
    }

    return '';
  }

  buildNamazTile({
    required String title,
    required String time,
    required String image,
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
              const Icon(Icons.notifications_off_outlined),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
