import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';

class DuaCategoryView extends StatelessWidget {
  const DuaCategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.scaffoldBgColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        backgroundColor: ColorManager.appBarColor,
        elevation: 0,
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
              _buildCategoryBottomsheet(context);
            },
            child: const ImageIcon(
              AssetImage("assets/icons/dua_category.png"),
            ),
          ),
          kWidth20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            kHeight15,
            const Divider(),
            kHeight10,
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFBCFEB1),
                    Color(0xFF00A05B),
                  ],
                  stops: [0.0, 1.0],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) => Text(
                    state.subCategoryName,
                    style: TextStyle(
                      color: ColorManager.whiteColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            kHeight15,
            Expanded(child: BlocBuilder<DuaBloc, DuaState>(
              builder: (context, state) {
                return state.duaSubcategoryModel == null
                    ? ShimmerUtils.duaShimmers()
                    : state.isLoading
                        ? ShimmerUtils.duaShimmers()
                        : ListView.builder(
                            itemCount: state.duaSubcategoryModel?.result
                                .duaSubCategory!.length,
                            itemBuilder: (context, index) {
                              final data = state.duaSubcategoryModel?.result
                                  .duaSubCategory![index];
                              return GestureDetector(
                                onTap: () {
                                  context.read<DuaBloc>().add(
                                        FetchDuaBySubcategoryEvent(
                                            subCategoryId: data.id!),
                                      );
                                  context.goNamed(
                                      MyAppRouteConstants.insideDuaRouteName);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: ColorManager.greyEE,
                                      height: 23,
                                      width: 23,
                                      child: Center(
                                        child: Text("${data!.count}"),
                                      ),
                                    ),
                                    kHeight10,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width:
                                              SizeUtility(context).width / 1.6,
                                          child: Text(
                                            data.subCategory.toString(),
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              height: 1.4,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                            Icons.navigate_next_outlined),
                                      ],
                                    ),
                                    kHeight10,
                                    const Divider(),
                                  ],
                                ),
                              );
                            },
                          );
              },
            ))
          ],
        ),
      ),
    );
  }

  Future<dynamic> _buildCategoryBottomsheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    kHeight15,
                    Row(
                      children: [
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Select Category',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontSize: 17,
                                color: ColorManager.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    kHeight15,
                    const Divider(),
                    Expanded(
                      child: BlocBuilder<DuaBloc, DuaState>(
                        builder: (context, state) {
                          final data =
                              state.duaCategoryModel?.result.duaCategory;

                          return ListView.builder(
                            itemCount: data!.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  final data = state.duaCategoryModel!.result
                                      .duaCategory[index];
                                  context.read<DuaBloc>()
                                    ..add(FetchDuaSubCategorybyCategory(
                                        categoryId: data.id.toString()))
                                    ..add(ChangeSubcategoryNameEvent(
                                        newName: data.category!));
                                  context.pop();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    data[index].category!,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.textGrey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
