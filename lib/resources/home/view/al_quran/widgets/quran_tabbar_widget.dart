import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/creat_new_bookmark_widget.dart';
import 'package:millat/resources/home/view/al_quran/widgets/quran_bookmark_collection.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/color_manager.dart';
import '../../../bloc/logic/quran_bloc/quran_bloc.dart';
import '../../../bloc/models/al-quran/quran_chapter_models/quran_surah_models.dart';
import 'new_collection_widget.dart';

class QuranTabBarWidget extends StatefulWidget {
  const QuranTabBarWidget({super.key});

  @override
  State<QuranTabBarWidget> createState() => _QuranTabBarWidgetState();
}

class _QuranTabBarWidgetState extends State<QuranTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    BlocProvider.of<QuranBloc>(context).add(const FetchQuaranChaptersEvent());
    BlocProvider.of<QuranBloc>(context).add(const FetchQuranPara());
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                controller: _tabController,
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
                controller: _tabController,
                children: List.generate(3, (index) {
                  final widgets = [
                    _surahTabBar(),
                    _paraTabBar(),
                    _myQuranTabBar(),
                  ];

                  return widgets[index];
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myQuranTabBar() {
    return SizedBox(
      child: BlocBuilder<BookmarkBloc, BookmarkState>(
        builder: (context, state) {
          return state.dbCollectionItems.isEmpty
              ? const CreateNewBookmarkWidget()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BookmarkNewCollectionWidget(),
                    kHeight20,
                    Expanded(
                      child: BlocBuilder<BookmarkBloc, BookmarkState>(
                        builder: (context, state) {
                          if (state.dbCollectionItems.isEmpty) {
                            return const SizedBox();
                          }
                          final value = state.dbCollectionItems;
                          return ListView.builder(
                            itemCount: value.length,
                            itemBuilder: (context, index) {
                              final data = value[index];

                              return InkWell(
                                onTap: () {
                                  context.pushNamed(
                                      MyAppRouteConstants
                                          .quranBookmarkCollectionRouteName,
                                      extra: {'passvalue': data});
                                },
                                child: QuranBookmarkCollectionWidget(
                                    passvalue: data,
                                    context: context,
                                    img: data.image,
                                    collectionName: data.name,
                                    userName: data.description),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
          // : ListView(
          //     shrinkWrap: true,
          //     children: [
          //       ExpansionPanelList(
          //         elevation: 0,
          //         expandedHeaderPadding: EdgeInsets.zero,
          //         expansionCallback: (panelIndex, isExpanded) {
          //           setState(() {
          //             context.read<QuranBloc>().add(FetchVersesByKey(
          //                 verseKey: state
          //                     .dbCollectionItems[panelIndex].verseKey));
          //             _expandedIndex = isExpanded ? -1 : panelIndex;
          //           });
          //         },
          //         children: List.generate(state.dbCollectionItems.length,
          //             (index) {
          //           bool isExpanded = index == _expandedIndex;

          //           return ExpansionPanel(
          //             headerBuilder: (context, isExpanded) {
          //               return ListTile(
          //                 title: Text(
          //                   state.dbCollectionItems[index].name,
          //                   style: TextStyle(
          //                     fontSize: 17,
          //                     color: ColorManager.blackColor,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               );
          //             },
          //             body: SizedBox(
          //               height: 400,
          //               child: BlocBuilder<QuranBloc, QuranState>(
          //                 builder: (context, state) {
          //                   final data = state.versesByKeyModel;
          //                   return ListView.builder(
          //                     itemCount: data!.length,
          //                     itemBuilder: (context, index) {
          //                       return ListTile(
          //                         title: Text(
          //                           data[index].verses[0].textIndopak,
          //                           style: TextStyle(
          //                             color: ColorManager.primary,
          //                             fontSize: 17,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: 'Hafs',
          //                           ),
          //                         ),
          //                         subtitle: Text(
          //                           data[index].verses[0].verseKey,
          //                           style: TextStyle(
          //                             color: ColorManager.blackColor,
          //                             fontSize: 13,
          //                             fontWeight: FontWeight.bold,
          //                             height: 2,
          //                           ),
          //                         ),
          //                       );
          //                     },
          //                   );
          //                 },
          //               ),
          //             ),
          //             isExpanded: isExpanded,
          //           );
          //         }),
          //       ),
          //     ],
          //   );
        },
      ),
    );
  }

  Widget _paraTabBar() {
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.quranParaModel?.length ?? 0,
          itemBuilder: (context, index) {
            if (state.quranParaModel == null) {
              return ShimmerUtils.quranShimmers();
            }
            final verse = verses[index];
            String englishVerse = verse['english'] ?? '';
            String arabicVerse = verse['arabic'] ?? '';
            return ListTile(
              onTap: () {
                final id = state.quranParaModel![index].noOfpara!.toInt();
                context.read<QuranBloc>().add(FetchParaVerses(id: id));
                context.read<QuranBloc>().add(FetchTranslationParaTexts(
                      translationId: state.globalTransilationId,
                      paraId: id,
                    ));
                context
                    .read<QuranBloc>()
                    .add(FetchParaAudios(id: id, recitorId: state.recitorId));

                context.pushNamed(MyAppRouteConstants.quranVersesRoutename,
                    extra: {
                      'type': Qurantype.para,
                      'chapterId': id,
                    });
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
                        "${index + 1}",
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
                      fontFamily: 'Hafs',
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
          separatorBuilder: (context, index) => const Divider(thickness: 1),
        );
      },
    );
  }

  Widget _surahTabBar() {
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.quranSurahModel?.length ?? 5,
          itemBuilder: (context, index) {
            if (state.isLoading || state.quranSurahModel == null) {
              return ShimmerUtils.quranShimmers();
            }

            final chapters = state.quranSurahModel!;

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

  ListTile _buildSurahTile(
      BuildContext context, QuranSurahModel surah, int index) {
    return ListTile(
      onTap: () {
        final quranState = context.read<QuranBloc>().state;

        // context
        //     .read<QuranBloc>()
        //     .add(FetchChapterVersesbyTextName(id: surah.id));
        // context.read<QuranBloc>().add(FetchTranslationChapterTexts(
        //     translationId: quranState.globalTransilationId,
        //     chapterId: chapter.id));
        // context.read<QuranBloc>().add(FetchChapterAudioFiles(
        //     id: chapter.id, recitorId: quranState.recitorId));

        context.pushNamed(MyAppRouteConstants.quranAyaView,
            extra: {'slug': surah.slug ?? ""});
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
        surah.title ?? "",
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "  ${surah.noOfAyah} VERSES",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: ColorManager.lightBlackColor,
        ),
      ),
      trailing: Text(
        surah.title ?? "",
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w800,
          fontFamily: 'Hafs',
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
    'english': 'Lann tanaloo',
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
