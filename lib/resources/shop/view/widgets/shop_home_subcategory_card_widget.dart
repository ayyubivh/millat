// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:millat/enums/enumertations.dart';

import 'package:millat/resources/shop/view/widgets/shop_home_card_button.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

class BackgroundContainer extends StatelessWidget {
  final String imageUrl;
  final String text;
  final List<Color> gradientColors;
  final String textColor;
  final String title;
  final Widget child;
  final Color buttonColor;
  final double width;
  final VoidCallback onTap;

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
          ? const EdgeInsets.only(left: 12, top: 8)
          : const EdgeInsets.only(left: 12),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: HexColor.fromHex(textColor),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight5,
                  Text(
                    title,
                    style: TextStyle(
                      // color: HexColor.fromHex(textColor),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              cardType != ShopHomeCardtype.sunnah
                  ? Container(
                      height: 184,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
          cardType == ShopHomeCardtype.sunnah
              ? Container(
                  height: 140,
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 190,
              width: SizeUtility(context).width,
              margin: const EdgeInsets.only(
                right: 12,
              ),
              padding: const EdgeInsets.all(12),
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
