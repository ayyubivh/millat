import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import '../../../../../utils/assets_paths.dart';

class HaditTextField extends StatelessWidget {
  final String hintText;
  const HaditTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.haditTextfieldGreyClr,
      // controller: _searchController,
      style: TextStyle(
        color: ColorManager.haditTextfieldGreyClr,
      ),
      onChanged: (value) {},
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ImageIcon(
            const AssetImage(AppAssetsStrings.searchIcon),
            size: 20,
            color: ColorManager.haditTextfieldGreyClr,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorManager.haditTextfieldGreyClr,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.haditTextfieldGreyClr,
            ),
            borderRadius: BorderRadius.circular(6)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: ColorManager.haditTextfieldGreyClr,
          ),
        ),
      ),
      onFieldSubmitted: (value) {},
    );
  }
}
