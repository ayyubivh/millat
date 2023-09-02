import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/view/widgets/about_us_view.dart';
import 'package:millat/resources/home/view/widgets/privacy_policy_view.dart';
import 'package:millat/resources/home/view/widgets/support_help_view.dart';
import 'package:millat/resources/home/view/widgets/terms_conditions_view.dart';
import 'package:millat/resources/profile/views/user_profile_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class HomeDrawyerWidget extends StatelessWidget {
  const HomeDrawyerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context)
          .add(FetchAuthUser(context: context));
    });
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
                    child: BlocBuilder<DatabaseBloc, DatabaseState>(
                        builder: (context, state) =>
                            state.authUserModel?.result?.user?.picture == null
                                ? CircleAvatar(
                                    radius: 40,
                                    backgroundColor: ColorManager.dotGrey,
                                    child: Icon(
                                      Icons.person_2_outlined,
                                      size: 60,
                                      color: ColorManager.black4A,
                                    ),
                                  )
                                : ClipOval(
                                    child: Image.network(state
                                        .authUserModel!.result!.user!.picture!),
                                  )),
                  ),
                )
              ],
            ),
          ),
          BlocBuilder<DatabaseBloc, DatabaseState>(
            builder: (context, state) => Text(
              state.authUserModel?.result?.user?.username ?? "",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kHeight50,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // _buildItemRow(
                //     text: Appstrings.travel, image: AppAssetsStrings.travel),
                _buildItemRow(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TermsConditionsView(),
                      ));
                    },
                    text: Appstrings.temrsandCondtion,
                    image: AppAssetsStrings.termsAndCondtions),
                _buildItemRow(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SupportHelpView(),
                    ));
                  },
                  text: Appstrings.support,
                  image: AppAssetsStrings.support,
                ),
                _buildItemRow(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyView(),
                    ));
                  },
                  text: Appstrings.privacyPolicy,
                  image: AppAssetsStrings.privacyPolicy,
                ),
                _buildItemRow(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AboutUsView(),
                    ));
                  },
                  text: Appstrings.aboutUs,
                  image: AppAssetsStrings.aboutUs,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        logoutPopUp(context);
                      },
                      child: Icon(
                        Icons.logout_outlined,
                        color: ColorManager.redColor,
                      ),
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

  Widget _buildItemRow(
      {required String image,
      required String text,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
