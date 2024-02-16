import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/bloc/logic/tasbih_bloc/tasbih_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../../utils/size_utility.dart';

class DuaBookMarkView extends StatelessWidget {
  const DuaBookMarkView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DuaBloc>().add(const FetchDuaById());
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Bookmarks",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<DuaBloc, DuaState>(builder: (context, state) {
            if (state.duaModelbyId == null || state.isLoading) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: ShimmerUtils.customRectangleShimmer(
                    SizeUtility(context).width, 160,
                    borderRadius: 12),
              );
            } else if (state.duaBookMarkModel?.result == null) {
              return Padding(
                  padding:
                      EdgeInsets.only(top: SizeUtility(context).height / 3),
                  child: const Loader());
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.duaModelbyId!.length,
                  itemBuilder: (context, index) {
                    final data = state.duaModelbyId![index].result!.dua;
                    return !state.bookmarkItems!.contains(data?.id)
                        ? const SizedBox()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                kHeight15,
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorManager.darkWhite,
                                    border: Border.all(
                                      color: ColorManager.greyD1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            data!.subCategoryId.category
                                                .category,
                                            style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              context.read<TasbihBloc>().add(
                                                  SelectDhikerEvent(
                                                      dikr: data.content,
                                                      translate: "",
                                                      id: state
                                                          .duaBookMarkModel!
                                                          .result!
                                                          .bookmarks[0]
                                                          .bookmarks[index]
                                                          .duaId));
                                              context.pushNamed(
                                                  MyAppRouteConstants
                                                      .tasbihRouteName);
                                            },
                                            child: const ImageIcon(
                                              AssetImage(
                                                  AppAssetsStrings.duaTasbih),
                                              size: 20,
                                            ),
                                          ),
                                          kWidth15,
                                          ImageIcon(
                                            const AssetImage(
                                                "assets/icons/bookmark_filled.png"),
                                            size: 20,
                                            color: ColorManager.black4F,
                                          ),
                                          kWidth15,
                                          Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: ColorManager.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: IconButton(
                                                onPressed: () {
                                                  context
                                                      .read<DuaBloc>()
                                                      .add(RemoveBookmark(
                                                        context: context,
                                                        duaId: state
                                                            .duaBookMarkModel!
                                                            .result!
                                                            .bookmarks[0]
                                                            .bookmarks[index]
                                                            .duaId,
                                                      ));

                                                  Future.delayed(
                                                      const Duration(
                                                          seconds: 2), () {
                                                    context.read<DuaBloc>().add(
                                                        FetchDuaBookMarksEvent(
                                                            context));
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  size: 16,
                                                ),
                                              ))
                                        ],
                                      ),
                                      kHeight10,
                                      Text(
                                        'Dua : ${data.resource}',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: ColorManager.black4F,
                                        ),
                                      ),
                                      kHeight15,
                                      Text(
                                        data.translations.isNotEmpty
                                            ? data
                                                .translations[
                                                    state.translationText]
                                                .content
                                            : 'Empty',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: ColorManager.black79,
                                        ),
                                      ),
                                      kHeight10,
                                      Text(
                                        data.content,
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: ColorManager.primary,
                                          fontFamily: "Hafs",
                                        ),
                                        textDirection: TextDirection.rtl,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
