// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:millat/resources/profile/views/profile_view.dart';
// import 'package:millat/utils/globals.dart';
// import 'package:millat/utils/size_utility.dart';

// import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';
// import '../../../shop/bloc/logic/shop_bloc/shop_products_bloc.dart';

// import 'namaz_timing_view.dart';

// class HomeViews extends StatefulWidget {
//   const HomeViews({Key? key}) : super(key: key);

//   @override
//   State<HomeViews> createState() => _HomeViewsState();
// }

// class _HomeViewsState extends State<HomeViews> {
//   final ScrollController _scrollController = ScrollController();
//   final double _appBarHeight = 60.0;
//   bool _isAppBarCollapsed = false;
//   @override
//   void initState() {
//     BlocProvider.of<DatabaseBloc>(context).add(const FetchUserDetails());
//     BlocProvider.of<ShopProductsBloc>(context)
//         .add(const ShopProductsEvent.fetchHomeBanners());
//     _scrollController.addListener(() {
//       if (_scrollController.offset > _appBarHeight - (kToolbarHeight - 180)) {
//         setState(() {
//           _isAppBarCollapsed = true;
//         });
//       } else {
//         setState(() {
//           _isAppBarCollapsed = false;
//         });
//       }
//     });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: CustomScrollView(
//         controller: _scrollController,
//         slivers: [
//           SliverAppBar(
//             automaticallyImplyLeading: false,
//             collapsedHeight: _appBarHeight,
//             backgroundColor: _isAppBarCollapsed ? midGreenColor : Colors.white,
//             elevation: 0,
//             pinned: true,
//             centerTitle: true,
//             expandedHeight: 320,
//             leadingWidth: _isAppBarCollapsed
//                 ? SizeUtility(context).width * 50 / 100
//                 : null,
//             leading: _isAppBarCollapsed
//                 ? const Row(
//                     children: [
//                       SizedBox(
//                         width: 30,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Upcoming Namaz',
//                               style: TextStyle(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.w100,
//                               )),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text('Zohar',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                   )),
//                               SizedBox(width: 8),
//                               Text('1:30 PM',
//                                   style: TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.w500,
//                                   )),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   )
//                 : null,
//             actions: _isAppBarCollapsed
//                 ? [
//                     GestureDetector(
//                       onTap: () {},
//                       child: CircleAvatar(
//                           radius: 15,
//                           backgroundColor: Colors.white,
//                           child: Image.asset('assets/icons/user.png')),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     const ImageIcon(AssetImage('assets/icons/bell.png'),
//                         color: Colors.white, size: 25),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     const ImageIcon(AssetImage('assets/icons/menu.png'),
//                         color: Colors.white, size: 25),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                   ]
//                 : [],
//             flexibleSpace: FlexibleSpaceBar(
//               background: Stack(
//                 children: [
//                   Image.asset('assets/images/home_app_bar.png'),
//                 ],
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             hasScrollBody: false,
//             fillOverscroll: true,
//             child: 
//           )
//         ],
//       ),
//     );
//   }

 
// }
