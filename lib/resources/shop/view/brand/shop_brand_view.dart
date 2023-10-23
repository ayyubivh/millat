import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/brand_model.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

class ShopBrandView extends StatelessWidget {
  const ShopBrandView({super.key});

  @override
  Widget build(BuildContext context) {
    List brandsImages = [
      'assets/dummy/huda.png',
      'assets/dummy/kazima.png',
      'assets/dummy/two_brothers.png',
      'assets/dummy/isak.png',
      'assets/dummy/farsali_2.png',
      'assets/dummy/kazima.png',
    ];
    return Scaffold(
      body: BlocProvider(
        create: (context) => ShopProductsBloc()
          ..add(const ShopProductsEvent.fetchTopBrands())
          ..add(ShopProductsEvent.fetchBrandProductsItemCount(
              ids: (context
                          .read<ShopProductsBloc>()
                          .state
                          .brandModels
                          ?.result
                          ?.data
                          ?.map((e) => e.id)
                          .where((id) => id != null)
                          .toList() ??
                      [])
                  .cast<String>())),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              expandedHeight: SizeUtility(context).height / 3,
              centerTitle: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: const HeaderBackgroundImage(),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        Appstrings.thousandBrands,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                    kHeight8,
                    const Flexible(
                      child: Text(
                        Appstrings.brandDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    kHeight15,
                    BrandImages(brandsImages: brandsImages),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  // _stackContainerPart(context),
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
          ],
        ),
      ),
    );
  }

  Widget _brandsListPart() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        if (state.brandModels?.result?.data == null) {
          return const SizedBox();
        }
        return Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.brandModels!.result?.data?.length,
              itemBuilder: (context, index) {
                final data = state.brandModels!.result?.data?[index];
                final itemCount = state.brandProductsItemCount;
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(MyAppRouteConstants.singleBrandRouteName,
                        extra: {'passValue': data});
                  },
                  child: brandTileContainer(
                      context, data, itemCount?[index].toInt() ?? 0),
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage(AppAssetsStrings.topBrand),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
            builder: (context, state) {
              if (state.topBrandsModel?.result?.data == null) {
                print(state.topBrandsModel);
                return const Loader();
              }
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount:
                      state.topBrandsModel!.result!.data!.topBrands!.length <= 8
                          ? state
                              .topBrandsModel!.result!.data!.topBrands!.length
                          : 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    final data =
                        state.topBrandsModel?.result?.data?.topBrands?[index];
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(
                            MyAppRouteConstants.singleBrandRouteName,
                            extra: {'passValue': data});
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: data?.logo != null
                                    ? Utilities().buildCachedNetworkImage(
                                        imageUrl: data!.logo!)
                                    : const Icon(
                                        Icons.image_not_supported_outlined)),
                          ),
                          kHeight10,
                          Text(
                            data?.name ?? "",
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget brandTileContainer(
      BuildContext context, BrandData? data, int itemsCount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            width: SizeUtility(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Stack(
                children: [
                  data == null || data.coverImage!.isEmpty
                      ? Container(
                          height: 209,
                          width: double.infinity,
                          color: ColorManager.black4A,
                          child: const Icon(
                            Icons.photo_size_select_actual,
                            size: 200,
                          ),
                        )
                      : ShaderMask(
                          blendMode: BlendMode.darken,
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ).createShader(bounds),
                          child: Utilities().buildCachedNetworkImage(
                              imageUrl: data.coverImage!, boxFit: BoxFit.cover),
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
                      // height: 49,
                      width: SizeUtility(context).width,
                      margin: const EdgeInsets.only(
                          left: 12, bottom: 12, right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data?.brandName ?? "",
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
                              kWidth10,
                              Text(
                                '$itemsCount Items',
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
                        child: data?.logo == null
                            ? const Icon(Icons.image_not_supported_outlined)
                            : Utilities()
                                .buildCachedNetworkImage(imageUrl: data?.logo),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          kHeight10,
          Text(
            data?.description ?? "Empty",
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

class BrandImages extends StatelessWidget {
  const BrandImages({
    super.key,
    required this.brandsImages,
  });

  final List brandsImages;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        // physics: const NeverScrollableScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < 2; i++)
              for (int i = 0; i < brandsImages.length; i++)
                Align(
                  widthFactor: 0.8,
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset(brandsImages[i]),
                  ),
                )
          ],
        ),
      ),
    );
  }
}

class HeaderBackgroundImage extends StatelessWidget {
  const HeaderBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppAssetsStrings.brands),
            fit: BoxFit.fill,
          ),
          gradient: LinearGradient(colors: [
            ColorManager.greenColor1,
            ColorManager.primary,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}
