import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/view/al_quran/widgets/al_quran_appbar.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/loader.dart';
import '../../../../../utils/size_utility.dart';
import '../../../bloc/logic/quran_bloc/quran_bloc.dart';

class AlQuranSettings extends StatelessWidget {
  const AlQuranSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: alQuranAppbar(
          color: ColorManager.appBarColor,
          text: "Settings",
          context: context,
          iconColor: ColorManager.primary),
      body: BlocProvider(
        create: (context) => QuranBloc()
          ..add(const FetchAllRecitors())
          ..add(const FetchAllTranslationsEvent()),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              const Text(
                'Reading',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kHeight10,
              _containerWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) => _buildListTile(
                        title: "Arabic Text",
                        subTitle: state.quranTextTypeName == nosymbol
                            ? "no diacritics or symbols"
                            : state.quranTextTypeName,
                        onTap: () {
                          context.goNamed(
                              MyAppRouteConstants.quranTextSettingRouteName);
                        },
                      ),
                    ),
                    const Divider(thickness: 1),
                    BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) => _buildListTile(
                        title: 'Translation',
                        subTitle: state.transilationName,
                        onTap: () {
                          transilationPopUp(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              kHeight15,
              const Text(
                'Audio',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kHeight15,
              _containerWidget(
                child: Column(
                  children: [
                    BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) => _buildListTile(
                        title: 'Audio Recitation',
                        subTitle: state.recitorName.toString(),
                        onTap: () {
                          context.goNamed(
                              MyAppRouteConstants.audioRecitorsRouteName);
                        },
                      ),
                    ),
                    const Divider(thickness: 1),
                    _buildListTile(
                      title: 'Player Next/Previous Changes',
                      subTitle: 'Sura',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              kHeight15,
              const Text(
                'Daily Verse',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kHeight15,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.veryLightGreen,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Mark All Quotes As Read",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _containerWidget({required Widget child}) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.veryLightGreen,
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.all(12),
        child: child);
  }

  ListTile _buildListTile(
      {required String title,
      required String subTitle,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Text(
          subTitle[0].toUpperCase() + subTitle.substring(1),
          style: TextStyle(
            fontSize: 15,
            color: ColorManager.textGrey,
          ),
        ),
      ),
      trailing: const Icon(Icons.navigate_next),
    );
  }

  Future<dynamic> transilationPopUp(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) => Container(
              height: SizeUtility(context).height / 1.1,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                      ),
                      const Text(
                        'Text & Translation',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                  kHeight20,
                  Text(
                    'Translations',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.textGrey84,
                    ),
                  ),
                  kHeight20,
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.veryLightGreen,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: BlocBuilder<QuranBloc, QuranState>(
                        builder: (context, state) {
                          if (state.translationsModel?.translations == null) {
                            const Loader();
                          }
                          return ListView.separated(
                            separatorBuilder: (context, index) =>
                                const Divider(thickness: 1),
                            itemCount:
                                state.translationsModel!.translations.length,
                            itemBuilder: (context, index) {
                              final data =
                                  state.translationsModel?.translations[index];
                              return ListTile(
                                onTap: () {
                                  context.read<QuranBloc>().add(
                                      SaveGlobalTransilationIdAndName(
                                          transilationId: data.id!.toInt(),
                                          translationName:
                                              "${data.languageName.toString()} (${data.authorName.toString()})"));
                                  context.pop();
                                },
                                title: Text(
                                  '${data!.languageName.toString()} ${data.id}',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: ColorManager.textGrey84,
                                  ),
                                ),
                                subtitle: Text(
                                  data.authorName.toString(),
                                  style: TextStyle(
                                    color: ColorManager.textGreyAd,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
