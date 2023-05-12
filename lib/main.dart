import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/bloc/service/auth_provider.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 2),() {
    FlutterNativeSplash.remove();
  },);

  final authProvider = AuthProvider();

  runApp(BlocProvider(create: (context) => AuthBloc(authProvider)..add(AppStarted()),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: OnBoardingView()
    );
  }
}

