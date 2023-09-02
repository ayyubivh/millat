import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? textSize;
  const MainButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.textSize = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize:
              MaterialStateProperty.all(Size(SizeUtility(context).width, 58)),
          backgroundColor: MaterialStateProperty.all(ColorManager.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
        child: Text(title,
            style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            )));
  }
}
