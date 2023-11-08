import 'package:flutter/material.dart';

import '../../../../utils/color_manager.dart';

class TravelTextformField extends StatelessWidget {
  final String? hint;
  final Widget? icon;
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String? Function(String? val)? validator;
  final Function()? onTap;

  final Function(String)? onChanged;

  const TravelTextformField(
      {super.key,
      this.hint,
      required this.icon,
      this.maxLength,
      this.controller,
      required this.textInputType,
      this.validator,
      this.onTap,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.primary,
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
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: ColorManager.greyD1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: ColorManager.greyD1,
          ),
        ),
        focusedErrorBorder: InputBorder.none,
        filled: true,
        fillColor: ColorManager.whiteColor,
        prefixIcon: IconTheme(
          data: const IconThemeData(size: 10),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: icon ?? const SizedBox(),
          ),
        ),
        hintStyle: TextStyle(
          color: ColorManager.lightGrey85,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        hintText: hint,
      ),
      onChanged: onChanged,
      textAlignVertical: const TextAlignVertical(y: .5),
    );
  }
}
