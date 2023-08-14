import 'package:flutter/material.dart';

import '../../../utils/color_manager.dart';

class ProfieEditTextFormField extends StatelessWidget {
  final String hint;
  final Widget icon;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String? Function(String? val)? validator;

  final Function(String)? onChanged;
  const ProfieEditTextFormField(
      {super.key,
      required this.hint,
      required this.icon,
      this.controller,
      this.validator,
      this.onChanged,
      this.textInputType = TextInputType.none});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: ColorManager.greyD1,
          ),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: ColorManager.greyD1,
          ),
        ),
        focusedErrorBorder: InputBorder.none,
        filled: true,
        fillColor: textFieldColor,
        suffixIcon: icon,
        hintText: hint,
      ),
      onChanged: onChanged,
      textAlignVertical: const TextAlignVertical(y: .5),
    );
  }
}
