import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:millat/resources/profile/views/profile_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  final double _appBarHeight = 60.0;
  bool _isAppBarCollapsed = false;
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
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            collapsedHeight: _appBarHeight,
            backgroundColor: _isAppBarCollapsed ? midGreenColor : Colors.white,
            elevation: 0,
            pinned: true,
            centerTitle: true,
            expandedHeight: 320,
            leadingWidth: _isAppBarCollapsed
                ? SizeUtility(context).width * 50 / 100
                : null,
            leading: _isAppBarCollapsed
                ? Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Upcoming Namaz',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w100,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
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
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProfileView(),
                        ));
                      },
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
                  Image.asset('assets/images/home_app_bar.png'),
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
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/icons/user.png'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
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
                            height: 40,
                          ),
                          Container(
                            height: 230,
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const ImageIcon(
                                      AssetImage('assets/icons/calendar.png'),
                                      color: mainColor,
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '13 Shawwal 1444 AH',
                                          style: TextStyle(color: black104),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Thursday 04 May',
                                          style: TextStyle(color: black104),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    TextButton.icon(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                            AssetImage('assets/icons/bell.png'),
                                            color: blueColor),
                                        label: const Text(
                                          'Notify Me',
                                          style: TextStyle(color: blueColor),
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Now',
                                          style: TextStyle(
                                              color: black104, fontSize: 17),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'FAJR',
                                              style: TextStyle(
                                                color: mainColor,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('4: 30 AM',
                                                style: TextStyle(
                                                    color: black132,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      width: 0.7,
                                      color: dividerColor,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Upcoming Namaz',
                                          style: TextStyle(
                                              color: black104, fontSize: 17),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Zohar',
                                              style: TextStyle(
                                                color: mainColor,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('1: 30 PM',
                                                style: TextStyle(
                                                    color: black132,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        ImageIcon(
                                          AssetImage(
                                              'assets/icons/map-pin.png'),
                                          color: black165,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Hyderabad, 39°C',
                                            style: TextStyle(color: black165))
                                      ],
                                    ),
                                    Row(
                                      children: const [
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
                            ),
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
            hasScrollBody: false,
            fillOverscroll: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/quran.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Qur'an",
                            style: TextStyle(color: black165),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/adzan.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Adzan",
                            style: TextStyle(color: black165),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/qibla.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Qibla",
                            style: TextStyle(color: black165),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/tasbih.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Tasbih",
                            style: TextStyle(color: black165),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/all.png',
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "All",
                            style: TextStyle(color: black165),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  AspectRatio(
                    aspectRatio: 2.3,
                    child: ImageSlideshow(
                        onPageChanged: (int index) {},
                        autoPlayInterval: 3000,
                        indicatorBackgroundColor: Colors.transparent,
                        indicatorColor: Colors.transparent,
                        isLoop: false,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/quran_slider.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        ImageIcon(
                                          AssetImage('assets/icons/readme.png'),
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Last Read',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Al-Fatiah',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      'Ayah No: 1',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromRGBO(230, 230, 230, 1))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/icons/quran_circle.png',
                                height: 50, width: 50, fit: BoxFit.cover),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Ramadan Special',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mosque',
                                  style:
                                      TextStyle(color: black166, fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/masjed.png',
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                ImageIcon(
                                  AssetImage('assets/icons/heart.png'),
                                  color: black165,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Like', style: TextStyle(color: black165))
                              ],
                            ),
                            Row(
                              children: const [
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
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Play Games',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
                            colors: [lightGreenColor, darkGreenColor])),
                    child: Column(
                      children: [
                        const Text(
                          'What is the name of the night during which Muslims believe the first verses of the Quran were revealed to Prophet Muhammad?',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: const Text('1. Laitaltul Qadr',
                              style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: const Text("Laylatul Bara'ah",
                              style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: const Text("Laylatul Eid",
                              style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: const Text("Lailatul Mi'raj",
                              style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              fixedSize: MaterialStateProperty.all(
                                  Size(SizeUtility(context).width, 50))),
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
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
                            title: "Hijaz Turkish Gold Border Lantern..."),
                        buildShopItem(
                            image: 'assets/dummy/green_hat.png',
                            title: "Green Wool Winter Large Skull Ca..."),
                        buildShopItem(
                            image: 'assets/dummy/sijadah.png',
                            title: "Hijaz Turkish Gold Border Lantern..."),
                        buildShopItem(
                            image: 'assets/dummy/sijadah.png',
                            title: "Hijaz Turkish Gold Border Lantern..."),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Try Sukoon',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
                          child: Image.asset('assets/dummy/try_sukoon.png',
                              height: 100, width: 100),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Slider(
                                activeColor: mainColor,
                                inactiveColor: black153,
                                value: 0.5,
                                onChanged: (value) {},
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      '2:44',
                                      style: TextStyle(color: black196),
                                    ),
                                    Text(
                                      '4:13',
                                      style: TextStyle(color: black196),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const ImageIcon(
                                        AssetImage(
                                            'assets/icons/previous_sound.png'),
                                        color: black217,
                                      )),
                                  const CircleAvatar(
                                    backgroundColor: mainColor,
                                    child: Icon(Icons.play_arrow,
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
          )
        ],
      ),
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
                  children: const [
                    Text(
                      'MRP',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
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
            const Text(
              '₹307.80',
              style: TextStyle(
                  color: midGreenColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
