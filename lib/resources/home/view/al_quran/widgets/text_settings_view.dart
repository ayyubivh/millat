import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/al_quran_appbar.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class TextSettingsView extends StatelessWidget {
  const TextSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: alQuranAppbar(
        context: context,
        onTap: () {},
        text: "Text Settings",
        color: ColorManager.appBarColor,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(thickness: 2),
        itemCount: 3,
        itemBuilder: (context, index) {
          final texts = [
            indoPak,
            uthmani,
            noSymbol,
          ];
          return InkWell(
            onTap: () {
              context
                  .read<QuranBloc>()
                  .add(SaveQuranTexttypeName(textName: texts[index]));
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(right: 30, top: 25),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  index == 2 ? "الحمدلله" : 'اَلۡحَمۡدُ لِلّٰهِ رَبِّ',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  texts[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.textGrey,
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
