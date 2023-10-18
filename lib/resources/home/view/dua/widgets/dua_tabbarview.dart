import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_category_view.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';

class DuaTabbarview extends StatelessWidget {
  const DuaTabbarview({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DuaBloc>(context).add(const FetchDuaCategoryEvent());
    });
    return DefaultTabController(
      length: 2,
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
                  child: Text('Main Dua\'s'),
                ),
                Tab(
                  child: Text('Other Dua\'s'),
                ),
              ],
            ),
          ),
          kHeight10,
          Expanded(
            child: TabBarView(
              children: [
                BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      const Loader();
                    }
                    final data = state.duaCategoryModel?.result.duaCategory;
                    return data == null
                        ? const Loader()
                        : GridView.builder(
                            itemCount: data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 13,
                              crossAxisSpacing: 13,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  context.read<DuaBloc>().add(
                                      FetchDuaSubCategorybyCategory(
                                          categoryId: state.duaCategoryModel!
                                              .result.duaCategory[index].id
                                              .toString()));
                                  context.read<DuaBloc>().add(
                                      ChangeSubcategoryNameEvent(
                                          newName: state
                                              .duaCategoryModel!
                                              .result
                                              .duaCategory[index]
                                              .category!));
                                  context.goNamed(
                                      MyAppRouteConstants.duaCategoryRouteName);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: ColorManager.primary,
                                        width: 1.5,
                                      )),
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "${data[index].image}",
                                        height: 60,
                                        width: 60,
                                      ),
                                      kHeight15,
                                      Text(
                                        data[index].category.toString(),
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                  },
                ),
                Container(
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
