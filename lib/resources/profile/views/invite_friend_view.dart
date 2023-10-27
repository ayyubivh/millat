import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';

class InviteFriendView extends StatelessWidget {
  const InviteFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        actions: [
          GestureDetector(
            onTap: () {
              Share.share(
                "Salam ! I'm your true friend It's ${context.read<NamazTimingBloc>().state.currentNamaz?['name'] ?? ""} time. Don't miss your fazar salah. It will help you to do better in duniya & akhirah.To always be on time for salah install our app (link) This app is 100% add free. Yay! Install Now",
              );
            },
            child: ImageIcon(
              const AssetImage(
                AppAssetsStrings.share,
              ),
              size: 22,
              color: ColorManager.blackColor,
            ),
          ),
          kWidth10,
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(
              Icons.close,
              size: 24,
              color: ColorManager.blackColor,
            ),
          ),
          kWidth20,
        ],
      ),
      body: BlocProvider(
        create: (context) => DatabaseBloc()..add(const FetchContactEvent()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.primary,
                  radius: 24,
                  child: Center(
                    child: Image.asset(
                      AppAssetsStrings.addFriend,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                kHeight15,
                const Text(
                  Appstrings.referFriendEarn,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight20,
                Text(
                  Appstrings.toName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.black4F,
                  ),
                ),
                kHeight16,
                Container(
                  height: 50,
                  width: SizeUtility(context).width,
                  color: ColorManager.veryLightGreen,
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    Appstrings.contact,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.black4F,
                    ),
                  ),
                ),
                BlocBuilder<DatabaseBloc, DatabaseState>(
                  builder: (context, state) {
                    return state.isLoading == true || state.contacts == null
                        ? const Loader()
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.contacts!.length,
                            itemBuilder: (context, index) {
                              if (state.contacts!.isEmpty) {
                                return const Text('No contacts available');
                              }

                              final contact = state.contacts![index];

                              return ListTile(
                                title: Text(
                                  contact.givenName ?? "",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: Text(
                                  contact.phones?.isNotEmpty == true
                                      ? contact.phones![0].value ?? ""
                                      : "No phone number",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: GestureDetector(
                                  onTap: () async {
                                    final Uri smsLaunchUri = Uri(
                                      scheme: 'sms',
                                      path: contact.phones![0].value,
                                      queryParameters: <String, String>{
                                        'body': Uri.encodeComponent(
                                            'Example Subject & Symbols are allowed!'),
                                      },
                                    );
                                    if (await canLaunchUrl(smsLaunchUri)) {
                                      await launchUrl(smsLaunchUri);
                                    } else {
                                      print("error on uri launcher");
                                    }
                                  },
                                  child: Container(
                                    height: 38,
                                    width: 112,
                                    decoration: BoxDecoration(
                                      color: ColorManager.primary,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        Appstrings.get100Coins,
                                        style: TextStyle(
                                          color: ColorManager.whiteColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
