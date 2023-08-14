import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class ShopBrandView extends StatelessWidget {
  const ShopBrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorManager.greenColor1,
                ColorManager.primary,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              width: SizeUtility(context).width,
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButton(color: ColorManager.whiteColor),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          Appstrings.thousandBrands,
                          style: TextStyle(
                            fontSize: 31,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.whiteColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        kHeight8,
                        Text(
                          Appstrings.brandDescription,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.whiteColor,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        kHeight15,
                        SizedBox(
                          width: SizeUtility(context).width,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/dummy/huda.png',
                                height: 90,
                              ),
                              Positioned(
                                left: 70,
                                child: Image.asset(
                                  'assets/dummy/kazima.png',
                                  height: 90,
                                ),
                              ),
                              Positioned(
                                left: 135,
                                child: Image.asset(
                                  'assets/dummy/two_brothers.png',
                                  height: 90,
                                ),
                              ),
                              Positioned(
                                left: 210,
                                child: Image.asset(
                                  'assets/dummy/isak.png',
                                  height: 90,
                                ),
                              ),
                              Positioned(
                                left: 280,
                                child: Image.asset(
                                  'assets/dummy/farsali_2.png',
                                  height: 90,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            kHeight15,
            const Text(
              Appstrings.top8brands,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFFE601), // #FFE601
                    Color(0xFFF09F40), // #F09F40
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  productRow(),
                  kHeight20,
                  productRow(),
                  kHeight10,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  _filterRow(),
                  kHeight15,
                  _productWidget(),
                  kHeight15,
                  _productWidget(),
                  kHeight15,
                  _productWidget(),
                  kHeight15,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _productWidget() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/dummy/two_brother_product.png"),
            kWidth15,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Two Brothers',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.blackColor,
                  ),
                ),
                kHeight10,
                Text(
                  'Orgainic Forms',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: ColorManager.black4F),
                ),
                kHeight15,
                Row(
                  children: [
                    ImageIcon(
                      AssetImage(AppAssetsStrings.reviewStar),
                      color: ColorManager.reviewStar,
                    ),
                    kWidht10,
                    Text(
                      "2.8k Reviews",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.black4F,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _filterRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _filterContainer(
            icon: AppAssetsStrings.filterIcon, text: Appstrings.filters),
        _filterContainer(
            icon: AppAssetsStrings.starIcon, text: Appstrings.byReview),
        Container(
          height: 42,
          decoration: BoxDecoration(
            color: ColorManager.dotGrey.withOpacity(0.6),
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(10),
          child: const Row(
            children: [
              Icon(
                Icons.expand_more,
                size: 26,
              ),
              kWidth5,
              Text(
                Appstrings.sortBy,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, height: 1.5),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container _filterContainer({
    required String icon,
    required String text,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.greyD1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(10),
      height: 42,
      child: Row(
        children: [
          ImageIcon(
            AssetImage(
              icon,
            ),
          ),
          kWidth8,
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Row productRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.asset("assets/dummy/farsali.png"),
            kHeight10,
            const Text(
              'Two Brothers',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.fade,
            )
          ],
        ),
        kWidth15,
        Column(
          children: [
            Image.asset("assets/dummy/ishaq_2.png"),
            kHeight10,
            const Text(
              'Karizma',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        kWidth15,
        Column(
          children: [
            Image.asset("assets/dummy/farsali.png"),
            kHeight10,
            const Text(
              'Farsali',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        kWidth15,
        Column(
          children: [
            Image.asset("assets/dummy/ishaq_2.png"),
            kHeight10,
            const Text(
              'Ishak',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ],
    );
  }
}
