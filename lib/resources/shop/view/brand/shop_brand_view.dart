import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/top_brands/top_brands_model.dart';
import 'package:millat/resources/shop/view/brand/single_brand_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class ShopBrandView extends StatelessWidget {
  const ShopBrandView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _stackContainerPart(context),
            kHeight15,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  _topBrandsPart(),
                  kHeight15,
                  // _filterRow(),
                  _brandsListPart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _brandsListPart() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        if (state.topBrandsModel?.result.data == null) {
          return const SizedBox();
        }
        return Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.topBrandsModel!.result.data.topBrands.length,
              itemBuilder: (context, index) {
                final data =
                    state.topBrandsModel!.result.data.topBrands[index].brandId;
                return GestureDetector(
                  onTap: () {
                    print("here is the id ${data.id}");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SingleBrandView(passValue: data),
                    ));
                  },
                  child: brandTileContainer(context, data),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _topBrandsPart() {
    return Column(
      children: [
        const Text(
          Appstrings.top8brands,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight10,
        Container(
          width: double.infinity,
          height: 240,
          // margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage(AppAssetsStrings.topBrand),
              fit: BoxFit.fill,
            ),
          ),
          padding: const EdgeInsets.all(1),
          child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
            builder: (context, state) {
              if (state.topBrandsModel?.result.data == null) {
                return const Loader();
              }
              return GridView.builder(
                itemCount: state.topBrandsModel!.result.data.topBrands.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  final data = state
                      .topBrandsModel?.result.data.topBrands[index].brandId;
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleBrandView(passValue: data),
                      ));
                    },
                    child: Column(
                      children: [
                        Container(
                            height: 67,
                            width: 67,
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(bottom: 3.5),
                            decoration: BoxDecoration(
                              color: ColorManager.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: data?.image != null
                                ? Image.network(data!.image!)
                                : const Icon(
                                    Icons.image_not_supported_outlined)),
                        // kHeight10,
                        Text(
                          data?.name ?? "",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Container _stackContainerPart(BuildContext context) {
    return Container(
      height: 270,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppAssetsStrings.brands),
            fit: BoxFit.fill,
          ),
          gradient: LinearGradient(colors: [
            ColorManager.greenColor1,
            ColorManager.primary,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      width: SizeUtility(context).width,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(color: ColorManager.whiteColor),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Appstrings.thousandBrands,
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                kHeight8,
                Text(
                  Appstrings.brandDescription,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.whiteColor,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                kHeight15,
                SizedBox(
                  width: SizeUtility(context).width,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/dummy/huda.png',
                        height: 90,
                      ),
                      Positioned(
                        left: 70,
                        child: Image.asset(
                          'assets/dummy/kazima.png',
                          height: 90,
                        ),
                      ),
                      Positioned(
                        left: 135,
                        child: Image.asset(
                          'assets/dummy/two_brothers.png',
                          height: 90,
                        ),
                      ),
                      Positioned(
                        left: 210,
                        child: Image.asset(
                          'assets/dummy/isak.png',
                          height: 90,
                        ),
                      ),
                      Positioned(
                        left: 280,
                        child: Image.asset(
                          'assets/dummy/farsali_2.png',
                          height: 90,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget brandTileContainer(BuildContext context, Brand data) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            height: 209,
            width: SizeUtility(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Stack(
                children: [
                  data.coverImage == null
                      ? Container(
                          height: 209,
                          width: double.infinity,
                          color: ColorManager.black4A,
                          child: const Icon(
                            Icons.photo_size_select_actual,
                            size: 200,
                          ),
                        )
                      : Image.network(
                          data.coverImage!,
                          fit: BoxFit.cover,
                          width: SizeUtility(context).width,
                        ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.3],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 49,
                      width: SizeUtility(context).width,
                      margin: const EdgeInsets.only(
                          left: 12, bottom: 12, right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                          Row(
                            children: [
                              ImageIcon(
                                const AssetImage(AppAssetsStrings.brandItems),
                                color: ColorManager.brandItemYellow,
                              ),
                              kWidht10,
                              Text(
                                '1,234 Items',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.whiteColor),
                              ),
                              SizedBox(width: SizeUtility(context).width / 2),
                              Icon(
                                Icons.arrow_forward,
                                color: ColorManager.whiteColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: ColorManager.whiteColor,
                          shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: data.image == null
                            ? const Icon(Icons.image_not_supported_outlined)
                            : Image.network(data.image!),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          kHeight10,
          Text(
            data.description ?? "Empty",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight5,
        ],
      ),
    );
  }

  Widget _filterRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _filterContainer(
            icon: AppAssetsStrings.filterIcon, text: Appstrings.filters),
        _filterContainer(
            icon: AppAssetsStrings.starIcon, text: Appstrings.byReview),
        Container(
          height: 42,
          decoration: BoxDecoration(
            color: ColorManager.dotGrey.withOpacity(0.6),
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(10),
          child: const Row(
            children: [
              Icon(
                Icons.expand_more,
                size: 26,
              ),
              kWidth5,
              Text(
                Appstrings.sortBy,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, height: 1.5),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container _filterContainer({
    required String icon,
    required String text,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.greyD1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(10),
      height: 42,
      child: Row(
        children: [
          ImageIcon(
            AssetImage(
              icon,
            ),
          ),
          kWidth8,
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
