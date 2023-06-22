import 'package:flutter/material.dart';

import '../../../../utils/globals.dart';
import '../../../../utils/size_utility.dart';
import '../../../profile/views/profile_view.dart';

class NamazTimingView extends StatefulWidget {
  static const routeName = 'namaz-timing';
  const NamazTimingView({super.key});

  @override
  State<NamazTimingView> createState() => _NamazTimingViewState();
}

class _NamazTimingViewState extends State<NamazTimingView> {
  final ScrollController _scrollController = ScrollController();
  final double _appBarHeight = 60.0;
  bool _isAppBarCollapsed = false;
  bool isDetectLocation = false;
  bool isAutomaticSetting = false;
  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset > _appBarHeight - (kToolbarHeight - 180)) {
        setState(() {
          _isAppBarCollapsed = true;
        });
      } else {
        setState(() {
          _isAppBarCollapsed = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldColor,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              collapsedHeight: _appBarHeight,
              backgroundColor:
                  _isAppBarCollapsed ? midGreenColor : scaffoldColor,
              elevation: 0,
              pinned: true,
              centerTitle: true,
              expandedHeight: 260,
              leadingWidth: _isAppBarCollapsed
                  ? SizeUtility(context).width * 50 / 100
                  : null,
              leading: _isAppBarCollapsed
                  ? const Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Upcoming Namaz',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w100,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Zohar',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(width: 8),
                                Text('1:30 PM',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  : null,
              actions: _isAppBarCollapsed
                  ? [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Image.asset('assets/icons/user.png')),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const ImageIcon(AssetImage('assets/icons/bell.png'),
                          color: Colors.white, size: 25),
                      const SizedBox(
                        width: 20,
                      ),
                      const ImageIcon(AssetImage('assets/icons/menu.png'),
                          color: Colors.white, size: 25),
                      const SizedBox(
                        width: 30,
                      ),
                    ]
                  : [],
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
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
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
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
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Asslamualaikum,',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('Hazrat',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  ],
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return StatefulBuilder(
                                          builder: (context, setState) {
                                            return SingleChildScrollView(
                                              child: Container(
                                                height: 700,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30.0),
                                                    topRight:
                                                        Radius.circular(30.0),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 18.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(height: 6),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                'Prayer Timmings Setting',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
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
                                                      const SizedBox(
                                                          height: 12),
                                                      const Text(
                                                        'Location',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                            'Auto-Detect My location',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Switch(
                                                            activeColor:
                                                                green24,
                                                            value:
                                                                isDetectLocation,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                isDetectLocation =
                                                                    value;
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
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    const Text(
                                                                      'Hyderabad, india',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                    IconButton(
                                                                      onPressed:
                                                                          () {
                                                                        showModalBottomSheet(
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return Container(
                                                                              height: 900,
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
                                                                                      decoration: BoxDecoration(color: black166.withOpacity(0.2), borderRadius: BorderRadius.circular(5)),
                                                                                      child: TextFormField(
                                                                                        style: const TextStyle(color: Colors.grey),
                                                                                        decoration: const InputDecoration(
                                                                                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                                                                                          hintText: 'Search Location',
                                                                                          hintStyle: TextStyle(color: Colors.grey),
                                                                                          border: InputBorder.none,
                                                                                        ),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      icon: const Icon(
                                                                          Icons
                                                                              .arrow_forward_ios_rounded),
                                                                      iconSize:
                                                                          14,
                                                                      color:
                                                                          black102,
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          : const Text(
                                                              'Hyderabad, india',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                              ),
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Switch(
                                                            activeColor:
                                                                green24,
                                                            value:
                                                                isAutomaticSetting,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                isAutomaticSetting =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      const Text(
                                                        'University fo Islamic Science\'s, Karachi',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 14),
                                                      isAutomaticSetting ==
                                                              false
                                                          ? Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    const Text(
                                                                      'calculation method',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            17,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Text(
                                                                          'University of islamic\n Science\'s, Karachi',
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w400,
                                                                              fontSize: 12,
                                                                              height: 1.5),
                                                                        ),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {
                                                                            showModalBottomSheet(
                                                                              backgroundColor: Colors.transparent,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: whiteClr,
                                                                                    borderRadius: BorderRadius.circular(30),
                                                                                  ),
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
                                                                                      const Text(
                                                                                        '1. Algerian Minister of Religious Affair & Works',
                                                                                        style: TextStyle(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 16,
                                                                                        ),
                                                                                      ),
                                                                                      const Row(
                                                                                        children: [
                                                                                          Text(
                                                                                            'Calculation:',
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontSize: 16,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Fajr: 18.0\nMaghrib: 0 Mins after Sunset\nIsha: 17.0°\n',
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontSize: 16,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                          icon:
                                                                              const Icon(Icons.arrow_forward_ios_rounded),
                                                                          iconSize:
                                                                              14,
                                                                          color:
                                                                              black102,
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
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            17,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Text(
                                                                          'Hanafi',
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                        ),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(Icons.arrow_forward_ios_rounded),
                                                                          iconSize:
                                                                              14,
                                                                          color:
                                                                              black102,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                    height: 7),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    const Text(
                                                                      'High Latitude methods ',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            17,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Text(
                                                                          'Angle based method',
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                        ),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(Icons.arrow_forward_ios_rounded),
                                                                          iconSize:
                                                                              14,
                                                                          color:
                                                                              black102,
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
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            17,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Text(
                                                                          '0,0,0,0,0,0',
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                        ),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(Icons.arrow_forward_ios_rounded),
                                                                          iconSize:
                                                                              14,
                                                                          color:
                                                                              black102,
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
                                                                      'Daylight Saving',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            17,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Text(
                                                                          'Auto',
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                        ),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(Icons.arrow_forward_ios_rounded),
                                                                          iconSize:
                                                                              14,
                                                                          color:
                                                                              black102,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Switch(
                                                            activeColor:
                                                                green24,
                                                            value: false,
                                                            onChanged: (value) {
                                                              // Handle the value change here
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      const Text(
                                                        'Imsk- it is a period of time, about 10 mins, before \nthe down prayer begins and when people , who \nhave eaten suhoor, must stop eating.',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                            height: 1.4),
                                                      ),
                                                    ],
                                                  ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Now',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Text(
                                            'FAJR ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: green77,
                                            ),
                                          ),
                                          Text(
                                            '4 :30 AM',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: black102,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    color: black166,
                                    width: 0.5,
                                    height: 40,
                                  ),
                                  const Column(
                                    children: [
                                      Text(
                                        'Upcoming Namaz',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Text(
                                            'Zohar ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: green77,
                                            ),
                                          ),
                                          Text(
                                            '1 :30 PM',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: black102,
                                            ),
                                          ),
                                        ],
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
                                      '26',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: green24,
                                      ),
                                    ),
                                    SizedBox(height: 9),
                                    Text(
                                      'Few clouds',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: black130,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 9),
                                    Text(
                                      'Monday,22nd May 2023',
                                      style: TextStyle(
                                        color: black102,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: ListView(
                children: [
                  buildNamazTile(
                      title: 'Fajr',
                      time: '04:43',
                      image: "assets/icons/fajr.png"),
                  buildNamazTile(
                      title: 'Sunrise',
                      time: '05:56',
                      image: "assets/icons/sunrise.png"),
                  buildNamazTile(
                      title: 'Dhuhr',
                      time: '12:02',
                      image: "assets/icons/duhar.png"),
                  buildNamazTile(
                      title: 'Asar',
                      time: '15:26',
                      image: "assets/icons/asar.png"),
                  buildNamazTile(
                      title: 'Magrigb',
                      time: '18:08',
                      image: "assets/icons/magrib.png"),
                  buildNamazTile(
                      title: 'Isha',
                      time: '19:18',
                      image: "assets/icons/isha.png"),
                  buildNamazTile(
                    title: 'Qiyam',
                    time: '19:18',
                    image: "assets/icons/qiyam.png",
                  ),
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
  }) {
    return Column(
      children: [
        ListTile(
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
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.notifications_off_outlined),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
