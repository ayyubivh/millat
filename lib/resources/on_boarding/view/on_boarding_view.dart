import 'package:flutter/material.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                  imageWidget: Image.asset(shopImagePath, height: 400),
                  content:
                      'Muslim consumers to access a range of halal products and services conveniently. making it easier for them to shop for halal products and services without compromising their faith.',
                  titleWidget: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Trusted Source for ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Halal',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: ' Products and Services',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w500))
                  ])),
                ),
                buildOBView(
                  imageWidget: Image.asset(familyImagePath, height: 400),
                  content:
                      'Muslim consumers to access a range of halal products and services conveniently. making it easier for them to shop for halal products and services without compromising their faith.',
                  titleWidget: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Empowering the ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Muslim Community',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: ' with Linger',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w500))
                  ])),
                ),
                buildOBView(
                  imageWidget: Image.asset(prayingImagePath, height: 400),
                  content:
                      'Namaz Time is an essential mobile app for Muslims around the world who want to stay connected to their faith by ensuring they never miss a prayer.',
                  titleWidget: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Your Ultimate Companion for Accurate ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Prayer Timings',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ])),
                ),
                buildOBView(
                  imageWidget: Image.asset(
                    quranImagePath,
                  ),
                  titleWidget: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text:
                            'Your Ultimate Guide to Reading and Understanding the ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Quran',
                        style: TextStyle(
                            color: mainColor,
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
                  effect: const WormEffect(
                      activeDotColor: mainColor,
                      dotColor: dotsColor,
                      dotHeight: 10,
                      dotWidth: 10),
                ),
                const SizedBox(
                  height: 30,
                ),
                MainButton(
                    title: 'Next',
                    onPressed: () {
                      if (_pageController.page == 3) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ));
                      } else {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      }
                    }),
                MainTextButton(
                  title: 'Skip',
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildOBView(
      {required Widget titleWidget,
      required Widget imageWidget,
      String? content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          titleWidget,
          const SizedBox(
            height: 50,
          ),
          imageWidget,
          const SizedBox(
            height: 50,
          ),
          if (content != null)
            Text(content,
                style: const TextStyle(
                    color: lightBlackColor,
                    fontSize: 16,
                    height: 1.3,
                    fontWeight: FontWeight.w100)),
        ],
      ),
    );
  }
}
