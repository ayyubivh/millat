import 'package:flutter/material.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/utils/color_manager.dart';

final compassThemeData = {
  CompassTheme.one: ThemeData(
    primaryColor: ColorManager.onePrimaryColor,
  ),
  CompassTheme.two: ThemeData(
    primaryColor: ColorManager.twoPrimaryColor,
  ),
  CompassTheme.three: ThemeData(
    primaryColor: ColorManager.threePrimaryColor,
  ),
  CompassTheme.four: ThemeData(
    primaryColor: ColorManager.fourPrimaryColor,
  ),
  CompassTheme.five: ThemeData(
    primaryColor: ColorManager.fivePrimaryColor,
  ),
  CompassTheme.six: ThemeData(
    primaryColor: ColorManager.sixPrimaryColor,
  ),
};
final compassImages = {
  CompassTheme.one: "assets/images/compass_1.png",
  CompassTheme.two: "assets/images/compass_2.png",
  CompassTheme.three: "assets/images/compass_3.png",
  CompassTheme.four: "assets/images/compass_4.png",
  CompassTheme.five: "assets/images/compass_5.png",
  CompassTheme.six: "assets/images/compass_6.png",
};
