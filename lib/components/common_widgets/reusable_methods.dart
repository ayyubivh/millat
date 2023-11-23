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

// // book mark veres Tile
// Widget bookMarkVersesTile({
//   required int index,
//   required VoidCallback onTap,
//   required String text,
//   required bool isSelected,
//   required String verseText,
// }) {
//   return Container(
//     color: ColorManager.whiteColor,
//     margin: const EdgeInsets.all(2),
//     child: ListTile(
//       onTap: onTap,
//       leading: Stack(
//         children: [
//           InkWell(
//             onTap: () {},
//             child: ImageIcon(
//               const AssetImage("assets/icons/folder_green.png"),
//               color: isSelected ? ColorManager.redColor : ColorManager.primary,
//             ),
//           ),
//           Positioned(
//             top: 5,
//             left: 4,
//             child: Icon(
//               isSelected ? Icons.remove : Icons.add,
//               color: ColorManager.whiteColor,
//               size: 16,
//             ),
//           )
//         ],
//       ),
//       title: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
//       subtitle: Text(isSelected ? verseText : ""),
//       trailing: Icon(
//         Icons.navigate_next,
//         size: 30,
//         color: ColorManager.blackColor,
//       ),
//     ),
//   );
// }
