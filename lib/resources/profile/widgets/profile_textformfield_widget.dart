import 'package:flutter/material.dart';

import '../../../utils/color_manager.dart';

class ProfieEditTextFormField extends StatelessWidget {
  final String hint;
  final Widget icon;
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String? Function(String? val)? validator;
  final Function()? onTap;

  final Function(String)? onChanged;
  const ProfieEditTextFormField(
      {super.key,
      required this.hint,
      required this.icon,
      this.controller,
      this.validator,
      this.onTap,
      this.onChanged,
      this.textInputType = TextInputType.none,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      maxLength: maxLength,
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: ColorManager.redColor,
          ),
        ),
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
        suffixIcon: IconTheme(
          data: const IconThemeData(size: 10),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: icon,
          ),
        ),
        hintText: hint,
        errorText: validator != null ? validator!(controller?.text) : null,
      ),
      onChanged: onChanged,
      textAlignVertical: const TextAlignVertical(y: .5),
    );
  }
}
