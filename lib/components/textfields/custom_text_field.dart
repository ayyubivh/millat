import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Widget icon;
  final TextEditingController? controller;
  final String? Function(String? val)? validator;
  final Function(String)? onChanged;
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.hint,
    this.controller,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
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
        prefixIcon: icon,
        hintText: hint,
      ),
      onChanged: onChanged,
      textAlignVertical: const TextAlignVertical(y: .5),
    );
  }
}
