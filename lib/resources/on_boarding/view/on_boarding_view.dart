import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/utils/responsive.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                buildOBView(
                  image: shopImagePath,
                  content:
                      'Muslim consumers to access a range of halal products and services conveniently. making it easier for them to shop for halal products and services without compromising their faith.',
                  titleWidget: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Trusted Source for ',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Halal',
                        style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: ' Products and Services',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500))
                  ])),
                ),
                buildOBView(
                  image: familyImagePath,
                  // height: SizeUtility(context).height / 2.4,

                  content:
                      'Muslim consumers to access a range of halal products and services conveniently. making it easier for them to shop for halal products and services without compromising their faith.',
                  titleWidget: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Empowering the ',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Muslim Community',
                        style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: ' with Linger',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500))
                  ])),
                ),
                buildOBView(
                  image: prayingImagePath,
                  content:
                      'Namaz Time is an essential mobile app for Muslims around the world who want to stay connected to their faith by ensuring they never miss a prayer.',
                  titleWidget: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Your Ultimate Companion for Accurate ',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Prayer Timings',
                        style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ])),
                ),
                buildOBView(
                  image: quranImagePath,
                  titleWidget: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text:
                            'Your Ultimate Guide to Reading and Understanding the ',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Quran',
                        style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ])),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  axisDirection: Axis.horizontal,
                  effect: WormEffect(
                      activeDotColor: ColorManager.mainColor,
                      dotColor: ColorManager.dotGrey,
                      dotHeight: 10,
                      dotWidth: 10),
                ),
                const SizedBox(
                  height: 30,
                ),
                MainButton(
                    key: const Key('next_button'),
                    title: 'Next',
                    onPressed: () {
                      if (_pageController.page == 3) {
                        context.goNamed(MyAppRouteConstants.signUpRouteName);
                      } else {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      }
                    }),
                MainTextButton(
                  key: const Key('skip_button'),
                  title: 'Skip',
                  onTap: () {
                    context.goNamed(MyAppRouteConstants.signUpRouteName);
                  },
                  textStyle:
                      TextStyle(color: ColorManager.blackColor, fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildOBView(
      {required Widget titleWidget, required String image, String? content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20)
          .copyWith(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titleWidget,
          Image.asset(
            image,
            height: !Responsive.isMobile(context) ? 600 : 350,
          ),
          if (content != null)
            Text(content,
                style: TextStyle(
                    color: ColorManager.lightBlackColor,
                    fontSize: 16,
                    height: 1.3,
                    fontWeight: FontWeight.w100)),
          if (content == null) kHeight40,
        ],
      ),
    );
  }
}
