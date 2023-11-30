import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final Color? backGroundColor;
  const CustomOutlinedButton(
      {super.key,
      required this.child,
      required this.onTap,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: backGroundColor,
            side: BorderSide(
              color: ColorManager.primary,
            )),
        onPressed: onTap,
        child: child);
  }
}
