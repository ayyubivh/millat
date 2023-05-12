import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final Widget icon;
  final TextEditingController? controller;
  const CustomTextField({Key? key,required this.icon, required this.hint, this.controller}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        filled: true,
        fillColor: textFieldColor,
        prefixIcon: widget.icon,
        hintText: widget.hint,
      ),
      textAlignVertical: TextAlignVertical(y: .5),
    );
  }
}
