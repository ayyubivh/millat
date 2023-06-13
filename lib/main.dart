import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  bool _splashRemoved = false;

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 2), () {
    if (!_splashRemoved) {
      FlutterNativeSplash.remove();
      _splashRemoved = true;
    }
  });
  await Hive.initFlutter();
  await Hive.openBox('authTokenBox');
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AuthBloc(),
      ),
      BlocProvider(
        create: (context) => ShopProductsBloc(),
      ),
      BlocProvider(
        create: (context) => CategoryBloc(),
      ),
      BlocProvider(
        create: (context) => DatabaseBloc(),
      ),
      BlocProvider(
        create: (context) => CartBloc(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _tokenBox = Hive.box('authTokenBox');

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
      home: _getInitialScreen(),
    );
  }

  Widget _getInitialScreen() {
    final String? token = _tokenBox.get(AUTHTOKEN);

    if (token != null) {
      print('on main token ${token}');
      return TabsView();
    } else {
      return OnBoardingView();
    }
  }
}
