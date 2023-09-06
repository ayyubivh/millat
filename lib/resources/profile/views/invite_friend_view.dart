import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

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
          ImageIcon(
            const AssetImage(
              AppAssetsStrings.share,
            ),
            size: 22,
            color: ColorManager.blackColor,
          ),
          kWidht10,
          Icon(
            Icons.close,
            size: 24,
            color: ColorManager.blackColor,
          ),
          kWidth20,
        ],
      ),
      body: Padding(
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
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "UserName",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      "+91 984465383",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Container(
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
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
