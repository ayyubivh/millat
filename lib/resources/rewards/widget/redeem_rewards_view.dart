import 'package:flutter/material.dart';
import 'package:millat/components/buttons/main_button.dart';
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
                kWidth10,
                _filterWidget(text: Appstrings.shop),
                kWidth10,
                _filterWidget(text: Appstrings.hajjAndUmmrah),
              ],
            ),
            kHeight20,
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => _couponWidget(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _couponWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                height: SizeUtility(context).height / 1.2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              Appstrings.hadithSettings,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 14,
                            color: ColorManager.textGrey99,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: ColorManager.black4F,
                    ),
                    kHeight16,
                    Container(
                      height: SizeUtility(context).height / 1.5,
                      width: SizeUtility(context).width,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        // color: ColorManager.lightBlackColor,
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
                        clipper: RewardSettingClipper(),
                        child: Container(
                          color: ColorManager.whiteColor,
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              _roundedImgWidget(),
                              kHeight15,
                              Text(
                                Appstrings.ummrahAndHajjPackage,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: ColorManager.black4F),
                                textAlign: TextAlign.center,
                              ),
                              kHeight10,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  _scoreWidget(),
                                  Container(
                                    height: 24,
                                    color: ColorManager.black4F,
                                    width: 2,
                                  ),
                                  Text(
                                    "Your Coins : 12,829",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: ColorManager.textGrey73,
                                    ),
                                  ),
                                ],
                              ),
                              kHeight16,
                              Text(
                                Appstrings.loremIpsumText,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.textGrey94,
                                  height: 1.3,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: SizeUtility(context).height / 5.5,
                              ),
                              DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: SizeUtility(context).width / 2,
                                lineThickness: 2.0,
                                dashLength: 4.0,
                                dashColor:
                                    ColorManager.black4F.withOpacity(0.3),
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapRadius: 0.0,
                              ),
                              const Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: MainButton(
                                  title: Appstrings.redeemNow,
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          contentPadding:
                                              const EdgeInsets.all(0),
                                          content: Container(
                                            height: 300,
                                            width: SizeUtility(context).width,
                                            decoration: BoxDecoration(
                                              color: ColorManager.whiteColor,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                    AppAssetsStrings
                                                        .rewardSuccesBg,
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      AppAssetsStrings
                                                          .rewardsSuccesDecorimg,
                                                      height: 80,
                                                    ),
                                                    Image.asset(
                                                      AppAssetsStrings
                                                          .rewardsSuccesimg,
                                                      height: 100,
                                                    ),
                                                    Image.asset(
                                                      AppAssetsStrings
                                                          .rewardsSuccesDecorimg,
                                                      height: 100,
                                                    ),
                                                  ],
                                                ),
                                                kHeight30,
                                                Text(
                                                  Appstrings.mashaAllah,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: ColorManager.primary,
                                                  ),
                                                ),
                                                kHeight5,
                                                Text(
                                                  Appstrings
                                                      .redeemedSuccessfully,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: ColorManager.black4F,
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
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: ClipPath(
          clipper: RewardClipper(),
          child: Container(
            height: 176,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              // color: ColorManager.lightBlackColor,
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
                color: ColorManager.whiteColor,
                height: 166,
                width: SizeUtility(context).width,
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtility(context).width / 8, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _roundedImgWidget(),
                        kWidth10,
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
                        kWidth10,
                        SizedBox(
                          width: 160,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              _scoreWidget(),
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
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Available : ",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.black4F,
                                ),
                              ),
                              TextSpan(
                                text: "2",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.primary,
                                ),
                              ),
                              TextSpan(
                                text: "/10",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.textGrey99,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              Appstrings.redeemNow,
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
        ),
      ),
    );
  }

  Row _scoreWidget() {
    return Row(
      children: [
        Image.asset(
          AppAssetsStrings.score,
          height: 25,
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
    );
  }

  Widget _roundedImgWidget() {
    return Container(
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

    double sideRadius = 25.0;
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

class RewardSettingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double sideRadius = 30.0;
    double midPoint = size.height * (8 / 10);
    double cornerRadius = 20.0;

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
