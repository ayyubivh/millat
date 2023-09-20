import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/view/widgets/about_us_view.dart';
import 'package:millat/resources/home/view/widgets/privacy_policy_view.dart';
import 'package:millat/resources/home/view/widgets/support_help_view.dart';
import 'package:millat/resources/home/view/widgets/terms_conditions_view.dart';
import 'package:millat/resources/profile/views/edit_profile_view.dart';
import 'package:millat/resources/profile/views/invite_friend_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/size_utility.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../authentication/class/google_signin.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context)
          .add(FetchAuthUser(context: context));
    });
    return BlocBuilder<DatabaseBloc, DatabaseState>(
      builder: (context, state) {
        if (state.isLoading || state.editIsloading) {
          context.read<DatabaseBloc>().add(FetchAuthUser(context: context));
          return const Loader();
        }
        return Scaffold(
          backgroundColor: ColorManager.whiteColor,
          appBar: AppBar(
            backgroundColor: ColorManager.whiteColor,
            elevation: 0,
            centerTitle: true,
            title: Text(
              Appstrings.profile,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ColorManager.blackColor,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 220,
                    child: Stack(
                      children: [
                        BlocBuilder<DatabaseBloc, DatabaseState>(
                          builder: (context, state) => SizedBox(
                            width: double.infinity,
                            height: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                state.coverImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
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
                              child: BlocBuilder<DatabaseBloc, DatabaseState>(
                                builder: (context, state) {
                                  final userPictureUrl = state
                                      .authUserModel?.result?.user?.picture;
                                  return userPictureUrl == null
                                      ? Icon(
                                          Icons.person_2_outlined,
                                          size: 60,
                                          color: ColorManager.black4A,
                                        )
                                      : ClipOval(
                                          child: Image.network(
                                            userPictureUrl,
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: BlocBuilder<DatabaseBloc, DatabaseState>(
                      builder: (context, state) =>
                          Text(state.authUserModel?.result?.user?.name ?? "",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                    ),
                  ),
                  kHeight15,
                  Container(
                    height: 30,
                    width: 155,
                    margin: const EdgeInsets.symmetric(horizontal: 120),
                    decoration: BoxDecoration(
                      color: ColorManager.lightPrimaryGreenClr,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.verified,
                          color: ColorManager.primary,
                        ),
                        Text(
                          Appstrings.verifiedAccount,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                  kHeight20,
                  const Text(
                    "Connecting Muslims worldwide. Embrace faith, inspire unity, and explore the beauty of Islam on our social app.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  kHeight10,
                  BlocBuilder<DatabaseBloc, DatabaseState>(
                    builder: (context, state) => Text(
                      "Works at ${state.authUserModel?.result?.user?.institution ?? "Empty"}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                          color: ColorManager.blue7A),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  kHeight15,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const EditProfileView(),
                      ));
                    },
                    child: Container(
                      height: 42,
                      width: SizeUtility(context).width / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        color: ColorManager.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: ColorManager.grey83.withOpacity(0.3),
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssetsStrings.editUserProfile,
                            width: 19,
                            height: 19,
                          ),
                          kWidth8,
                          Text(
                            "Edit profile",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.blackColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  kHeight15,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const InviteFriendView(),
                      ));
                    },
                    child: Container(
                      height: 60,
                      width: SizeUtility(context).width / 1.18,
                      decoration: BoxDecoration(
                        color: ColorManager.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: ColorManager.grey83.withOpacity(0.3),
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            AppAssetsStrings.inviteFriend,
                            height: 23,
                            width: 24,
                          ),
                          kWidth8,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                Appstrings.inviteYourFriend,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              kHeight5,
                              Text(
                                Appstrings.get100Coins,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.textGrey88),
                              )
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.navigate_next_outlined,
                            size: 28,
                            color: ColorManager.black4F,
                          )
                        ],
                      ),
                    ),
                  ),
                  kHeight20,
                  Container(
                    height: 215,
                    width: SizeUtility(context).width / 1.18,
                    decoration: BoxDecoration(
                      color: ColorManager.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.grey83.withOpacity(0.3),
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final images = [
                          AppAssetsStrings.termsAndCondtions,
                          AppAssetsStrings.support,
                          AppAssetsStrings.privacyPolicy,
                          AppAssetsStrings.aboutUs,
                        ];
                        final texts = [
                          Appstrings.temrsandCondtion,
                          Appstrings.support,
                          Appstrings.privacyPolicy,
                          Appstrings.aboutUs,
                        ];
                        final navigations = [
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TermsConditionsView(),
                            ));
                          },
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SupportHelpView(),
                            ));
                          },
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PrivacyPolicyView(),
                            ));
                          },
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AboutUsView(),
                            ));
                          },
                        ];
                        return _buildItemRow(
                          image: images[index],
                          text: texts[index],
                          onTap: navigations[index],
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                    ),
                  ),
                  kHeight20,
                  GestureDetector(
                    onTap: () {
                      logoutPopUp(context);
                    },
                    child: Container(
                      height: 60,
                      width: SizeUtility(context).width / 1.18,
                      decoration: BoxDecoration(
                        color: ColorManager.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: ColorManager.grey83.withOpacity(0.3),
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssetsStrings.logout,
                            height: 23,
                            width: 24,
                          ),
                          kWidth8,
                          Text(
                            Appstrings.logout.replaceAll("?", ""),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.redColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  kHeight20,
                  Text(
                    Appstrings.profileFooterText,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.black4F,
                    ),
                  ),
                  kHeight16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssetsStrings.twitterIcon,
                        width: 24,
                        height: 20,
                      ),
                      kWidht10,
                      Image.asset(
                        AppAssetsStrings.instagramIcon,
                        width: 24,
                        height: 20,
                      ),
                    ],
                  ),
                  kHeight80,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildItemRow(
      {required String image,
      required String text,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            ImageIcon(
              AssetImage(image),
              color: ColorManager.black4F,
              size: 16,
            ),
            kWidth8,
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorManager.black4F,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.navigate_next_outlined,
              color: ColorManager.black4F,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}

Future<dynamic> logoutPopUp(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: ColorManager.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  Appstrings.logoutdialoge,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              kHeight10,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 62,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12)),
                          color: ColorManager.whiteColor,
                        ),
                        child: Center(
                          child: Text(
                            Appstrings.cancel,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: ColorManager.redColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        context
                            .read<DatabaseBloc>()
                            .add(const RemoveTokenEvent());
                        context
                            .read<HomeBloc>()
                            .add(const ChangeHomeTabIndexEvent(newIndex: 0));
                        // await GoogleSignInService.logout();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(12)),
                          color: ColorManager.primary,
                        ),
                        height: 62,
                        child: Center(
                          child: Text(
                            Appstrings.logout,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
