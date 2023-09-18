import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:dotted_line/dotted_line.dart';

class RewardsRedeemView extends StatelessWidget {
  const RewardsRedeemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        title: const Text(
          Appstrings.redeemRewards,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 38,
                  width: 51,
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      Appstrings.all,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),
                ),
                kWidht10,
                _filterWidget(text: Appstrings.shop),
                kWidht10,
                _filterWidget(text: Appstrings.hajjAndUmmrah),
              ],
            ),
            kHeight20,
            ClipPath(
              clipper: RewardClipper(),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: ColorManager.blackColor,
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.greyEE,
                      spreadRadius: 12,
                      blurRadius: 12,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: ClipPath(
                  clipper: RewardClipper(),
                  child: Container(
                    height: 166,
                    width: SizeUtility(context).width,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeUtility(context).width / 8,
                        vertical: 15),
                    decoration: BoxDecoration(
                      color: ColorManager.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManager.lightBlueBF,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppAssetsStrings.rewardsKahbaImg,
                                height: 59,
                                width: 68,
                              ),
                            ),
                            kWidht10,
                            DottedLine(
                              direction: Axis.vertical,
                              alignment: WrapAlignment.center,
                              lineLength: 85,
                              lineThickness: 2.0,
                              dashLength: 4.0,
                              dashColor: ColorManager.black4F.withOpacity(0.3),
                              dashRadius: 0.0,
                              dashGapLength: 4.0,
                              dashGapRadius: 0.0,
                            ),
                            kWidht10,
                            SizedBox(
                              width: 160,
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    Appstrings.ummrahAndHajjPackage,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppAssetsStrings.score,
                                        height: 20,
                                      ),
                                      Text(
                                        "50,0000",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: ColorManager.black4F,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Valid till 24th July, 2023",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: ColorManager.textGrey,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 0,
                          color: ColorManager.blackColor.withOpacity(0.5),
                        ),
                        kHeight3,
                        Row(
                          children: [
                            const Text(
                              "Available:2/10",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  "Redeem Now ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorManager.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Image.asset(
                                  AppAssetsStrings.arrrowRight,
                                  height: 12,
                                  color: ColorManager.primary,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _filterWidget({
    required String text,
  }) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: ColorManager.lightBlackColor.withOpacity(0.3),
          )),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: ColorManager.blackColor,
          ),
        ),
      ),
    );
  }
}

class RewardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double sideRadius = 30.0;
    double midPoint = size.height * (5 / 10);
    double cornerRadius = 10.0;

    path.moveTo(0, cornerRadius);
    path.lineTo(0, (midPoint - sideRadius));

    //LEFT ARC
    path.quadraticBezierTo(
        sideRadius, midPoint - sideRadius, sideRadius, midPoint);
    path.quadraticBezierTo(
        sideRadius, midPoint + sideRadius, 0, midPoint + sideRadius);

    path.lineTo(0, size.height - cornerRadius);

    //BottomLeft
    path.quadraticBezierTo(0, size.height, cornerRadius, size.height);

    path.lineTo(size.width - cornerRadius, size.height);

    //BottomRight
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerRadius);

    path.lineTo(size.width, (midPoint + sideRadius));

    //RIGHT ARC
    path.quadraticBezierTo((size.width - sideRadius), (midPoint + sideRadius),
        (size.width - sideRadius), (midPoint));
    path.quadraticBezierTo((size.width - sideRadius), (midPoint - sideRadius),
        size.width, midPoint - sideRadius);

    path.lineTo(size.width, cornerRadius);

    //TopRight
    path.quadraticBezierTo(size.width, 0, size.width - cornerRadius, 0);

    path.lineTo(cornerRadius, 0);

    //TopLeft
    path.quadraticBezierTo(0, 0, 0, cornerRadius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
