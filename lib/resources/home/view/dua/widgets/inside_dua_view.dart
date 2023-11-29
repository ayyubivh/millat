import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/view/dua/widgets/settings_pop_up_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/string_constants.dart';
import '../../../bloc/logic/tasbih_bloc/tasbih_bloc.dart';

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
          if (state.duaModel == null || state.isLoading) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ShimmerUtils.customRectangleShimmer(
                  SizeUtility(context).width, 160,
                  borderRadius: 12),
            );
          } else {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final data = state.duaModel!.result!.duas![index];
                  String translationText =
                      data.translate != null && data.translate!.isNotEmpty
                          ? data.translate![state.translationText].content ?? ''
                          : '';

                  return _buildDuaContainer(
                    context: context,
                    index: index,
                    arabicText: state.displayArabicText ? data.content! : "",
                    translatedText:
                        state.displayTranslationText ? translationText : "",
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
                    onTapShare: () {},
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 10,
                    color: ColorManager.darkWhite,
                  );
                },
                itemCount: state.duaModel!.result!.duas!.length);
          }
        }));
  }

  Widget _buildDuaContainer(
      {required BuildContext context,
      required int index,
      required String arabicText,
      required String? translationText,
      required String? resource,
      required double textSize,
      required VoidCallback onTapCopyText,
      required VoidCallback onTapShare,
      required String translatedText,
      String? duaId}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                color: ColorManager.greyEE,
                height: 25,
                width: 25,
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              Text(
                arabicText,
                style: TextStyle(
                    fontSize: textSize - 1,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.primary,
                    fontFamily: "Hafs",
                    overflow: TextOverflow.ellipsis),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          kHeight15,
          Text(
            translationText ?? '',
            style: TextStyle(
                fontSize: textSize - 3,
                fontWeight: FontWeight.w400,
                height: 1.2,
                color: ColorManager.black4F),
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
            padding: const EdgeInsets.all(10).copyWith(left: 20, right: 20),
            decoration: BoxDecoration(
              color: ColorManager.darkWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              // title: Text("No Audio Available"),
                              content: const Text(
                                "There is no audio available.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: ImageIcon(
                        const AssetImage("assets/icons/dua_play.png"),
                        size: 20,
                        color: ColorManager.black4F,
                      ),
                    ),
                    kWidth15,
                    GestureDetector(
                      onTap: () {
                        context.read<TasbihBloc>().add(SelectDhikerEvent(
                            dikr: arabicText,
                            translate: translatedText,
                            id: duaId!));
                        context.pushNamed(MyAppRouteConstants.tasbihRouteName);
                      },
                      child: ImageIcon(
                        const AssetImage("assets/icons/dua_tasbih.png"),
                        size: 20,
                        color: ColorManager.black4F,
                      ),
                    ),
                    kWidth15,
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
                                                    context.pop();
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
                      child: ImageIcon(
                        const AssetImage("assets/icons/dua_gpay.png"),
                        size: 20,
                        color: ColorManager.black4F,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    // InkWell(
                    //   onTap: onTapShare,
                    //   child: const ImageIcon(
                    //     AssetImage("assets/icons/send.png"),
                    //   ),
                    // ),
                    kWidth15,
                    InkWell(
                      onTap: onTapCopyText,
                      child: ImageIcon(
                        const AssetImage("assets/icons/copy.png"),
                        size: 20,
                        color: ColorManager.black4F,
                      ),
                    ),
                    kWidth15,
                    BlocBuilder<DuaBloc, DuaState>(
                      builder: (context, state) => state.bookmarkItems!
                              .contains(duaId)
                          ? GestureDetector(
                              onTap: () {
                                context.read<DuaBloc>().add(RemoveBookmark(
                                    context: context, duaId: duaId!));
                                context
                                    .read<DuaBloc>()
                                    .add(FetchDuaBookMarksEvent(context));
                              },
                              child: ImageIcon(
                                AssetImage('assets/icons/bookmark_filled.png'),
                                size: 20,
                                color: ColorManager.black4F,
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                context.read<DuaBloc>().add(AddBookmarkEvent(
                                    context: context, duaId: duaId!));
                                context
                                    .read<DuaBloc>()
                                    .add(FetchDuaBookMarksEvent(context));
                              },
                              child: ImageIcon(
                                const AssetImage("assets/icons/bookmark.png"),
                                size: 20,
                                color: ColorManager.black4F,
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
