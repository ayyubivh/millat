import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/profile/views/edit_profile_view.dart';
import 'package:millat/resources/profile/views/manage_address.dart';
import 'package:millat/resources/profile/views/order_history_view.dart';
import 'package:millat/resources/shop/view/wishlist/wishlist_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../utils/loader.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context)
          .add(FetchAuthUser(context: context));
    });
    return BlocBuilder<DatabaseBloc, DatabaseState>(builder: (context, state) {
      if (state.isLoading || state.editIsloading) {
        context.read<DatabaseBloc>().add(FetchAuthUser(context: context));
        return const Loader();
      }
      return Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(30)),
                  child: SizedBox(
                    height: 280,
                    width: SizeUtility(context).width,
                    child: Image.asset(
                      AppAssetsStrings.profileCoverImg,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      kHeight20,
                      Align(
                          alignment: Alignment.topLeft,
                          child: BackButton(color: ColorManager.whiteColor)),
                      CircleAvatar(
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
                      kHeight16,
                      BlocBuilder<DatabaseBloc, DatabaseState>(
                        builder: (context, state) {
                          final data = state.authUserModel?.result?.user;
                          return Column(
                            children: [
                              Text(
                                data?.name ?? "",
                                style: TextStyle(
                                  color: ColorManager.whiteColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                data?.email ?? "",
                                style: TextStyle(
                                    color: ColorManager.textGrey99,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                kHeight30,
                _buildTile(
                  text: Appstrings.personalInfo,
                  icon: AppAssetsStrings.peronalInfo,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfileView(),
                    ));
                  },
                ),
                kHeight20,
                _buildTile(
                  text: Appstrings.addressBook,
                  icon: AppAssetsStrings.addressBookIcon,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ManageAddress(),
                    ));
                  },
                ),
                kHeight20,
                _buildTile(
                  text: Appstrings.orderHistory,
                  icon: AppAssetsStrings.orderHistory,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OrderHistoryView(),
                    ));
                  },
                ),
                kHeight20,
                _buildTile(
                  text: Appstrings.wishList,
                  icon: AppAssetsStrings.wishList,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WishListView(),
                    ));
                  },
                )
              ],
            ),
          ],
        ),
      );
    });
  }

  Widget _buildTile(
      {required VoidCallback onTap,
      required String text,
      required String icon}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: ColorManager.appBarColor,
        child: ImageIcon(
          AssetImage(icon),
          color: ColorManager.blackColor,
        ),
      ),
      trailing: InkWell(
        onTap: onTap,
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
