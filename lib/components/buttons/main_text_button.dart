// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MainTextButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color? textColor;
  final TextStyle textStyle;
  const MainTextButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.textColor = Colors.black,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(title, style: textStyle),
    );
  }
}
