import 'package:flutter/material.dart';
import '../../utils/color_manager.dart';

// Loader

// Gradient Container
Widget gradientContainer(
    {required Widget child,
    required double width,
    required double height,
    required EdgeInsetsGeometry padding,
    double radius = 12}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      gradient: RadialGradient(
        center: Alignment.topLeft,
        radius: 5,
        colors: [
          lightGreenColor,
          ColorManager.darkGreenColor,
          dark2GreenColor,
        ],
      ),
    ),
    width: width,
    height: height,
    padding: padding,
    child: child,
  );
}

// book mark veres Tile
Widget bookMarkVersesTile(
    {required int index,
    required VoidCallback onTap,
    required String text,
    required bool isSelected}) {
  return Container(
    color: isSelected == true ? ColorManager.primary.withOpacity(0.3) : null,
    margin: const EdgeInsets.all(2),
    child: ListTile(
      onTap: onTap,
      leading: ImageIcon(
        const AssetImage("assets/images/folder_red.png"),
        color: ColorManager.redColor,
      ),
      title: Text(text),
      trailing: Icon(
        Icons.navigate_next,
        size: 30,
        color: ColorManager.blackColor,
      ),
    ),
  );
}
