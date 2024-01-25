import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String icon;
  const SocialLoginButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 9),
              backgroundColor: ColorManager.mainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: ColorManager.whiteColor,
                child: Image.asset(icon, width: 20),
              ),
              kWidth10,
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )),
    );
  }
}
