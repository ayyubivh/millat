import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/bloc/logic/hadith_bloc/bloc/hadith_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/bloc/logic/location_bloc/location_bloc.dart';
import 'package:millat/resources/home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/bloc/logic/tasbih_bloc/tasbih_bloc.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/book_mark_hive_model.dart';
import 'package:millat/resources/home/bloc/service/notification_service.dart';
import 'package:millat/resources/profile/bloc/logic/terms_and_condtions_bloc/terms_and_condtions_bloc.dart';
import 'package:millat/resources/rewards/bloc/logic/bloc/rewards_coins_collect_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/review_bloc/bloc/review_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/routes/app_router.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'resources/rewards/bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';
import 'resources/travel/bloc/logic/travel_bloc.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("f7a79b17-636c-4e33-ab11-b46d9c85470c");
  OneSignal.Notifications.requestPermission(true);
  // OneSignal.Notifications.addPermissionObserver((state) {
  //   print("Has permission $state");
  // });

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
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  if (!Hive.isAdapterRegistered(BookMarktCollectionModelAdapter().typeId)) {
    Hive.registerAdapter(BookMarktCollectionModelAdapter());
  }
  await Hive.initFlutter();
  await Hive.openBox('userDetailsBox');

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
        BlocProvider(create: (context) => BookmarkBloc()),
        BlocProvider(create: (context) => DuaBloc()),
        BlocProvider(create: (context) => TasbihBloc()),
        BlocProvider(create: (context) => HadithBloc()),
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => TermsAndConditionsBloc()),
        BlocProvider(create: (context) => RewardsBloc()),
        BlocProvider(create: (context) => ReviewBloc()),
        BlocProvider(create: (context) => TravelBloc()),
        BlocProvider(create: (context) => RewardsCoinsCollectBloc())
      ],
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      )
      // child: MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  final _tokenBox = Hive.box(userBox);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = MyAppRouter.returnRouter(_getInitialScreen());

    return MaterialApp.router(
      routerConfig: router,
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
    );
  }

  bool _getInitialScreen() {
    final String? token = _tokenBox.get(authToken);

    if (token != null) {
      print('on main token $token');
      return true;
    } else {
      return false;
    }
  }
}
