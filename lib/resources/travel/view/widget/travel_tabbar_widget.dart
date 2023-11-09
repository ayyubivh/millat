import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/color_manager.dart';

class TravelTabBarWidget extends StatelessWidget {
  const TravelTabBarWidget(
      {super.key, required this.overview, required this.imageUrl});
  final String overview;
  final List<String> imageUrl;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorManager.darkWhiteF0,
              borderRadius: BorderRadius.circular(80),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 46,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorManager.darkWhiteF0,
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: ColorManager.blackColor,
                  labelColor: ColorManager.primary,
                  tabs: const [
                    Tab(
                      text: "Overview",
                    ),
                    Tab(
                      text: "Photos",
                    ),
                  ],
                ),
              ),
            ),
          ),
          kHeight10,
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Package Overview",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.blackColor,
                      ),
                    ),
                    kHeight15,
                    Text(
                      overview,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorManager.lightGrey85,
                      ),
                    )
                  ],
                ),
                ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    if (index % 2 == 0) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(
                              MyAppRouteConstants.imageFullViewRoutename,
                              extra: {
                                "imageUrls": imageUrl,
                                "initialIndex": index,
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: _imageWidget(imageUrl[index]),
                              ),
                              kWidth10,
                              Expanded(
                                child: _imageWidget(imageUrl[index]),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return _imageWidget(imageUrl[index]);
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _imageWidget(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Utilities().buildCachedNetworkImage(
        imageUrl: image,
        height: 156,
      ),
    );
  }
}
