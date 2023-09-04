// import 'package:auto_route/auto_route.dart';
// import 'package:millat/routes/app_router.gr.dart';

// class AuthGuard extends AutoRouteGuard {
//   final String? authToken;

//   AuthGuard({this.authToken});

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     if (authToken != null) {
//       resolver.next(
//         true,
//       );
//     } else {
//       router.root.replace(const HomeView());
//       resolver.next(
//         false,
//       );
//     }
//   }
// }
