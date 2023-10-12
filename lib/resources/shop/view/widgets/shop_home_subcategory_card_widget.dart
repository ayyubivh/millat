// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/view/widgets/shop_home_card_button.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

class BackgroundContainer extends StatelessWidget {
  final String imageUrl;
  final String text;
  final List<Color> gradientColors;
  final Color textColor;
  final String title;
  final Widget child;
  final Color buttonColor;
  final double width;
  final VoidCallback onTap;
  final String? text2;
  final String? title2;
  final ShopHomeCardtype? cardType;

  const BackgroundContainer({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.gradientColors,
    required this.textColor,
    required this.title,
    required this.buttonColor,
    required this.width,
    this.cardType,
    required this.onTap,
    required this.child,
    this.text2,
    this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: SizeUtility(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
      ),
      padding: cardType == ShopHomeCardtype.sunnah
          ? const EdgeInsets.only(left: 15, top: 1)
          : const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          SizedBox(
            height: 184,
            child: Stack(
              children: [
                cardType == ShopHomeCardtype.health
                    ? Positioned(
                        right: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage(AppAssetsStrings.healhtyDietImg2),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Positioned(
                  left: cardType == ShopHomeCardtype.sunnah ? 30 : null,
                  top: cardType == ShopHomeCardtype.health
                      ? 50
                      : cardType == ShopHomeCardtype.sunnah
                          ? 60
                          : 0,
                  right: cardType == ShopHomeCardtype.health ? 30 : 0,
                  child: SizedBox(
                    height: cardType == ShopHomeCardtype.sunnah ? 114 : 184,
                    width: width,
                    child: Row(
                      children: [
                        Container(
                          height: 184,
                          width: width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imageUrl),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        cardType == ShopHomeCardtype.health
                            ? Container(
                                height: 184,
                                // width: width,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        AppAssetsStrings.healhtyDietImg3),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: text,
                              style: TextStyle(
                                color: textColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            TextSpan(
                              text: title,
                              style: TextStyle(
                                color: ColorManager.whiteColor,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      cardType == ShopHomeCardtype.health
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text2 ?? "",
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    height: 1.2,
                                  ),
                                ),
                                Text(
                                  title2 ?? "",
                                  style: TextStyle(
                                    color: ColorManager.whiteColor,
                                    fontSize: 29.5,
                                    fontWeight: FontWeight.bold,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              width: SizeUtility(context).width,
              margin: const EdgeInsets.only(
                right: 12,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: cardType == ShopHomeCardtype.sunnah
                    ? Colors.transparent
                    : ColorManager.whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  child,
                  const Spacer(),
                  ShopHomeCardButton(
                    color: buttonColor,
                    onTap: onTap,
                    textColor: cardType == ShopHomeCardtype.sunnah
                        ? ColorManager.sunnahGreenClr1
                        : ColorManager.whiteColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
