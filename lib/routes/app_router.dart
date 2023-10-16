import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/routes/app_router_constants.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeTabsRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: TabsView());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.onBoardingRouteName,
          path: '/onboarding',
          pageBuilder: (context, state) {
            return const MaterialPage(child: OnBoardingView());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: '/home',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HomeView(),
            );
          },
        ),
      ],
      redirect: (state, context) {
        if (isAuth) {
          return context.namedLocation(MyAppRouteConstants.homeTabsRouteName);
        } else {
          return context.namedLocation(MyAppRouteConstants.onBoardingRouteName);
        }
      },
    );
    return router;
  }
}
