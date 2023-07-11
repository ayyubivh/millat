import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/reusable_methods.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/view/al_quran/bookmark_view.dart';
import 'package:millat/resources/home/view/al_quran/surah_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class AlQuranView extends StatelessWidget {
  const AlQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteClr,
        foregroundColor: black26,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Al-Quran",
          style: TextStyle(
            color: primaryGreen,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const BookmarkView(),
              ));
            },
            child: const ImageIcon(
              AssetImage("assets/icons/bookmark.png"),
              color: black26,
            ),
          ),
          const SizedBox(width: 8),
          const ImageIcon(
            AssetImage("assets/icons/settings.png"),
            color: black26,
          ),
          const SizedBox(width: 8),
          const ImageIcon(
            AssetImage("assets/icons/search.png"),
            color: black26,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Assalamualaikum",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: lightBlackColor,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              context.read<DatabaseBloc>().state.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: black26,
              ),
            ),
            const SizedBox(height: 25),
            gradientContainer(
              padding: const EdgeInsets.all(20),
              height: 131,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Hifz Smartcheck",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: whiteClr,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Recite Quran",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: whiteClr,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Recite and learn",
                            style: TextStyle(
                                color: whiteClr,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          "assets/images/mic 1.png",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _gradienContainer(context),
                _gradienContainer(context)
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    const PreferredSize(
                      preferredSize: Size.fromHeight(kToolbarHeight),
                      child: TabBar(
                        unselectedLabelColor: lightBlackColor,
                        labelColor: primaryGreen,
                        indicatorColor: primaryGreen,
                        labelStyle: TextStyle(fontSize: 16),
                        tabs: [
                          Tab(
                            child: Text('Surah'),
                          ),
                          Tab(
                            child: Text('Para'),
                          ),
                          Tab(
                            child: Text('My Quran'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.separated(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return ListTile(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Surahview(),
                                  ));
                                },
                                leading: Stack(
                                  children: [
                                    SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset(
                                          "assets/images/muslim_1.png",
                                        )),
                                    Positioned(
                                      top: 13,
                                      left: 16,
                                      child: Text(
                                        '${index + 1}',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                title: const Text(
                                  "Al-Fatiah",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: const Text(
                                  "MECCAN 7 VERSES",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: lightBlackColor,
                                  ),
                                ),
                                trailing: const Text(
                                  "ةحتافلا",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const Divider(),
                          ),
                          const Center(
                            child: Text('Tab 2 Content'),
                          ),
                          const Center(
                            child: Text('Tab 3 Content'),
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
    );
  }

  Widget _gradienContainer(BuildContext context) {
    return gradientContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text(
                    "Al-Faithah",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: whiteClr,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "1:3",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: whiteClr,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Recite and learn",
                    style: TextStyle(
                        color: whiteClr,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
                width: 32,
                child: Image.asset(
                  "assets/images/quran_2.png",
                ),
              )
            ],
          ),
        ],
      ),
      width: SizeUtility(context).width / 2.3,
      height: 84,
      padding: const EdgeInsets.all(15),
    );
  }
}
