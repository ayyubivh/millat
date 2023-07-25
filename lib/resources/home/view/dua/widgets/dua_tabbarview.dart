import 'package:flutter/material.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_category_view.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';

class DuaTabbarview extends StatelessWidget {
  const DuaTabbarview({super.key});

  @override
  Widget build(BuildContext context) {
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
                GridView.builder(
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 13,
                    crossAxisSpacing: 13,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DuaCategoryView(category: duaTexts[index]),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: ColorManager.primary,
                              width: 1.5,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                "assets/images/dua_tab_${index + 1}.png"),
                            kHeight15,
                            Text(
                              duaTexts[index],
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
