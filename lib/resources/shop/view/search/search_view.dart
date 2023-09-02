import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/size_utility.dart';

class SearchView extends StatefulWidget {
  static const String routeName = "/search-view";
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 20,
              ),
              width: SizeUtility(context).width,
              height: 157,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [ColorManager.greenColor1, ColorManager.primary],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: ColorManager.whiteColor,
                        // iconSize: 22,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                          color: ColorManager.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 48,
                    child: TextFormField(
                      autofocus: true,
                      controller: searchController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              context
                                  .read<ShopProductsBloc>()
                                  .add(SearchProduct(searchController.text));
                            },
                            icon: const Icon(Icons.search, color: black142)),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search...',
                      ),
                      onFieldSubmitted: (value) {
                        context
                            .read<ShopProductsBloc>()
                            .add(SearchProduct(searchController.text));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 20,
              ),
              child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  final itemCount =
                      state.searchProducts?.result?.products.length ?? 0;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'offer',
                        style: TextStyle(
                          color: black102,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        '${searchController.text} (${itemCount})',
                        style: TextStyle(
                          color: ColorManager.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'product',
                            style: TextStyle(
                              color: black102,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: ColorManager.greenColor1,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      state.searchProducts?.result?.products == null
                          ? const Padding(
                              padding: EdgeInsets.only(top: 158.0),
                              child: Center(
                                child: Text('no result found'),
                              ),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount: itemCount,
                              itemBuilder: (context, index) {
                                final data = state
                                    .searchProducts?.result?.products[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          SingleProductView(passValue: data),
                                    ));
                                  },
                                  child: buildSearchItem(
                                      image: data?.colors[0].images![0],
                                      produchName: data!.title,
                                      rate: data.actualPrice.toInt(),
                                      brandName: data.brand!.name),
                                );
                              },
                            ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearchItem({
    required String? image,
    required String? produchName,
    required int? rate,
    required String? brandName,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            width: 134,
            height: 127,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                produchName.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '\$ ${rate}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: textBlack,
                ),
              ),
              const SizedBox(height: 18),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                        text: 'by  ',
                        style: TextStyle(
                          fontSize: 13,
                          color: black102,
                        )),
                    TextSpan(
                      text: '${brandName}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.blue5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
