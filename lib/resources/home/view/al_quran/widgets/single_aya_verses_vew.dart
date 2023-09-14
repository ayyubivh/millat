import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses_card.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/utils.dart';
import 'package:share_plus/share_plus.dart';

class SingleAyaVersesView extends StatelessWidget {
  final String passValue;
  const SingleAyaVersesView({super.key, required this.passValue});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<QuranBloc>(context)
          .add(FetchVersesByKey(verseKey: [passValue]));
    });
    return Scaffold(
      backgroundColor: ColorManager.scaffolBgColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        foregroundColor: ColorManager.blackColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20)
            .copyWith(bottom: 70),
        child: BlocBuilder<QuranBloc, QuranState>(
          builder: (context, state) {
            final data = state.versesByKeyModel![0].verses[0];
            String lastRead = state.lastRead;
            List<String> parts = lastRead.split(":");
            String chapterId = parts[0].padLeft(3, '0');
            String aya = parts[1].padLeft(3, '0');

            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => VersesCardWidget(
                numValue: data.id,
                surah: data.textIndopak,
                surahMeaning: state.singleTranslation,
                playOntap: () {
                  context.read<QuranBloc>().add(QuranEvent.playSingleAudio(
                      aya: aya, chapterId: chapterId));
                },
                shareOnTap: () {
                  Share.share(
                      '${data.textIndopak}\n${Utilities.removeFootnotesFromMeaning(
                    state.singleTranslation,
                  )}\n\n Ayah${state.singleTranslation}');
                },
                isSelected: true,
                bookMarkOntap: () {},
                isValue: "",
              ),
            );
          },
        ),
      ),
    );
  }
}
