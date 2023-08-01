import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/models/quran_chapter_models/quran_chapter_models.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses-view.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/color_manager.dart';
import '../../../bloc/logic/quran_bloc/quran_bloc.dart';

class QuranTabBarWidget extends StatefulWidget {
  const QuranTabBarWidget({super.key});

  @override
  State<QuranTabBarWidget> createState() => _QuranTabBarWidgetState();
}

class _QuranTabBarWidgetState extends State<QuranTabBarWidget> {
  @override
  void initState() {
    BlocProvider.of<QuranBloc>(context).add(const FetchQuaranChaptersEvent());
    BlocProvider.of<QuranBloc>(context).add(const FetchQuranPara());

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
            PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: TabBar(
                unselectedLabelColor: ColorManager.lightBlackColor,
                labelColor: ColorManager.primary,
                indicatorColor: ColorManager.primary,
                labelStyle: const TextStyle(fontSize: 16),
                tabs: const [
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
                  return ListTile(
                    title: Text(
                      "Daily Verse (8)",
                      style: TextStyle(
                        fontSize: 17,
                        color: ColorManager.blackColor,
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
                      return ListTile(
                        title: Text(
                          "Al-A'raaf, Verse 199",
                          style: TextStyle(
                            color: ColorManager.primary,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'The Heights(7:199)',
                          style: TextStyle(
                              color: ColorManager.blackColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        trailing: const Text(
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
      itemCount: verses.length,
      itemBuilder: (context, index) {
        final verse = verses[index];
        String englishVerse = verse['english'] ?? '';
        String arabicVerse = verse['arabic'] ?? '';
        return BlocBuilder<QuranBloc, QuranState>(
          builder: (context, state) {
            return ListTile(
              onTap: () {
                final id = state.quranParaModel!.juzs[index].juzNumber!.toInt();

                context.read<QuranBloc>().add(FetchParaVerses(id: id));
                context.read<QuranBloc>().add(FetchTranslationParaTexts(
                    translationId: state.globalTransilationId, paraId: id));
                context
                    .read<QuranBloc>()
                    .add(FetchParaAudios(id: id, recitorId: state.recitorId));

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VersesView(
                    chapterid: id,
                    type: Qurantype.para,
                  ),
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
                        state.quranParaModel!.juzs[index].juzNumber.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    englishVerse,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight5,
                  Text(
                    arabicVerse,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorManager.blackColor,
                size: 20,
              ),
            );
          },
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
        final quranState = context.read<QuranBloc>().state;

        context.read<QuranBloc>().add(FetchChaperVersesEvent(id: chapter.id));
        context.read<QuranBloc>().add(FetchTranslationChapterTexts(
            translationId: quranState.globalTransilationId,
            chapterId: chapter.id));
        context.read<QuranBloc>().add(FetchChapterAudioFiles(
            id: chapter.id, recitorId: quranState.recitorId));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VersesView(
            chapterid: chapter.id,
            type: Qurantype.sura,
          ),
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
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: ColorManager.lightBlackColor,
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

List<Map<String, String>> verses = [
  {
    'english': 'Alif laam meem',
    'arabic': 'الٓمّٓ',
  },
  {
    'english': 'Sayaqulu',
    'arabic': 'سَيَقُوۡلُ',
  },
  {
    'english': 'Tilka r Rusulu',
    'arabic': 'تِلۡكَ الرُّسُلُ ',
  },
  {
    'english': 'Kullu Thaamu',
    'arabic': 'كُلُّ الطَّعَامِ كَانَ ',
  },
  {
    'english': 'Al Muhzanthu',
    'arabic': 'وَّالۡمُحۡصَنٰتُ مِنَ',
  },
  {
    'english': 'La Yuhibbu',
    'arabic': 'لَا يُحِبُّ اللّٰهُ ',
  },
  {
    'english': 'LaThajidhanna Ashadha',
    'arabic': 'لَـتَجِدَنَّ اَشَدَّ',
  },
  {
    'english': 'Valav Annana',
    'arabic': 'وَلَوۡ اَنَّـنَا نَزَّلۡنَاۤ',
  },
  {
    'english': 'Kaal Almalau',
    'arabic': 'قَالَ الۡمَلَاُ',
  },
  {
    'english': 'Va Alamu Annama',
    'arabic': 'وَاعۡلَمُوۡۤا اَنَّمَا ',
  },
  {
    'english': 'Inna Ma Sabeelu',
    'arabic': 'اِنَّمَا السَّبِيۡلُ عَلَى ',
  },
  {
    'english': 'Vama Min Dhaabathi',
    'arabic': 'وَمَا مِنۡ دَآ بَّةٍ',
  },
  {
    'english': 'Vama  Ubarriu Nafsee',
    'arabic': 'وَمَاۤ اُبَرِّئُ نَفۡسِىۡ​ۚ',
  },
  {
    'english': 'Thilk Ayathu Kithab',
    'arabic': 'تِلۡكَ اٰيٰتُ الۡـكِتٰبِ ',
  },
  {
    'english': 'Subhana Alladhee Asraa',
    'arabic': 'سُبۡحٰنَ الَّذِىۡۤ اَسۡرٰى',
  },
  {
    'english': 'Kaal Alam Akul',
    'arabic': 'قَالَ اَ لَمۡ اَ قُلْ ',
  },
  {
    'english': 'Iftharab Linnaasi',
    'arabic': 'اِقۡتَرَبَ لِلنَّاسِ حِسَابُهُمۡ',
  },
  {
    'english': 'Iftharab Linnaasi',
    'arabic': 'قَدۡ اَفۡلَحَ',
  },
  {
    'english': 'Va Kaala Ladheena',
    'arabic': 'وَقَالَ الَّذِيۡنَ',
  },
  {
    'english': 'Fama Kama Javab',
    'arabic': 'فَمَا كَانَ جَوَابَ',
  },
  {
    'english': 'Vala Thujadhalu',
    'arabic': 'وَلَا تُجَادِلُوۡٓا ',
  },
  {
    'english': 'Vaman Yukadhibu',
    'arabic': 'وَمَنۡ يَّقۡنُتۡ مِنۡكُنَّ',
  },
  {
    'english': 'Vama Anzalna Ala',
    'arabic': 'وَمَاۤ اَنۡزَلۡنَا عَلٰى',
  },
  {
    'english': 'Faman Adhlama',
    'arabic': 'فَمَنۡ اَظۡلَمُ مِمَّنۡ',
  },
  {
    'english': 'Eleyhi Yuradhu',
    'arabic': 'اِلَيۡهِ يُرَدُّ عِلۡمُ ',
  },
  {
    'english': 'Hameen',
    'arabic': 'حٰمٓ',
  },
  {
    'english': 'Kaal Fama Hatbukum',
    'arabic': 'قَالَ فَمَا خَطۡبُكُمۡ',
  },
  {
    'english': 'Kadh Samia Allahu',
    'arabic': 'قَدۡ سَمِعَ اللّٰهُ',
  },
  {
    'english': 'Vahuva Ala',
    'arabic': 'وَهُوَ عَلٰى',
  },
  {
    'english': 'Amma Yatha Saloon',
    'arabic': 'عَمَّ يَتَسَآءَلُوۡنَ​ۚ',
  },
];
