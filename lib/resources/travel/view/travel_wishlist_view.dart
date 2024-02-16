import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import 'widget/travel_product_item_widget.dart';

class TravelWishlistView extends StatelessWidget {
  const TravelWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TravelBloc>(context)
          .add(const TravelEvent.fetchTravelWishlistProducts());
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.appBarColor,
        title: const Text(
          Appstrings.wishList,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        foregroundColor: ColorManager.blackColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BlocBuilder<TravelBloc, TravelState>(
          builder: (context, state) {
            if (state.wishlistProducts == null || state.isLoading) {
              return Row(
                children: [
                  ...List.generate(
                    2,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: ShimmerUtils.productsShimmers(
                        context: context,
                        height: 160,
                        width: SizeUtility(context).width / 2.5,
                      ),
                    ),
                  )
                ],
              );
            } else {
              if (state.wishlistProducts?.isEmpty ?? true) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
                      Text(
                        'Oops!!',
                        style: TextStyle(
                          color: ColorManager.redColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      kHeight10,
                      Text(
                        'Your Wishlist is Empty',
                        style: TextStyle(
                          color: ColorManager.blackColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeUtility(context).height / 8,
                        ),
                        child: Image.asset("assets/images/wishlist_empty.png"),
                      ),
                    ],
                  ),
                );
              }
            }
            return GridView.builder(
              itemCount: state.wishlistProducts?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 15,
                mainAxisExtent: 230,
              ),
              itemBuilder: (context, index) {
                //   return _buildItems(
                //       context, state.searchProducts![index]);
                final data = state.wishlistProducts![index];
                return TravelProductItemWidget(data: data);
              },
            );
          },
        ),
      ),
    );
  }
}
