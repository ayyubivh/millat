import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../../components/buttons/main_button.dart';

class OrderReturnSuccessView extends StatelessWidget {
  const OrderReturnSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) => state.isLoading
          ? const Loader()
          : Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssetsStrings.orderSuccessImg),
                    const Text(
                      'Returned Successfully',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kHeight16,
                    Text(
                      'Your return request is sent successfully, Estimated date for return is by 18th August',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.lightBlackColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              bottomSheet: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: MainButton(
                    title: Appstrings.keepShopping,
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const ShopTabsView(),
                        ),
                        (route) => false,
                      );
                    },
                  ))),
    );
  }
}
