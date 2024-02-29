// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:millat/components/common_widgets/shop_products_widget.dart';
// import 'package:millat/resources/shop/bloc/models/products/product_filter_model.dart';
// import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
// import 'package:pagination_view/pagination_view.dart';

// import '../../resources/shop/bloc/logic/category_bloc/category_bloc.dart';
// import '../../routes/app_router_constants.dart';
// import '../../utils/responsive.dart';
// import '../../utils/shimmer_utils.dart';
// import '../../utils/size_utility.dart';

// class PaginatedProductGridView extends StatelessWidget {
//   final CategoryState state;

//   final Future<List<MultifilterProduct>> Function(int) pageFetch;

//   const PaginatedProductGridView({
//     super.key,
//     required this.state,
//     required this.pageFetch,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return PaginationView<MultifilterProduct>(
//       preloadedItems: state.multiFilterProduct ?? [],
//       itemBuilder:
//           (BuildContext context, MultifilterProduct product, int index) {
//         return GestureDetector(
//           onTap: () {
//             context.pushNamed(MyAppRouteConstants.singleProductRouteName,
//                 pathParameters: {"id": product.id ?? ""});
//           },
//           child: ShopProductWidget(
//             color: product.color ?? "",
//             size: product.size?[0].size ?? "",
//             brandId: product.brand!.id,
//             isWishlisted: false,
//             brand: product.brand!.name.toString(),
//             productId: product.id,
//             title: product.title,
//             image: product.images![0],
//             discountPrice: product.salePrice ?? 0,
//             actualPrice: product.regularPrice?.toInt() ?? 0,
//             discount: product.discount?.toInt() ?? 0,
//           ),
//         );
//       },
//       paginationViewType: PaginationViewType.gridView,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//         mainAxisExtent: !Responsive.isMobile(context)
//             ? SizeUtility(context).height / 3.3
//             : SizeUtility(context).height / 2.9,
//       ),
//       pageFetch: pageFetch,
//       onError: (dynamic error) => const Center(
//         child: Text('Some error occurred'),
//       ),
//       onEmpty: const Center(
//         child: Text('Sorry! This is empty'),
//       ),
//       bottomLoader: const Center(
//         child: CircularProgressIndicator(),
//       ),
//       // scrollController: scrollController,
//       initialLoader: const Center(child: CircularProgressIndicator()),
//     );
//   }
// }
