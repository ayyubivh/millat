import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/db/db_functions.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/location_bloc/location_bloc.dart';
import 'package:millat/resources/home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/book_mark_hive_model.dart';
import 'package:millat/resources/home/bloc/service/notification_service.dart';
import 'package:millat/resources/home/view/namaz_timing/namaz_timing_view.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';
import 'package:millat/resources/profile/views/manage_address.dart';
import 'package:millat/resources/shop/view/article/articles_view.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/products/products_view.dart';
import 'package:millat/resources/shop/view/search/search_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  bool splashRemoved = false;

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(const Duration(seconds: 2), () {
    if (!splashRemoved) {
      FlutterNativeSplash.remove();
      splashRemoved = true;
    }
  });
  NotificationService().initNotification();
  tz.initializeTimeZones();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  if (!Hive.isAdapterRegistered(BookMarktCollectionModelAdapter().typeId)) {
    Hive.registerAdapter(BookMarktCollectionModelAdapter());
  }
  await Hive.initFlutter();
  await Hive.openBox('userDetailsBox');
  await BookMarkDB.instance.refresh();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AuthBloc()),
      BlocProvider(create: (context) => ShopProductsBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
      BlocProvider(create: (context) => DatabaseBloc()),
      BlocProvider(create: (context) => CartBloc()),
      BlocProvider(create: (context) => AddressBloc()),
      BlocProvider(create: (context) => LocationBloc()),
      BlocProvider(create: (context) => NamazTimingBloc()),
      BlocProvider(create: (context) => QuranBloc()),
      BlocProvider(
        create: (context) => BookmarkBloc(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _tokenBox = Hive.box(userBox);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Millat',
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: 'MOBILE'),
            const ResponsiveBreakpoint.autoScale(800, name: 'TABLET'),
            const ResponsiveBreakpoint.autoScale(1000, name: 'TABLET'),
            const ResponsiveBreakpoint.resize(1200, name: 'DESKTOP'),
            const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
          background: Container(
            color: const Color(0xFFF5F5F5),
          )),
      theme: ThemeData(
        fontFamily: 'SofiaPro',
        primarySwatch: Colors.blue,
      ),
      routes: {
        NamazTimingView.routeName: (context) => const NamazTimingView(),
        ManageAddress.routeName: (context) => const ManageAddress(),
        SearchView.routeName: (context) => const SearchView(),
        ArticlesView.routeName: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return ArticlesView(
            passValue: args['passValue'],
          );
        },
        ProductsView.routeName: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          final appBarTitle = args['appBarTitle'];
          final passValue = args['passValue'];
          return ProductsView(appBarTitle: appBarTitle, passValue: passValue);
        },
      },
      home: _getInitialScreen(),
    );
  }

  Widget _getInitialScreen() {
    final String? token = _tokenBox.get(authToken);

    if (token != null) {
      print('on main token $token');
      return const TabsView();
    } else {
      return const OnBoardingView();
    }
  }
}
