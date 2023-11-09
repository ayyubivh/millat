import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../routes/app_router_constants.dart';
import '../../../utils/loader.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatabaseBloc, DatabaseState>(builder: (context, state) {
      if (state.isLoading || state.editIsloading) {
        context.read<DatabaseBloc>().add(FetchAuthUser(context: context));
        return const Loader();
      }
      return BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) => state.isLoading
            ? const Loader()
            : Scaffold(
                body: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(30)),
                          child: BlocBuilder<DatabaseBloc, DatabaseState>(
                            builder: (context, state) => SizedBox(
                              height: 280,
                              width: SizeUtility(context).width,
                              child: Image.asset(
                                state.coverImage,
                                fit: BoxFit.fill,
                              ),
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
                                  child: BackButton(
                                      color: ColorManager.whiteColor)),
                              CircleAvatar(
                                radius: 45,
                                backgroundColor: ColorManager.whiteColor,
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: ColorManager.dotGrey,
                                  child:
                                      BlocBuilder<DatabaseBloc, DatabaseState>(
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
                              kHeight16,
                              BlocBuilder<DatabaseBloc, DatabaseState>(
                                builder: (context, state) {
                                  final data =
                                      state.authUserModel?.result?.user;
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
                          icon: AppAssetsStrings.personalInfo,
                          onTap: () {
                            context.pushNamed(
                                MyAppRouteConstants.editProfileRouteName);
                          },
                        ),
                        kHeight20,
                        _buildTile(
                          text: Appstrings.addressBook,
                          icon: AppAssetsStrings.addressBookIcon,
                          onTap: () {
                            context.pushNamed(
                                MyAppRouteConstants.addressBookRouteName);
                          },
                        ),
                        kHeight20,
                        _buildTile(
                          text: Appstrings.orderHistory,
                          icon: AppAssetsStrings.orderHistory,
                          onTap: () {
                            context.pushNamed(
                                MyAppRouteConstants.orderHistoryRouteName);
                          },
                        ),
                        kHeight20,
                        _buildTile(
                          text: Appstrings.wishList,
                          icon: AppAssetsStrings.wishList,
                          onTap: () {
                            context.pushNamed(
                                MyAppRouteConstants.wishlistRouteName);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
      );
    });
  }

  Widget _buildTile(
      {required VoidCallback onTap,
      required String text,
      required String icon}) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: ColorManager.appBarColor,
        child: ImageIcon(
          AssetImage(icon),
          color: ColorManager.blackColor,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 20,
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
