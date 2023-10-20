import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/string_constants.dart';
import '../../../bloc/logic/dua_bloc/dua_bloc.dart';

class SettingsPopUpWidget extends StatelessWidget {
  const SettingsPopUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        children: [
          kHeight15,
          Row(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    'Select Category',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 16,
                    )),
              ),
              kWidth15
            ],
          ),
          kHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _aprnceText('Appearance'),
                BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Display Arabic Text',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Switch(
                        activeColor: ColorManager.primary,
                        value: state.displayArabicText,
                        onChanged: (value) {
                          context.read<DuaBloc>().add(
                              SwitchDisplayArabicTextEvent(newValue: value));
                        },
                      ),
                    ],
                  ),
                ),
                BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Display Translation Text',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Switch(
                        activeColor: ColorManager.primary,
                        value: state.displayTranslationText,
                        onChanged: (value) {
                          context.read<DuaBloc>().add(
                              SwitchDisplayTranslationTextEvent(
                                  newValue: value));
                        },
                      ),
                    ],
                  ),
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Display Translation Text',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      'Reset to Default',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorManager.primary,
                      ),
                    ),
                  ],
                ),
                kHeight10,
                BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) => Slider(
                    thumbColor: ColorManager.whiteColor,
                    inactiveColor: ColorManager.dotGrey,
                    activeColor: ColorManager.primary,
                    value: state.sliderValue,
                    max: 25.0,
                    min: 2.0,

                    // label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      context
                          .read<DuaBloc>()
                          .add(ChangeSliderEvent(sliderVal: value));
                    },
                  ),
                ),
                kHeight15,
                BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) => Center(
                    child: Text(
                      'بسم الله',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: state.sliderValue,
                        color: ColorManager.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                kHeight10,
                const Divider(thickness: 1),
                _aprnceText('Translation'),
                kHeight15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Auto Translate Language',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        BlocBuilder<DuaBloc, DuaState>(
                          builder: (context, state) => Text(
                              state.translationText == 0 ? "English" : "Hindi",
                              style: TextStyle(color: ColorManager.textGrey)),
                        ),
                        IconButton(
                          onPressed: () {
                            buildPopup(context);
                          },
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                          iconSize: 14,
                          color: black102,
                        )
                      ],
                    ),
                  ],
                ),
                kHeight15,
                _aprnceText("Appearance"),
                kHeight15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recite Hadith Arabic',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Switch(
                      activeColor: ColorManager.primary,
                      value: true,
                      onChanged: (value) {
                        // setState(() {
                        //   isDetectLocation = value;
                        // });
                        // if (isDetectLocation ==
                        //     true) {
                        //   context
                        //       .read<LocationBloc>()
                        //       .add(
                        //           const ChangeLocationOnToggle());
                        // }
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Hadith Translation',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Switch(
                      activeColor: ColorManager.primary,
                      value: true,
                      onChanged: (value) {
                        // setState(() {
                        //   isDetectLocation = value;
                        // });
                        // if (isDetectLocation ==
                        //     true) {
                        //   context
                        //       .read<LocationBloc>()
                        //       .add(
                        //           const ChangeLocationOnToggle());
                        // }
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> buildPopup(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return BlocBuilder<DuaBloc, DuaState>(
            builder: (context, state) => SizedBox(
                  height: 160,
                  child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const Divider(thickness: 1),
                      itemCount: translateTexts.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10)
                                .copyWith(top: 20),
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<DuaBloc>()
                                    .add(SelectTranslationText(value: index));
                                context.pop();
                              },
                              child: Center(
                                  child: Text(
                                translateTexts[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          )),
                ));
      },
    );
  }

  Text _aprnceText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: ColorManager.black4F,
      ),
    );
  }
}
