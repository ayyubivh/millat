import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_share_view.dart';
import 'package:millat/resources/home/view/dua/widgets/settings_pop_up_widget.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/utils.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/string_constants.dart';

class InsideDuaView extends StatelessWidget {
  const InsideDuaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorManager.whiteColor,
          foregroundColor: ColorManager.blackColor,
          elevation: 0.1,
          centerTitle: true,
          title: Text(
            'Dua\'s',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorManager.blackColor,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                _buildPopUp(context);
              },
              child: const ImageIcon(
                AssetImage("assets/icons/settings.png"),
              ),
            ),
            kWidth20,
          ],
        ),
        body: BlocBuilder<DuaBloc, DuaState>(builder: (context, state) {
          if (state.isLoading) {
            return const Loader();
          } else if (state.duaModel == null) {
            return const Loader();
          } else {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final data = state.duaModel!.result!.duas![index];
                  String translationText =
                      data.translate != null && data.translate!.isNotEmpty
                          ? data.translate![state.translationText].content ?? ''
                          : '';

                  return _builDuaContainer(
                    context: context,
                    index: index,
                    arabicText: state.displayArabicText ? data.content! : "",
                    translationText:
                        state.displayTranslationText ? translationText : "",
                    resource: data.resource.toString(),
                    duaId: data.id,
                    textSize: state.sliderValue,
                    onTapCopyText: () {
                      if (state.displayArabicText) {
                        String arabicTextToCopy = data.content ?? '';
                        Clipboard.setData(
                            ClipboardData(text: arabicTextToCopy));
                        showSnackBar(context, "Text Copied!");
                      }
                    },
                    onTapShare: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DuaShareView(text: data.content!),
                      ));
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 10,
                    color: ColorManager.veryLightGreen,
                  );
                },
                itemCount: state.duaModel!.result!.duas!.length);
          }
        }));
  }

  Widget _builDuaContainer(
      {required BuildContext context,
      required int index,
      required String arabicText,
      required String? translationText,
      required String? resource,
      required double textSize,
      required VoidCallback onTapCopyText,
      required VoidCallback onTapShare,
      String? duaId}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: ColorManager.appBarColor,
                height: 25,
                width: 25,
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              Text(
                arabicText,
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                  color: ColorManager.primary,
                ),
              ),
            ],
          ),
          kHeight10,
          Text(
            translationText ?? '',
            style: TextStyle(
                fontSize: textSize - 2,
                fontWeight: FontWeight.w600,
                height: 1.2,
                color: ColorManager.blackColor),
          ),
          kHeight10,
          Text(
            resource ?? '',
            style: TextStyle(
              fontSize: textSize - 2,
              fontWeight: FontWeight.w500,
              height: 1.2,
              color: ColorManager.textGrey,
            ),
          ),
          kHeight15,
          Container(
            height: 45,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorManager.veryLightGreen,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage("assets/icons/dua_play.png"),
                    ),
                    kWidht10,
                    const ImageIcon(
                      AssetImage("assets/icons/dua_tasbih.png"),
                    ),
                    kWidht10,
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return BlocBuilder<DuaBloc, DuaState>(
                                builder: (context, state) => SizedBox(
                                      height: 160,
                                      child: ListView.separated(
                                          separatorBuilder: (context, index) =>
                                              const Divider(thickness: 1),
                                          itemCount: translateTexts.length,
                                          itemBuilder: (context, index) =>
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                            horizontal: 20,
                                                            vertical: 10)
                                                        .copyWith(top: 20),
                                                child: InkWell(
                                                  onTap: () {
                                                    context.read<DuaBloc>().add(
                                                        SelectTranslationText(
                                                            value: index));
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Center(
                                                      child: Text(
                                                    translateTexts[index],
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                                ),
                                              )),
                                    ));
                          },
                        );
                      },
                      child: const ImageIcon(
                        AssetImage("assets/icons/dua_gpay.png"),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    InkWell(
                      onTap: onTapShare,
                      child: const ImageIcon(
                        AssetImage("assets/icons/send.png"),
                      ),
                    ),
                    kWidht10,
                    InkWell(
                      onTap: onTapCopyText,
                      child: const ImageIcon(
                        AssetImage("assets/icons/copy.png"),
                      ),
                    ),
                    kWidht10,
                    BlocBuilder<DuaBloc, DuaState>(
                      builder: (context, state) => state.bookmarkItems!
                              .contains(duaId)
                          ? const ImageIcon(
                              AssetImage('assets/icons/bookmark_filled.png'),
                              size: 20,
                            )
                          : GestureDetector(
                              onTap: () {
                                context.read<DuaBloc>().add(AddBookmarkEvent(
                                    context: context, duaId: duaId!));
                                context
                                    .read<DuaBloc>()
                                    .add(FetchDuaBookMarksEvent(context));
                              },
                              child: const ImageIcon(
                                AssetImage("assets/icons/bookmark.png"),
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> _buildPopUp(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return const SettingsPopUpWidget();
          },
        );
      },
    );
  }
}
