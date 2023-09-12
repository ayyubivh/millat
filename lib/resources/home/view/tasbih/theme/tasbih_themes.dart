import 'package:flutter/material.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';

final tasbihThemeImage = {
  TasbihThemes.pink: AppAssetsStrings.tasbihBallPink,
  TasbihThemes.orange: AppAssetsStrings.tasbihBallOrange,
  TasbihThemes.purple: AppAssetsStrings.tasbihBallPurple,
  TasbihThemes.green: AppAssetsStrings.tasbihBallGreen,
  TasbihThemes.darkBlue: AppAssetsStrings.tasbihDarkBlue,
  TasbihThemes.lightOrange: AppAssetsStrings.tasbihLightOrange
};
final tasbihThemeSingleBall = {
  TasbihThemes.pink: "assets/images/tasbih_theme_ball_1.png",
  TasbihThemes.orange: "assets/images/tasbih_theme_ball_2.png",
  TasbihThemes.purple: "assets/images/tasbih_theme_ball_3.png",
  TasbihThemes.green: "assets/images/tasbih_theme_ball_4.png",
  TasbihThemes.darkBlue: "assets/images/tasbih_theme_ball_5.png",
  TasbihThemes.lightOrange: "assets/images/tasbih_theme_ball_6.png",
};
final tasbihThemeData = {
  TasbihThemes.pink: ThemeData(
    primaryColor: ColorManager.tasbihThemePinkBgClr,
    primaryColorLight: ColorManager.tasbihGradientClr1,
    primaryColorDark: ColorManager.tasbihGradientClr2,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemePinkClr,
      ),
      bodyMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemePinkClr,
      ),
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: ColorManager.textPink89,
      ),
    ),
  ),
  TasbihThemes.orange: ThemeData(
    primaryColor: ColorManager.tasbihThemeOraneBGColor,
    primaryColorLight: ColorManager.tasbihThemOrangeGradient1,
    primaryColorDark: ColorManager.tasbihThemOrangeGradient2,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemeOrangeClr,
      ),
      bodyMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemeOrangeClr,
      ),
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: ColorManager.tasbihThemeOrangetextClr,
      ),
    ),
  ),
  TasbihThemes.purple: ThemeData(
    primaryColor: ColorManager.tasbihThemePurpleBgClr,
    primaryColorLight: ColorManager.tasbihThemPurpleGradient1,
    primaryColorDark: ColorManager.tasbihThemPurpleGradient2,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemePurpleClr,
      ),
      bodyMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemePurpleClr,
      ),
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: ColorManager.tasbihThemePurpleTextClr,
      ),
    ),
  ),
  TasbihThemes.green: ThemeData(
    primaryColor: ColorManager.tasbihThemeGreenBgClr,
    primaryColorLight: ColorManager.tasbihThemGreenGradient1,
    primaryColorDark: ColorManager.tasbihThemGreenGradient2,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemeGreenTextClor,
      ),
      bodyMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemeGreenTextClor,
      ),
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: ColorManager.tasbihThemeDarkBlueTextClr,
      ),
    ),
  ),
  TasbihThemes.darkBlue: ThemeData(
    primaryColor: ColorManager.tasbihThemeDarkBlueBgClr,
    primaryColorLight: ColorManager.tasbihThemDarkBlueGradient1,
    primaryColorDark: ColorManager.tasbihThemDarkBlueGradient2,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemeDarkBlueTextClr,
      ),
      bodyMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemeDarkBlueTextClr,
      ),
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: ColorManager.tasbihThemeDarkBlueTextClr,
      ),
    ),
  ),
  TasbihThemes.lightOrange: ThemeData(
    primaryColor: ColorManager.tasbihThemelightOrangeBgClr,
    primaryColorLight: ColorManager.tasbihThemlightOrangeGradient1,
    primaryColorDark: ColorManager.tasbihThemlightOrangeGradient2,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemelightOrangeTextClr,
      ),
      bodyMedium: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: ColorManager.tasbihThemelightOrangeTextClr,
      ),
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: ColorManager.tasbihThemelightOrangeTextClr,
      ),
    ),
  ),
};
