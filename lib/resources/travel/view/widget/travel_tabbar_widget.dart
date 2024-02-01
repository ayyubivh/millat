import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../utils/string_constants.dart';

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
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
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
                        Utilities.removeFootnotesFromMeaning(overview),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.lightGrey85,
                          height: 1.2,
                        ),
                      ),
                      kHeight25,
                      Text(
                        Appstrings.aminities,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.blackColor,
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 80,
                            width: 80,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              color: ColorManager.darkWhite,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              "assets/icons/aminities_${index + 1}.png",
                              height: 27,
                              width: 27,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: imageUrl.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index % 2 == 0) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(
                            MyAppRouteConstants.imageFullViewRoutename,
                            extra: {
                              "imageUrls": imageUrl,
                              "initialIndex": index,
                            },
                          );
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
          kHeight100,
        ],
      ),
    );
  }

  Widget _imageWidget(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Utilities().buildCachedNetworkImage(
        boxFit: BoxFit.cover,
        imageUrl: image,
        height: 156,
      ),
    );
  }
}
