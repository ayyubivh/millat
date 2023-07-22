import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#00A05B");
  static Color mainColor = HexColor.fromHex("#44BB88");
  static Color darkGreenColor = HexColor.fromHex("#05654B");
  static Color darkGreenColor2 = HexColor.fromHex("#00C891");
  static Color midGreenColor = HexColor.fromHex("#00C891");
  static Color veryLightGreen = HexColor.fromHex("#F7F7F7");
  static Color greenColor1 = HexColor.fromHex("#4DC591");
  static Color redColor = HexColor.fromHex("#FF3B30");
  static Color blue5 = HexColor.fromHex("#3581EA");
  static Color dotGrey = HexColor.fromHex("#E1E1E1");
  static Color lightBlackColor = HexColor.fromHex("#888888");
  static Color blackColor = HexColor.fromHex("#1A1A1A");
  static Color whiteColor = HexColor.fromHex("#FFFFFF");
  static Color appBarColor = HexColor.fromHex("#F7F7F7");
  static Color textGrey = HexColor.fromHex("#8789A3");
  static Color scaffolBgColor = HexColor.fromHex("#F7F7F7");
  static Color greyD1 = HexColor.fromHex("#D1D1D1");
  static Color gradientGreenBC = HexColor.fromHex("#5FD3A1");
  static Color textGrey2 = HexColor.fromHex("#A0A0A0");
  static Color greyD9 = HexColor.fromHex("D9D9D9");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

const Color darkGreenColor = Color(0xFF188D5B);
const Color dark2GreenColor = Color.fromRGBO(5, 126, 93, 1);

const Color textFieldColor = Color.fromRGBO(244, 244, 244, 1);
const Color iconsColor = Color.fromRGBO(187, 187, 187, 1);
const Color blueColor = Color.fromRGBO(20, 178, 227, 1);
const Color black132 = Color.fromRGBO(132, 132, 132, 1);
const Color black133 = Color.fromRGBO(133, 133, 133, 1);
const Color black104 = Color.fromRGBO(104, 104, 104, 1);
const Color black165 = Color.fromRGBO(165, 165, 165, 1);
const Color black166 = Color.fromRGBO(166, 166, 166, 1);
const Color black153 = Color.fromRGBO(153, 126, 126, 0.3);
const Color black83 = Color.fromRGBO(83, 83, 83, 1);
const Color black196 = Color.fromRGBO(196, 196, 196, 1);
const Color black217 = Color.fromRGBO(217, 217, 217, 1);
const Color black137 = Color.fromRGBO(137, 137, 137, 1);
const Color black142 = Color.fromRGBO(142, 142, 142, 1);

const Color black131 = Color.fromRGBO(131, 131, 131, 1);
const Color black16 = Color.fromRGBO(16, 24, 40, 1);
const Color black102 = Color.fromRGBO(102, 112, 133, 1);
const Color black60 = Color.fromRGBO(60, 60, 67, 1);
const Color black122 = Color.fromRGBO(122, 144, 135, 1);
const Color black247 = Color(0xFFF7F7F7);
const Color black189 = Color.fromRGBO(189, 189, 189, 1);
const Color black208 = Color.fromRGBO(208, 208, 208, 1);
const Color black195 = Color.fromRGBO(195, 195, 195, 1);
const Color black198 = Color.fromRGBO(198, 198, 198, 1);
const Color black130 = Color.fromRGBO(130, 130, 130, 1);
const Color black169 = Color.fromRGBO(169, 169, 169, 1);
const Color dividerColor = Color.fromRGBO(222, 222, 222, 1);
const Color lightGreenColor = Color.fromRGBO(0, 200, 145, 1);
const Color lightGreenGradient = Color(0xFF188D5B);
const Color borderColor = Color.fromRGBO(198, 198, 198, 1);
const Color blue126 = Color.fromRGBO(126, 159, 172, 1);
const Color orange255 = Color.fromRGBO(255, 162, 53, 1);

const Color textBlack = Color(0xFF1A1A1A);
const Color lightGreen1 = Color(0xFFDAFFEF);
const Color scaffoldBgColor = Color(0xFFF7F7F7);
