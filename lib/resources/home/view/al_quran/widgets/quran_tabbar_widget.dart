import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/bloc/quran_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/globals.dart';
import '../surah_view.dart';

class QuranTabBarWidget extends StatefulWidget {
  const QuranTabBarWidget({super.key});

  @override
  State<QuranTabBarWidget> createState() => _QuranTabBarWidgetState();
}

class _QuranTabBarWidgetState extends State<QuranTabBarWidget> {
  int _expandedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            kHeight10,
            Expanded(
              child: TabBarView(
                children: [
                  _surahTabBar(),
                  _paraTabBar(),
                  _myQuranTabBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myQuranTabBar() {
    return SizedBox(
      child: ListView(
        shrinkWrap: true,
        children: [
          ExpansionPanelList(
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _expandedIndex = isExpanded ? -1 : panelIndex;
              });
            },
            children: List.generate(2, (index) {
              bool isExpanded = index == _expandedIndex;

              return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return const ListTile(
                    title: Text(
                      "Daily Verse (8)",
                      style: TextStyle(
                        fontSize: 17,
                        color: black26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
                body: SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text(
                          "Al-A'raaf, Verse 199",
                          style: TextStyle(
                            color: primaryGreen,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'The Heights(7:199)',
                          style: TextStyle(
                              color: black26,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        trailing: Text(
                          'Today',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: black132,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                isExpanded: isExpanded,
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _paraTabBar() {
    return Column(
      children: [
        kHeight20,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: lightGreen1,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Para 1",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: primaryGreen,
                ),
              ),
              Icon(
                Icons.check_circle,
                color: primaryGreen,
              )
            ],
          ),
        ),
        kHeight10,
        _paraTabBarContainer(20),
        kHeight10,
        _paraTabBarContainer(0)
      ],
    );
  }

  Widget _paraTabBarContainer(int percentage) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 102,
      width: double.infinity,
      decoration: BoxDecoration(
        color: black247,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Para 2",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: black26,
                ),
              ),
              Text(
                "Mark as Read",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: primaryGreen,
                ),
              ),
            ],
          ),
          kHeight8,
          const Text(
            "Last Read: Al-Baqara 2:145",
            style: TextStyle(
              color: black132,
              fontWeight: FontWeight.w500,
            ),
          ),
          kHeight15,
          LinearPercentIndicator(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            animation: true,
            animationDuration: 1000,
            lineHeight: 9.0,
            percent: percentage / 100,
            barRadius: const Radius.circular(16),
            progressColor: primaryGreen,
            backgroundColor: lightGreen1,
          )
        ],
      ),
    );
  }

  Widget _surahTabBar() {
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) {
        if (state.isLoading || state.quranChaptersModel?.chapters == null) {
          return Center(
            child: CircularProgressIndicator(color: primaryGreen),
          );
        }

        final chapters = state.quranChaptersModel!.chapters;

        return ListView.separated(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            final chapter = chapters[index];

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
                    child: Image.asset("assets/images/muslim_1.png"),
                  ),
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
              title: Text(
                chapter.nameSimple,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${chapter.revelatioPlace.toUpperCase()} ${chapter.versesCount} VERSES",
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: lightBlackColor,
                ),
              ),
              trailing: Text(
                chapter.nameArabic,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
        );
      },
    );
  }
}
