import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/size_utility.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DatabaseBloc, DatabaseState>(
      listener: (context, state) {
        if (state.failedMessage != "") {
          showSnackBar(context, state.failedMessage);
        } else if (state.succesMessage != "") {
          context.read<DatabaseBloc>().add(const RemoveTokenEvent());
          showSnackBar(context, state.failedMessage);
          context.pushReplacementNamed(MyAppRouteConstants.signUpRouteName);
        }
      },
      builder: (context, state) {
        if (state.isLoading || state.editIsloading) {
          context.read<DatabaseBloc>().add(FetchAuthUser(context: context));
          return const Loader();
        }
        return Scaffold(
          backgroundColor: ColorManager.whiteColor,
          appBar: AppBar(
            foregroundColor: ColorManager.blackColor,
            leading: BackButton(
              onPressed: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const ChangeHomeTabIndexEvent(newIndex: 0));
              },
            ),
            backgroundColor: ColorManager.whiteColor,
            elevation: 0,
            actions: [
              GestureDetector(
                onTap: () {
                  context.pushNamed(MyAppRouteConstants.editProfileRouteName);
                },
                child: const ImageIcon(
                  AssetImage(AppAssetsStrings.editIcon),
                ),
              ),
              kWidth20,
            ],
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
                                          child: Utilities()
                                              .buildCachedNetworkImage(
                                            imageUrl: userPictureUrl,
                                            width: 80,
                                            height: 80,
                                            boxFit: BoxFit.cover,
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
                  kHeight20,
                  Container(
                    width: SizeUtility(context).width / 1.18,
                    padding:
                        const EdgeInsets.all(12).copyWith(right: 20, left: 20),
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
                    child: Column(
                      children: [
                        Text(
                          state.authUserModel?.result?.user?.username ?? "",
                          style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        kHeight10,
                        Text(
                          "Works at ${state.authUserModel?.result?.user?.institution ?? "Empty"}",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.3,
                              color: ColorManager.blue7A),
                          textAlign: TextAlign.center,
                        ),
                        kHeight10,
                        const Text(
                          "Connecting Muslims worldwide. Embrace faith, inspire unity, and explore the beauty of Islam on our social app.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  kHeight15,
                  GestureDetector(
                    onTap: () {
                      context
                          .pushNamed(MyAppRouteConstants.inviteFreindRouteName);
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
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Shop",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        kHeight10,
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            final images = [
                              AppAssetsStrings.termsAndConditions,
                              AppAssetsStrings.support,
                            ];
                            final texts = [
                              Appstrings.orderHistory,
                              Appstrings.address,
                            ];
                            final navigations = [
                              () {
                                context.pushNamed(
                                    MyAppRouteConstants.orderHistoryRouteName);
                              },
                              () {
                                context.pushNamed(
                                    MyAppRouteConstants.addressBookRouteName);
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
                      ],
                    ),
                  ),
                  kHeight20,
                  Container(
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
                        horizontal: 20, vertical: 20),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final images = [
                          AppAssetsStrings.termsAndConditions,
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
                            context.pushNamed(MyAppRouteConstants
                                .termsAndConditionsRouteName);
                          },
                          () {
                            context.pushNamed(
                                MyAppRouteConstants.supportHelpRouteName);
                          },
                          () {
                            context.pushNamed(
                                MyAppRouteConstants.privacyPolicyRouteName);
                          },
                          () {
                            context.pushNamed(
                                MyAppRouteConstants.aboutUsRouteName);
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
                      logoutPopUp(
                        context,
                        Appstrings.logout,
                        () {
                          context
                              .read<DatabaseBloc>()
                              .add(const RemoveTokenEvent());
                          context
                              .read<HomeBloc>()
                              .add(const ChangeHomeTabIndexEvent(newIndex: 0));
                          // await GoogleSignInService.logout();
                          context.pop();
                          context.pushReplacementNamed(
                              MyAppRouteConstants.signUpRouteName);
                        },
                      );
                    },
                    child: logAndDelWidget(
                        context: context,
                        image: AppAssetsStrings.logout,
                        text: Appstrings.logout.replaceAll("?", "")),
                  ),
                  kHeight10,
                  GestureDetector(
                    onTap: () {
                      logoutPopUp(
                        context,
                        "Delete?",
                        () {
                          context
                              .read<DatabaseBloc>()
                              .add(DeleteAccount(context: context));
                          context.pop();
                        },
                      );
                    },
                    child: logAndDelWidget(
                        context: context,
                        image: AppAssetsStrings.delete,
                        text: Appstrings.deleteAcccount),
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
                      _socialIconWidget(
                        () => _launchUrl(Appstrings.twitterUrl),
                        AppAssetsStrings.twitterIcon,
                      ),
                      kWidth10,
                      _socialIconWidget(
                        () => _launchUrl(Appstrings.instagramUrl),
                        AppAssetsStrings.instagramIcon,
                      ),
                      kWidth10,
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

  Widget _socialIconWidget(VoidCallback onTap, String name) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        name,
        width: 24,
        height: 20,
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launch(_url.toString())) {
      throw Exception('Could not launch $_url');
    }
  }

  Widget logAndDelWidget(
      {required BuildContext context,
      required String image,
      required String text}) {
    return Container(
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
            image,
            height: 23,
            width: 24,
            color: ColorManager.redColor,
          ),
          kWidth8,
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: ColorManager.redColor,
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

Future<dynamic> logoutPopUp(
    BuildContext context, String text, VoidCallback ontap) {
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Are you sure want to $text",
                  style: const TextStyle(
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
                        context.pop();
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
                      onTap: ontap,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(12)),
                          color: ColorManager.primary,
                        ),
                        height: 62,
                        child: Center(
                          child: Text(
                            text,
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
