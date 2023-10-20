// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:millat/enums/enumertations.dart';
// import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
// import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
// import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
// import 'package:millat/utils/color_manager.dart';
// import 'package:millat/utils/size_utility.dart';

// class FiltersView extends StatefulWidget {
//   const FiltersView({Key? key}) : super(key: key);

//   @override
//   State<FiltersView> createState() => _FiltersViewState();
// }

// class _FiltersViewState extends State<FiltersView> {
//   int currentIndex = 0;
//   final category = [
//     'Category',
//     'Sub Category',
//     'Brand',
//     'Price',
//   ];
//   int categoryIndex = -1;
//   int subCategoryIndex = -1;
//   int brandIndex = -1;
//   int priceRangeIndex = -1;
//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<ShopProductsBloc>(context).add(const FetchShopByBrand());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: const Text(
//           'Filters',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
//         ),
//         centerTitle: false,
//         leadingWidth: 0,
//         leading: Container(),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(
//                 Icons.close,
//                 color: black189,
//               ))
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Divider(height: 0),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: SizeUtility(context).width * 45 / 100,
//                   height: SizeUtility(context).height,
//                   color: black247,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: category.length,
//                           itemBuilder: (context, index) {
//                             final isSelected = currentIndex == index;

//                             return ListTile(
//                                 onTap: () {
//                                   setState(() {
//                                     currentIndex = index;
//                                   });
//                                 },
//                                 title: Text(
//                                   category[index],
//                                   style: TextStyle(
//                                       color: isSelected
//                                           ? ColorManager.primary
//                                           : ColorManager.textGrey99),
//                                 ),
//                                 trailing: Icon(
//                                   isSelected ? Icons.arrow_forward_ios : null,
//                                   size: 15,
//                                   color: ColorManager.greenColor1,
//                                 ));
//                           },
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: BlocBuilder<CategoryBloc, CategoryState>(
//                     builder: (context, state) {
//                       final currentCategory = category[currentIndex];

//                       if (currentCategory == 'Category') {
//                         return ListView.builder(
//                           itemCount: state.category!.result!.category!.length,
//                           itemBuilder: (context, index) {
//                             final category =
//                                 state.category?.result?.category![index];

//                             return ListTile(
//                               title: Text(category!.title.toString()),
//                               trailing: Radio(
//                                 value: true,
//                                 groupValue: index == categoryIndex,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     categoryIndex = index;
//                                   });
//                                   print(
//                                       'here the bloc category index vale ${state.category?.result?.category![categoryIndex].title.toString()}');
//                                   context.read<CategoryBloc>().add(FilterEvent(
//                                       category: state.category?.result
//                                           ?.category![categoryIndex].title
//                                           .toString(),
//                                       subCategory: ""));
//                                 },
//                                 fillColor: MaterialStateProperty.all(
//                                     ColorManager.greenColor1),
//                               ),
//                             );
//                           },
//                         );
//                       } else if (currentCategory == 'Sub Category') {
//                         final selectedSubCategory =
//                             state.subCategory!.result!.subCategory;
//                         return ListView.builder(
//                           itemCount:
//                               state.subCategory!.result!.subCategory!.length,
//                           itemBuilder: (context, index) {
//                             return ListTile(
//                               title: Text(
//                                 selectedSubCategory![index].title.toString(),
//                               ),
//                               trailing: Radio(
//                                 value: true,
//                                 groupValue: index == subCategoryIndex,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     subCategoryIndex = index;
//                                   });
//                                   print(
//                                       'here the bloc category index vale ${state.filterCategory} nununununu ${state.subCategory?.result?.subCategory![subCategoryIndex].title.toString()}');
//                                   context.read<CategoryBloc>().add(FilterEvent(
//                                       category: state.filterCategory,
//                                       subCategory: state.subCategory?.result
//                                           ?.subCategory![subCategoryIndex].title
//                                           .toString()));
//                                 },
//                                 fillColor: MaterialStateProperty.all(
//                                     ColorManager.greenColor1),
//                               ),
//                             );
//                           },
//                         );
//                       } else if (currentCategory == 'Brand') {
//                         final brand = context
//                             .read<ShopProductsBloc>()
//                             .state
//                             .shopBrandModel!
//                             .users;
//                         return ListView.builder(
//                           itemCount: brand?.length,
//                           itemBuilder: (context, index) {
//                             return ListTile(
//                               title: Text(brand![index].name.toString()),
//                               trailing: Radio(
//                                 value: true,
//                                 groupValue: index == brandIndex,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     brandIndex = index;
//                                   });
//                                   context.read<CategoryBloc>().add(
//                                       FilterBrandPickEvent(
//                                           brand: brand[index].name.toString()));
//                                 },
//                                 fillColor: MaterialStateProperty.all(
//                                     ColorManager.greenColor1),
//                               ),
//                             );
//                           },
//                         );
//                       } else if (currentCategory == 'Price') {
//                         final priceRanges = [
//                           'Less than ₹500',
//                           '₹500 - ₹1000',
//                           '₹1000 - ₹1500',
//                           'More than ₹1500'
//                         ];
//                         return ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: priceRanges.length,
//                           itemBuilder: (context, index) {
//                             final priceRange = priceRanges[index];
//                             return ListTile(
//                               title: Text(priceRange),
//                               trailing: Radio(
//                                 value: true,
//                                 groupValue: index == priceRangeIndex,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     priceRangeIndex = index;
//                                   });
//                                   context
//                                       .read<CategoryBloc>()
//                                       .add(PriceRangeEvent(index: index));
//                                 },
//                                 fillColor: MaterialStatePropertyAll(
//                                     ColorManager.primary),
//                               ),
//                             );
//                           },
//                         );
//                       }
//                       return SizedBox();
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomSheet: Container(
//         height: 50,
//         margin: const EdgeInsets.only(bottom: 20),
//         child: Row(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               width: SizeUtility(context).width * 45 / 100,
//               child: const Text('Clear All',
//                   style: TextStyle(fontWeight: FontWeight.w700)),
//             ),
//             InkWell(
//               onTap: () {
//                 final filterValues = context.read<CategoryBloc>().state;
//                 print(
//                     'here the print of the nave values ${filterValues.filterSubCategory} and the ${filterValues.filterCategory} ${filterValues.filterBrand}');

//                 Navigator.of(context).pushReplacement(MaterialPageRoute(
//                   builder: (context) => CategoriesProductView(
//                     type: FilterType.brand,
//                     category: filterValues.filterCategory.toString(),
//                     subCategory: filterValues.filterSubCategory.toString(),
//                   ),
//                 ));
//               },
//               child: Container(
//                 color: ColorManager.greenColor1,
//                 alignment: Alignment.center,
//                 width: SizeUtility(context).width * 55 / 100,
//                 child: const Text('Apply',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w700, color: Colors.white)),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
