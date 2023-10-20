import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import 'al_quran_settings.dart';

AppBar alQuranAppbar({
  required BuildContext context,
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
        onTap: () {
          context.goNamed(MyAppRouteConstants.quranSettingsRouteName);
        },
        child: ImageIcon(
          const AssetImage("assets/icons/settings.png"),
          color: iconColor,
        ),
      ),
      kWidth15,
      kWidth15,
    ],
  );
}
