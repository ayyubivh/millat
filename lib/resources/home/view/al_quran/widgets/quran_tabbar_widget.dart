import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/models/quran_chapter_models/quran_chapter_models.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/globals.dart';
import '../../../bloc/logic/quran_bloc/quran_bloc.dart';
import '../surah_view.dart';

class QuranTabBarWidget extends StatefulWidget {
  const QuranTabBarWidget({super.key});

  @override
  State<QuranTabBarWidget> createState() => _QuranTabBarWidgetState();
}

class _QuranTabBarWidgetState extends State<QuranTabBarWidget> {
  @override
  void initState() {
    BlocProvider.of<QuranBloc>(context).add(const FetchQuaranChaptersEvent());
    super.initState();
  }

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
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Stack(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: Image.asset("assets/images/muslim_1.png"),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alif Laam meem",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight5,
              Text(
                "سَيَقُولُ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: black26,
            size: 20,
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(thickness: 1),
    );
  }

  Widget _surahTabBar() {
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) {
        if (state.isLoading || state.quranChaptersModel?.chapters == null) {
          return const Loader();
        }

        final chapters = state.quranChaptersModel!.chapters;

        return ListView.separated(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            final chapter = chapters[index];

            return _buildSurahTile(
              context,
              chapter,
              index,
            );
          },
          separatorBuilder: (context, index) => const Divider(),
        );
      },
    );
  }

  ListTile _buildSurahTile(BuildContext context, Chapters chapter, int index) {
    return ListTile(
      onTap: () {
        context.read<QuranBloc>().add(FetchChaperVersesEvent(id: chapter.id));
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
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
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
  }
}
