import 'package:flutter/material.dart';

import '../../../../utils/color_manager.dart';

class TravelSearchTextField extends StatelessWidget {
  final String hint;
  final Widget icon;
  final TextEditingController? controller;
  final String? Function(String? val)? validator;
  final Function(String)? onChanged;
  const TravelSearchTextField({
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
      cursorColor: ColorManager.primary,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: ColorManager.lightGrey,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: ColorManager.lightGrey,
            )),
        focusedErrorBorder: InputBorder.none,
        iconColor: ColorManager.blackColor,
        prefixIcon: icon,
        hintText: hint,
      ),
      onChanged: onChanged,
      textAlignVertical: const TextAlignVertical(y: .5),
    );
  }
}
