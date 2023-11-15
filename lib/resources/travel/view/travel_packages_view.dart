// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'travel_home_view.dart';
import 'widget/travel_product_item_widget.dart';

class TravelPackagesView extends StatelessWidget {
  const TravelPackagesView({
    Key? key,
    required this.title,
    this.type,
  }) : super(key: key);
  final String title;
  final TravelsPackagesType? type;
  @override
  Widget build(BuildContext context) {
    print(type);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.whiteColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          foregroundColor: ColorManager.blackColor,
        ),
        body: BlocProvider(
          create: (context) =>
              TravelBloc()..add(const TravelEvent.fetchTravelPopularProducts()),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 15),
            child: type == TravelsPackagesType.popularProducts
                ? BlocBuilder<TravelBloc, TravelState>(
                    builder: (context, state) {
                      final travelProducts =
                          state.travelPopularProductsModel?.products;
                      if (travelProducts == null || state.isLoading) {
                        return const Loader();
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: GridView.builder(
                          itemCount: travelProducts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  // crossAxisSpacing: 14,
                                  mainAxisExtent: 260,
                                  mainAxisSpacing: 20),
                          itemBuilder: (context, index) {
                            return TravelProductWidget(
                                data: travelProducts[index]);
                          },
                        ),
                      );
                    },
                  )
                : BlocBuilder<TravelBloc, TravelState>(
                    builder: (context, state) {
                      if (state.searchProducts == null || state.isLoading) {
                        return const Loader();
                      }
                      return GridView.builder(
                        itemCount: state.searchProducts?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 14,
                          mainAxisExtent: 230,
                        ),
                        itemBuilder: (context, index) {
                          //   return _buildItems(
                          //       context, state.searchProducts![index]);
                          final data = state.searchProducts![index];
                          return TravelProductItemWidget(data: data);
                        },
                      );
                    },
                  ),
          ),
        ));
  }
}
