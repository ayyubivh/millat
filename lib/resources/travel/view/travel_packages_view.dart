// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/view/widget/travel_product_by_city_widget.dart';
import 'package:millat/utils/color_manager.dart';

import '../../../utils/shimmer_utils.dart';
import '../../../utils/size_utility.dart';
import 'travel_home_view.dart';
import 'widget/travel_product_item_widget.dart';

class TravelPackagesView extends StatelessWidget {
  const TravelPackagesView({
    Key? key,
    required this.title,
    this.country,
    this.city,
    this.type,
  }) : super(key: key);
  final String title;
  final String? country;
  final String? city;
  final TravelsPackagesType? type;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      type == TravelsPackagesType.browseByCountries
          ? BlocProvider.of<TravelBloc>(context).add(
              FetchTravelProductsByCities(
                  country: country ?? "", city: city ?? ""))
          : type == TravelsPackagesType.popularProducts
              ? BlocProvider.of<TravelBloc>(context)
                  .add(const TravelEvent.fetchTravelPopularProducts())
              : null;
    });
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 15),
        child: type == TravelsPackagesType.popularProducts
            ? BlocBuilder<TravelBloc, TravelState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GridView.builder(
                      itemCount: state.travelPopularProductsModel?.length ?? 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              // crossAxisSpacing: 14,
                              mainAxisExtent: 260,
                              mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        final travelProducts = state.travelPopularProductsModel;
                        if (travelProducts == null || state.isLoading) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 17.0),
                            child: ShimmerUtils.productsShimmers(
                              context: context,
                              height: 160,
                              width: SizeUtility(context).width / 2.5,
                            ),
                          );
                        }
                        return TravelProductWidget(
                          data: travelProducts[index].productId!,
                          image: travelProducts[index].thumbnail ?? '',
                        );
                      },
                    ),
                  );
                },
              )
            : type == TravelsPackagesType.browseByCountries
                ? BlocBuilder<TravelBloc, TravelState>(
                    builder: (context, state) {
                      if (state.travelProductsByCitiesModel == null ||
                          state.isLoading) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 17.0),
                          child: ShimmerUtils.productsShimmers(
                            context: context,
                            height: 160,
                            width: SizeUtility(context).width / 2.5,
                          ),
                        );
                      } else if (state
                              .travelProductsByCitiesModel?.products.length ==
                          0) {
                        return const Center(
                          child: Text(
                            "No Product Available",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                        );
                      }
                      return GridView.builder(
                        itemCount: state
                                .travelProductsByCitiesModel?.products.length ??
                            8,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 14,
                          mainAxisExtent: 260,
                        ),
                        itemBuilder: (context, index) {
                          if (state.travelProductsByCitiesModel == null ||
                              state.isLoading) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: ShimmerUtils.productsShimmers(
                                context: context,
                                height: 160,
                                width: SizeUtility(context).width / 2.5,
                              ),
                            );
                          }
                          //   return _buildItems(
                          //       context, state.searchProducts![index]);
                          final data = state
                              .travelProductsByCitiesModel?.products[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TravelProductByCityWidget(data: data!),
                          );
                        },
                      );
                    },
                  )
                : BlocBuilder<TravelBloc, TravelState>(
                    builder: (context, state) {
                      if (state.isLoading || state.searchProducts == null) {
                        return GridView.builder(
                          itemCount: 8,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 14,
                            mainAxisExtent: 230,
                          ),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: ShimmerUtils.productsShimmers(
                                context: context,
                                height: 160,
                                width: SizeUtility(context).width / 2.5,
                              ),
                            );
                          },
                        );
                      } else if (state.searchProducts?.length == 0) {
                        return const Center(
                          child: Text(
                            "No Product Available",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                        );
                      } else {
                        return GridView.builder(
                          itemCount: state.searchProducts?.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 14,
                            mainAxisExtent: 230,
                          ),
                          itemBuilder: (context, index) {
                            final data = state.searchProducts?[index];
                            return TravelProductItemWidget(data: data!);
                          },
                        );
                      }
                    },
                  ),
      ),
    );
  }
}
