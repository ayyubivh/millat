import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/profile/views/edit_profile_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/size_utility.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<DatabaseBloc>(context)
      //     .add(FetchAuthUser(context: context));
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
                  color: ColorManager.blackColor),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  logoutPopUp(context);
                },
                child: Icon(
                  Icons.logout,
                  color: ColorManager.blackColor,
                ),
              ),
              kWidth15,
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
              children: [
                SizedBox(
                  height: 220,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            AppAssetsStrings.profileCoverImg,
                            fit: BoxFit.cover,
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
                                final userPictureUrl =
                                    state.authUserModel?.result?.user?.picture;
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
                Container(
                  height: 42,
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeUtility(context).width / 6),
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
                kHeight15,
                Container(
                  height: 60,
                  width: SizeUtility(context).width,
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
                        children: [
                          Text("Invite Your Friends"),
                        ],
                      )
                    ],
                  ),
                ),
                // Container(
                //   height: 50,
                //   width: SizeUtility(context).width,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     border: Border.all(
                //       color: ColorManager.blue5,
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Icon(
                //         Icons.thumb_up_off_alt,
                //         color: ColorManager.blue7A,
                //       ),
                //       kWidth8,
                //       Text(
                //         '2.3 Likes',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w500,
                //           color: ColorManager.blue7A,
                //         ),
                //       )
                //     ],
                //   ),
                //
                // ),

                // Align(
                //     alignment: Alignment.topLeft,
                //     child: _activityTexts(Appstrings.activity)),
                // _activityTile(
                //   title: Appstrings.quranLastRead,
                //   subTitle: Appstrings.alFatiha,
                // ),
                // const Divider(thickness: 1),
                // _activityTile(
                //   title: Appstrings.tasbihLastRead,
                //   subTitle: Appstrings.subhanallah,
                // )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _activityTile({
    required String title,
    required String subTitle,
  }) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: ColorManager.black4F,
        ),
      ),
      subtitle: _activityTexts(subTitle),
    );
  }

  Widget _activityTexts(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: ColorManager.blackColor,
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
                    child: Container(
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12)),
                        color: ColorManager.whiteColor,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(12)),
                        color: ColorManager.primary,
                      ),
                      height: 62,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            context
                                .read<DatabaseBloc>()
                                .add(const RemoveTokenEvent());
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const SignUpView(),
                            ));
                          },
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
