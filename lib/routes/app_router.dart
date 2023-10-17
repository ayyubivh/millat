import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/authentication/view/forgot_password_view.dart';
import 'package:millat/resources/authentication/view/login_view.dart';
import 'package:millat/resources/authentication/view/send_otp_view.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/authentication/view/verify_otp_view.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/routes/app_router_constants.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation:
          isAuth ? "/" : "/${MyAppRouteConstants.onBoardingRouteName}",
      routes: [
        GoRoute(
          name: MyAppRouteConstants.onBoardingRouteName,
          path: '/onboarding',
          pageBuilder: (context, state) {
            return const MaterialPage(child: OnBoardingView());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.homeTabsRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: TabsView());
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
        GoRoute(
          name: MyAppRouteConstants.verifyOtpRouteName,
          path: '/verify_otp',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: VerifyOTPView(),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.signUpRouteName,
          path: '/signup',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SignUpView(),
            );
          },
          routes: [
            GoRoute(
                name: MyAppRouteConstants.loginRouteName,
                path: 'login',
                pageBuilder: (context, state) {
                  return const MaterialPage(
                    child: LoginView(),
                  );
                },
                routes: [
                  GoRoute(
                    name: MyAppRouteConstants.forgotPassWordRouteName,
                    path: 'forgot_password',
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      return const MaterialPage(
                        child: ForgotPasswordView(),
                      );
                    },
                  )
                ]),
            GoRoute(
              name: MyAppRouteConstants.sendOtpRouteName,
              path: 'send_otp/:isSignIn',
              pageBuilder: (BuildContext context, GoRouterState state) {
                final bool isSignIn =
                    state.pathParameters['isSignIn'] == "true";
                return MaterialPage(
                  child: SendOTPView(signInPhone: isSignIn),
                );
              },
            )
          ],
        ),
      ],
    );
    return router;
  }
}
