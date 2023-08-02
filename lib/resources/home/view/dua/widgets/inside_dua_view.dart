import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_share_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';

import '../../../../../utils/constants.dart';

class InsideDuaView extends StatelessWidget {
  const InsideDuaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorManager.whiteColor,
          foregroundColor: ColorManager.blackColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Dua\'s',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorManager.blackColor,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                _buildPopUp(context);
              },
              child: const ImageIcon(
                AssetImage("assets/icons/settings.png"),
              ),
            ),
            kWidth20,
          ],
        ),
        body: BlocBuilder<DuaBloc, DuaState>(builder: (context, state) {
          if (state.isLoading) {
            return const Loader();
          } else if (state.duaModel == null) {
            return const Loader();
          } else {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final data = state.duaModel!.result!.duas![index];
                  String translationText = data.translate?.isNotEmpty == true
                      ? data.translate![0].language ?? ""
                      : '';

                  return _builDuaContainer(
                    context: context,
                    index: index,
                    arabicText: data.content!,
                    translationText: translationText,
                    resource: data.resource.toString(),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 10,
                    color: ColorManager.veryLightGreen,
                  );
                },
                itemCount: state.duaModel!.result!.duas!.length);
          }
        }));
  }

  Widget _builDuaContainer(
      {required BuildContext context,
      required int index,
      required String arabicText,
      required String? translationText,
      required String? resource}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: ColorManager.appBarColor,
                    height: 25,
                    width: 25,
                    child: Center(
                      child: Text("${index + 1}"),
                    ),
                  ),
                  Text(
                    arabicText,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: ColorManager.primary,
                    ),
                  ),
                ],
              ),
              kHeight10,
              Text(
                translationText ?? '',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    color: ColorManager.blackColor),
              ),
              kHeight10,
              Text(
                resource ?? '',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  color: ColorManager.textGrey,
                ),
              ),
              kHeight15,
              Container(
                height: 45,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorManager.veryLightGreen,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/dua_play.png"),
                        ),
                        kWidht10,
                        ImageIcon(
                          AssetImage("assets/icons/dua_tasbih.png"),
                        ),
                        kWidht10,
                        ImageIcon(
                          AssetImage("assets/icons/dua_gpay.png"),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DuaShareView(),
                            ));
                          },
                          child: const ImageIcon(
                            AssetImage("assets/icons/send.png"),
                          ),
                        ),
                        kWidht10,
                        const ImageIcon(
                          AssetImage("assets/icons/dua_tasbih.png"),
                        ),
                        kWidht10,
                        const ImageIcon(
                          AssetImage("assets/icons/dua_gpay.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<dynamic> _buildPopUp(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: 575,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: BorderRadius.circular(30),
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop;
                          },
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.close,
                                size: 16,
                              )),
                        ),
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
                        Row(
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
                              'Display Translation Text',
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
                        Slider(
                          thumbColor: ColorManager.whiteColor,
                          inactiveColor: ColorManager.dotGrey,
                          activeColor: ColorManager.primary,
                          value: 12.0,
                          max: 100,
                          divisions: 5,
                          // label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            // setState(() {
                            //   _currentSliderValue = value;
                            // });
                          },
                        ),
                        kHeight15,
                        Center(
                          child: Text(
                            'بسم الله',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: ColorManager.primary,
                            ),
                            textAlign: TextAlign.center,
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
                              'Location',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Text('Hindi',
                                    style: TextStyle(
                                        color: ColorManager.textGrey)),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_rounded),
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
          },
        );
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
