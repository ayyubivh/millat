import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class HomeDrawyerWidget extends StatelessWidget {
  const HomeDrawyerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              children: [
                SizedBox(
                  height: 170,
                  child: Image.asset(AppAssetsStrings.profileCoverImg),
                ),
                Positioned(
                  top: 125,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: ColorManager.whiteColor,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: ColorManager.dotGrey,
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 60,
                        color: ColorManager.black4A,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            context.read<DatabaseBloc>().state.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight50,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                _buildItemRow(
                    text: Appstrings.travel, image: AppAssetsStrings.travel),
                _buildItemRow(
                    text: Appstrings.temrsandCondtion,
                    image: AppAssetsStrings.termsAndCondtions),
                _buildItemRow(
                  text: Appstrings.support,
                  image: AppAssetsStrings.support,
                ),
                _buildItemRow(
                  text: Appstrings.privacyPolicy,
                  image: AppAssetsStrings.privacyPolicy,
                ),
                _buildItemRow(
                  text: Appstrings.aboutUs,
                  image: AppAssetsStrings.aboutUs,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      color: ColorManager.redColor,
                    ),
                    kWidth5,
                    Text(
                      Appstrings.logout.replaceAll("?", ""),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.redColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemRow({required String image, required String text}) {
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(
              AssetImage(image),
            ),
            kWidth5,
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        kHeight8,
        const Divider(thickness: 1),
        kHeight8,
      ],
    );
  }
}
