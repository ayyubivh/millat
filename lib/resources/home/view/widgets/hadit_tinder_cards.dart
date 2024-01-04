import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/responsive.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../utils/assets_paths.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_utility.dart';
import '../../../../utils/string_constants.dart';
import '../../bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/bloc/models/home_models/hadit_of_the_day_model/hadit_oftheday_mode.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HaditTinkerCards extends StatefulWidget {
  const HaditTinkerCards({Key? key}) : super(key: key);

  @override
  HaditTinkerCardsState createState() => HaditTinkerCardsState();
}

class HaditTinkerCardsState extends State<HaditTinkerCards> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final cards = state.haditOfTheDayModel?.result?.data?.toList();
        if (cards == null) {
          return ShimmerUtils.customRectangleShimmer(
              SizeUtility(context).width, 300,
              borderRadius: 8);
        }
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => !state.tinderCardSwipVal
              ? _buildHadithCard(context, cards[cards.length - 1])
              : SwipeCards(
                  leftSwipeAllowed: state.tinderCardSwipVal,
                  rightSwipeAllowed: state.tinderCardSwipVal,

                  itemChanged: (p0, p1) {
                    if (p1 == cards.length - 1) {
                      context
                          .read<HomeBloc>()
                          .add(const ChangeTinterCardSwipeOption(value: false));
                    }
                    // else if (p1 != cards.length - 1) {
                    //   context
                    //       .read<HomeBloc>()
                    //       .add(const ChangeTinterCardSwipeOption(value: true));
                    // }
                  },
                  matchEngine: MatchEngine(
                      swipeItems: cards.map(_buildSwipeItem).toList()),
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return _buildHadithCard(context, cards[index]);
                  },
                  onStackFinished: () {},
                  // fillSpace: true,
                ),
        );
      },
    );
  }

  SwipeItem _buildSwipeItem(Data card) {
    return SwipeItem(
      content: card,
      likeAction: () {},
      nopeAction: () {},
      superlikeAction: () {},
    );
  }

  Widget _buildHadithCard(BuildContext context, Data card) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30),
          height: 340,
          child: Stack(
            children: [
              Container(
                height: 322,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: ColorManager.primary,
                  ),
                ),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(SizeUtility(context).width, 0),
                      painter: SemiCirclePainter(),
                    ),
                    Column(
                      children: [
                        !Responsive.isMobile(context) ? kHeight25 : kHeight2,
                        kHeight50,
                        Text(
                          Appstrings.hadithOfTheDay,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.primary,
                          ),
                        ),
                        kHeight10,
                        Text(
                          card.title ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textGrey,
                          ),
                        ),
                        kHeight20,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            card.content ?? '',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorManager.blackColor,
                              height: 1.3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // textDirection: TextDirection.rtl,
                            maxLines: 5,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                Share.share(
                                    "${card.title} \n\n${card.content}");
                              },
                              icon: Icon(
                                Icons.share_outlined,
                                color: ColorManager.grey70,
                                size: 20,
                              ),
                              label: Text(
                                Appstrings.share,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.grey70,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: CustomPaint(
                        size: Size(SizeUtility(context).width, 0),
                        painter: SemiCirclePainter2(),
                      ),
                    ),
                  ],
                ),
              ),
              CustomPaint(
                size: Size(SizeUtility(context).width, 0),
                painter: LinePainter(),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomPaint(
                    size: Size(SizeUtility(context).width, 0),
                    painter: LinePainter2(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: !Responsive.isMobile(context)
                ? SizeUtility(context).width / 2.4
                : SizeUtility(context).width / 2.66,
          ),
          child: CircleAvatar(
            radius: !Responsive.isMobile(context) ? 45 : 30,
            backgroundColor: ColorManager.primary,
            child: Image.asset(
              AppAssetsStrings.homeHaditQuranIcon,
              height: 40,
            ),
          ),
        ),
      ],
    );
  }
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..color = ColorManager.primary;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.42, size.height);
    arc1.arcToPoint(Offset(size.width * 0.6, size.height),
        radius: const Radius.circular(8), clockwise: false);
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SemiCirclePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..color = ColorManager.primary;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.35, size.height);
    arc1.arcToPoint(Offset(size.width * 0.5, size.height),
        radius: const Radius.circular(7.4), clockwise: true);
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = ColorManager.whiteColor;
    canvas.drawLine(Offset(size.width * 2.54 / 6, size.height),
        Offset(size.width * 3.58 / 6, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class LinePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = ColorManager.whiteColor;
    canvas.drawLine(Offset(size.width * 2.131 / 6, size.height),
        Offset(size.width * 3 / 6, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
