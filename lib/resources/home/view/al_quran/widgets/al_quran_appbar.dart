import 'package:flutter/material.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import 'al_quran_settings.dart';

AppBar alQuranAppbar({
  required BuildContext context,
  required VoidCallback onTap,
  required String text,
  required Color color,
  Color? iconColor,
}) {
  return AppBar(
    backgroundColor: color,
    foregroundColor: ColorManager.blackColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      text,
      style: TextStyle(
        color: ColorManager.primary,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      InkWell(
        onTap: onTap,
        child: ImageIcon(
          const AssetImage("assets/icons/bookmark.png"),
          color: ColorManager.blackColor,
        ),
      ),
      kWidth15,
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AlQuranSettings(),
          ));
        },
        child: ImageIcon(
          const AssetImage("assets/icons/settings.png"),
          color: iconColor,
        ),
      ),
      kWidth15,
      ImageIcon(
        const AssetImage("assets/icons/search.png"),
        color: ColorManager.blackColor,
      ),
      kWidth15,
      kWidth15,
    ],
  );
}
