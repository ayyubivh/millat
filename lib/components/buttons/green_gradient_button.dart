import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';

class LighGreenGradienButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const LighGreenGradienButton(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFBCFEB1),
              Color(0xFF00A05B),
            ],
            stops: [0.0, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: ColorManager.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
