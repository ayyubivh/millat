import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/textfields/custom_text_field.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/tasbih_bloc/tasbih_bloc.dart';
import 'package:millat/resources/home/view/tasbih/theme/tasbih_themes.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../utils/responsive.dart';

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
    _controller.reverse(from: 0.5);
  }

  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbihBloc, TasbihState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          foregroundColor: ColorManager.blackColor,
          backgroundColor: tasbihThemeData[state.tasbihThemes]!.primaryColor,
          elevation: 1,
          leading: BackButton(
            onPressed: () {
              if (state.isBoolGreaterThanOne && state.tasbihId.isNotEmpty) {
                context.read<TasbihBloc>().add(
                    AddTasbihEvent(buildContext: context, id: state.tasbihId));
              }
              context.pop();
            },
          ),
          actions: [
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  context
                      .read<TasbihBloc>()
                      .add(const DecreaseTasbhiCountEvent());
                },
                child: const Text(
                  "Undo",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                _resetDialogePopup(context);
              },
              icon: const Icon(Icons.autorenew),
            ),
            kWidth10,
            state.audioMute == false
                ? GestureDetector(
                    onTap: () {
                      context.read<TasbihBloc>().add(const MuteAudioEvent());
                    },
                    child: const Icon(Icons.volume_up_outlined))
                : GestureDetector(
                    onTap: () {
                      context.read<TasbihBloc>().add(const MuteAudioEvent());
                    },
                    child: const Icon(Icons.volume_off_outlined)),
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
        backgroundColor: tasbihThemeData[state.tasbihThemes]!.primaryColor,
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
              Text(
                state.dhikrCount.toString(),
                style:
                    tasbihThemeData[state.tasbihThemes]!.textTheme.bodyMedium!,
              ),
              kHeight5,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<TasbihBloc, TasbihState>(
                    builder: (context, state) => Text(
                      state.dhikrhGoal.toString(),
                      style: tasbihThemeData[state.tasbihThemes]!
                          .textTheme
                          .labelSmall,
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
                      color: tasbihThemeData[state.tasbihThemes]!
                          .textTheme
                          .labelSmall!
                          .color,
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
                        tasbihThemeImage[state.tasbihThemes]!,
                        // fit: BoxFit.fill,
                      ),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          final curvedValue = CurvedAnimation(
                            parent: _controller,
                            curve: Curves.easeIn,
                          ).value;
                          return !Responsive.isMobile(context)
                              ? Positioned(
                                  top: state.tasbihThemes == TasbihThemes.orange
                                      ? 300 - curvedValue * 200
                                      : state.tasbihThemes ==
                                              TasbihThemes.purple
                                          ? 227 - curvedValue * 200
                                          : state.tasbihThemes ==
                                                  TasbihThemes.green
                                              ? 265 - curvedValue * 200
                                              : state.tasbihThemes ==
                                                      TasbihThemes.darkBlue
                                                  ? 220 - curvedValue * 200
                                                  : state.tasbihThemes ==
                                                          TasbihThemes
                                                              .lightOrange
                                                      ? 224 - curvedValue * 200
                                                      : 225 - curvedValue * 200,
                                  left: state.tasbihThemes ==
                                          TasbihThemes.orange
                                      ? 110 +
                                          curvedValue *
                                              SizeUtility(context).width
                                      : state.tasbihThemes ==
                                              TasbihThemes.purple
                                          ? 116 +
                                              curvedValue *
                                                  SizeUtility(context).width
                                          : state.tasbihThemes ==
                                                  TasbihThemes.green
                                              ? 135 +
                                                  curvedValue *
                                                      SizeUtility(context).width
                                              : state.tasbihThemes ==
                                                      TasbihThemes.darkBlue
                                                  ? 114 +
                                                      curvedValue *
                                                          SizeUtility(context)
                                                              .width
                                                  : state.tasbihThemes ==
                                                          TasbihThemes
                                                              .lightOrange
                                                      ? 110 +
                                                          curvedValue *
                                                              SizeUtility(
                                                                      context)
                                                                  .width
                                                      : 100 +
                                                          curvedValue *
                                                              SizeUtility(
                                                                      context)
                                                                  .width,
                                  child: Image.asset(
                                    tasbihThemeSingleBall[state.tasbihThemes]!,
                                    width: state.tasbihThemes ==
                                            TasbihThemes.orange
                                        ? 320
                                        : state.tasbihThemes ==
                                                TasbihThemes.green
                                            ? 268
                                            : state.tasbihThemes ==
                                                    TasbihThemes.darkBlue
                                                ? 288
                                                : 300,
                                    height: state.tasbihThemes ==
                                            TasbihThemes.orange
                                        ? 200
                                        : state.tasbihThemes ==
                                                TasbihThemes.green
                                            ? 268
                                            : 300,
                                  ),
                                )
                              : Positioned(
                                  top: state.tasbihThemes == TasbihThemes.orange
                                      ? 152 - curvedValue * 200
                                      : state.tasbihThemes ==
                                              TasbihThemes.purple
                                          ? 130 - curvedValue * 200
                                          : state.tasbihThemes ==
                                                  TasbihThemes.green
                                              ? 148 - curvedValue * 200
                                              : state.tasbihThemes ==
                                                      TasbihThemes.darkBlue
                                                  ? 130 - curvedValue * 200
                                                  : state.tasbihThemes ==
                                                          TasbihThemes
                                                              .lightOrange
                                                      ? 125 - curvedValue * 200
                                                      : 129 - curvedValue * 200,
                                  left: state.tasbihThemes ==
                                          TasbihThemes.orange
                                      ? 80 +
                                          curvedValue *
                                              SizeUtility(context).width
                                      : state.tasbihThemes ==
                                              TasbihThemes.purple
                                          ? 68 +
                                              curvedValue *
                                                  SizeUtility(context).width
                                          : state.tasbihThemes ==
                                                  TasbihThemes.green
                                              ? 78 +
                                                  curvedValue *
                                                      SizeUtility(context).width
                                              : state.tasbihThemes ==
                                                      TasbihThemes.darkBlue
                                                  ? 77 +
                                                      curvedValue *
                                                          SizeUtility(context)
                                                              .width
                                                  : state.tasbihThemes ==
                                                          TasbihThemes
                                                              .lightOrange
                                                      ? 68 +
                                                          curvedValue *
                                                              SizeUtility(
                                                                      context)
                                                                  .width
                                                      : 58 +
                                                          curvedValue *
                                                              SizeUtility(
                                                                      context)
                                                                  .width,
                                  child: Image.asset(
                                    tasbihThemeSingleBall[state.tasbihThemes]!,
                                    width: state.tasbihThemes ==
                                            TasbihThemes.orange
                                        ? 140
                                        : state.tasbihThemes ==
                                                TasbihThemes.green
                                            ? 148
                                            : state.tasbihThemes ==
                                                    TasbihThemes.darkBlue
                                                ? 148
                                                : 167,
                                    height: state.tasbihThemes ==
                                            TasbihThemes.orange
                                        ? 140
                                        : state.tasbihThemes ==
                                                TasbihThemes.green
                                            ? 148
                                            : 167,
                                  ),
                                );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          color: tasbihThemeData[state.tasbihThemes]!.primaryColor,
          height: 260,
          child: Column(
            children: [
              const Text(
                'Tap anywhere to begin',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kHeight10,
              BlocBuilder<TasbihBloc, TasbihState>(
                builder: (context, state) {
                  print('Rebuilding UI with tasbihDhikr: ${state.tasbihDhikr}');
                  return state.tasbihDhikr.isEmpty
                      ? _chooseDikrButton(context, state)
                      : _dikhrContainer(state);
                },
              ),
              const Spacer(),
              Container(
                height: 120,
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
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            final tasbihTheme = TasbihThemes.values[index];

                            return GestureDetector(
                              onTap: () {
                                context.read<TasbihBloc>()
                                  ..add(ChangeThemeEvent(
                                      tasbihTheme: tasbihTheme))
                                  ..add(ChangeThemeIndex(themeIndex: index));
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  border: state.themeIndex == index
                                      ? Border.all(color: ColorManager.redColor)
                                      : null,
                                  color: tasbihThemeData[tasbihTheme]!
                                      .primaryColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset(
                                  'assets/images/tasbih_theme_ball_${index + 1}.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dikhrContainer(TasbihState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            tasbihThemeData[state.tasbihThemes]!.primaryColorDark,
            tasbihThemeData[state.tasbihThemes]!.primaryColorLight,
          ],
        ),
      ),
      width: double.infinity,
      height: 95,
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
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.whiteColor,
                    fontFamily: "Hafs",
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            // Text(
            //   state.tasbihDikrTranslate,
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w600,
            //     color: ColorManager.whiteColor,
            //   ),
            // ),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(MyAppRouteConstants.chooseDhikrRouteName);
                },
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

  Widget _chooseDikrButton(BuildContext context, TasbihState state) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(MyAppRouteConstants.chooseDhikrRouteName);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            colors: [
              tasbihThemeData[state.tasbihThemes]!.primaryColorDark,
              tasbihThemeData[state.tasbihThemes]!.primaryColorLight,
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Updated Tasbih Count',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      kHeight15,
                      const Text(
                        'Set Goal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      kHeight10,
                      CustomTextField(
                          icon: const Icon(null),
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
                              context.pop();
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
                                context.pop();
                              }
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
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12)),
                            color: ColorManager.whiteColor,
                          ),
                          child: Center(
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
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                          context
                              .read<TasbihBloc>()
                              .add(const ResetTashbihCounterEvent());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(12)),
                            color: ColorManager.primary,
                          ),
                          height: 62,
                          child: Center(
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
