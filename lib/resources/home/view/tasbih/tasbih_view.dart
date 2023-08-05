import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/textfields/custom_text_field.dart';
import 'package:millat/resources/home/bloc/logic/tasbih_bloc/tasbih_bloc.dart';
import 'package:millat/resources/home/view/tasbih/widgets/choose_dhikr_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

class TasbihView extends StatefulWidget {
  const TasbihView({super.key});

  @override
  TasbihViewState createState() => TasbihViewState();
}

class TasbihViewState extends State<TasbihView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapTasbihBall() {
    context.read<TasbihBloc>().add(const DikhrIncreaseCountEvent());
    _controller.reverse(from: 0.6);

    // Future.delayed(const Duration(milliseconds: 308), () {
    //   if (_controller.isAnimating) {
    //     _controller.stop();
    //   }
    // });
  }

  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        backgroundColor: ColorManager.tasbihPinkBgClr,
        elevation: 1,
        leading: BlocBuilder<TasbihBloc, TasbihState>(
          builder: (context, state) => BackButton(
            onPressed: () {
              if (state.isBoolGreaterThanOne && state.tasbihId.isNotEmpty) {
                context.read<TasbihBloc>().add(
                    AddTasbihEvent(buildContext: context, id: state.tasbihId));
              }
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _resetDialogePopup(context);
            },
            icon: const Icon(Icons.autorenew),
          ),
          kWidht10,
          const Icon(Icons.volume_up_outlined),
          kWidth20,
        ],
        centerTitle: true,
        title: const Text(
          'Tasbih',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: ColorManager.tasbihPinkBgClr,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            kHeight20,
            BlocBuilder<TasbihBloc, TasbihState>(
              builder: (context, state) {
                int loop = (state.dhikrCount / state.dhikrhGoal).ceil();
                if (loop >= 2) {
                  context.read<TasbihBloc>().add(const CheckLoopEvent());
                }
                return Text(
                  'Loop $loop',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                );
              },
            ),
            kHeight10,
            BlocBuilder<TasbihBloc, TasbihState>(
              builder: (context, state) => Text(
                state.dhikrCount.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.tasbihPinkClr,
                ),
              ),
            ),
            kHeight5,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<TasbihBloc, TasbihState>(
                  builder: (context, state) => Text(
                    state.dhikrhGoal.toString(),
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.textPink89,
                    ),
                  ),
                ),
                kWidth5,
                GestureDetector(
                  onTap: () {
                    _tasbihCountPopup(context);
                  },
                  child: Icon(
                    Icons.border_color_outlined,
                    size: 19,
                    color: ColorManager.textPink89,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: _onTapTasbihBall,
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/tasbih.png',
                      fit: BoxFit.fill,
                      width: SizeUtility(context).width,
                    ),
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        final curvedValue = CurvedAnimation(
                          parent: _controller,
                          curve: Curves.easeIn,
                        ).value;
                        return Positioned(
                          top: 158 - curvedValue * 200,
                          left: 43 + curvedValue * SizeUtility(context).width,
                          child: Image.asset(
                            'assets/images/tasbih_ball.png',
                            width: 157,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'Tap anywhere to begin',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            kHeight10,
            BlocBuilder<TasbihBloc, TasbihState>(
              builder: (context, state) => state.tasbihDhikr.isEmpty
                  ? _chooseDikrButton(context)
                  : _dikhrContainer(),
            ),
            kHeight15,
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tasbih Themes',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    kHeight8,
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          final colors = [
                            ColorManager.tasbihPinkClr.withOpacity(0.2),
                            ColorManager.tasbihLightPurplClr,
                            ColorManager.tasbihGreenBgClr.withOpacity(0.4),
                            ColorManager.tasbihPurpleBgClr,
                          ];
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                                'assets/images/tasbih_theme_ball_${index + 1}.png'),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _dikhrContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            ColorManager.tasbihGradientClr1,
            ColorManager.tasbihGradientClr2,
          ],
        ),
      ),
      width: double.infinity,
      height: 105,
      child: BlocBuilder<TasbihBloc, TasbihState>(
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.play_circle_outline,
                  color: ColorManager.whiteColor,
                ),
                Text(
                  state.tasbihDhikr,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.whiteColor,
                      fontFamily: "Hafs"),
                ),
              ],
            ),
            kHeight10,
            Text(
              state.tasbihDikrTranslate,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorManager.whiteColor,
              ),
            ),
            kHeight8,
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                child: Text(
                  'View More',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.whiteColor,
                      fontFamily: "Hafs"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _chooseDikrButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ChooseDhikrView()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            colors: [
              ColorManager.tasbihGradientClr1,
              ColorManager.tasbihGradientClr2,
            ],
          ),
        ),
        width: double.infinity,
        height: 43,
        child: Center(
          child: Text(
            'Choose Dikhr',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: ColorManager.whiteColor,
              letterSpacing: 0.2,
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> _tasbihCountPopup(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Updated Tasbih Count',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      kHeight15,
                      Text(
                        'Set Goal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      kHeight10,
                      CustomTextField(
                          icon: Icon(null),
                          hint: '',
                          controller: numberController),
                    ],
                  ),
                ),
                kHeight10,
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 62,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12)),
                          color: ColorManager.whiteColor,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.redColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(12)),
                          color: ColorManager.primary,
                        ),
                        height: 62,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              if (numberController.text.isNotEmpty) {
                                context.read<TasbihBloc>().add(
                                    ChangeTasbihGoalEvent(
                                        newValue:
                                            int.parse(numberController.text)));
                                Navigator.of(context).pop();
                              }
                              print('empty');
                            },
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: ColorManager.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _resetDialogePopup(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Are you sure you would like \nto reset?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                kHeight10,
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 62,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12)),
                          color: ColorManager.whiteColor,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.redColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(12)),
                          color: ColorManager.primary,
                        ),
                        height: 62,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                              context
                                  .read<TasbihBloc>()
                                  .add(const ResetTashbihCounterEvent());
                            },
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: ColorManager.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
