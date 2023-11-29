import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/common_widgets/full_screen_widget.dart';
import 'package:millat/resources/authentication/view/forgot_password_view.dart';
import 'package:millat/resources/authentication/view/login_view.dart';
import 'package:millat/resources/authentication/view/send_otp_view.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/authentication/view/verify_otp_view.dart';
import 'package:millat/resources/home/view/al_quran/al_quran_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/addnew_collection_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/al_quran_settings.dart';
import 'package:millat/resources/home/view/al_quran/widgets/audio_recitors_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/text_setting_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses_view.dart';
import 'package:millat/resources/home/view/dua/dua_view.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_bookmar_view.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_category_view.dart';
import 'package:millat/resources/home/view/dua/widgets/inside_dua_view.dart';
import 'package:millat/resources/home/view/main_home/home_view.dart';
import 'package:millat/resources/home/view/namaz_timing/namaz_timing_view.dart';
import 'package:millat/resources/home/view/qibla/qibla_view.dart';
import 'package:millat/resources/home/view/tasbih/tasbih_view.dart';
import 'package:millat/resources/home/view/tasbih/widgets/choose_dhikr_view.dart';
import 'package:millat/resources/home/view/widgets/about_us_view.dart';
import 'package:millat/resources/home/view/widgets/notification_view.dart';
import 'package:millat/resources/home/view/widgets/prayer_tracker_calendar_view.dart';
import 'package:millat/resources/home/view/widgets/privacy_policy_view.dart';
import 'package:millat/resources/home/view/widgets/support_help_view.dart';
import 'package:millat/resources/home/view/widgets/terms_conditions_view.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';
import 'package:millat/resources/profile/views/address_book_view.dart';
import 'package:millat/resources/profile/views/edit_profile_view.dart';
import 'package:millat/resources/profile/views/invite_friend_view.dart';
import 'package:millat/resources/profile/views/order_history_view.dart';
import 'package:millat/resources/profile/views/user_profile_view.dart';
import 'package:millat/resources/rewards/rewards_tab_view.dart';
import 'package:millat/resources/rewards/widget/reward_shop_view.dart';
import 'package:millat/resources/shop/view/article/articles_view.dart';
import 'package:millat/resources/shop/view/article/single_article_view.dart';
import 'package:millat/resources/shop/view/brand/shop_brand_view.dart';
import 'package:millat/resources/shop/view/brand/single_brand_view.dart';
import 'package:millat/resources/shop/view/cart/cart.dart';
import 'package:millat/resources/shop/view/categories/categories_filter_view.dart';
import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
import 'package:millat/resources/shop/view/categories/category_products_filter_view.dart';
import 'package:millat/resources/shop/view/categories/category_view.dart';
import 'package:millat/resources/shop/view/checkout/checkout_confirmation.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/resources/shop/view/checkout/checkout_payment.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/resources/shop/view/order_status/payment_successful.dart';
import 'package:millat/resources/shop/view/orders/cancel_order_view.dart';
import 'package:millat/resources/shop/view/orders/order_return_view.dart';
import 'package:millat/resources/shop/view/orders/widgets/order_returned_succesfully.dart';
import 'package:millat/resources/shop/view/orders/widgets/return_detail_view.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/resources/shop/view/shop_view.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/resources/shop/view/wishlist/wishlist_view.dart';
import 'package:millat/resources/shop/view/womens_care/shop_specific_category_banner_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/resources/travel/view/travel_booking_form.dart';
import 'package:millat/resources/travel/view/travel_home_view.dart';
import 'package:millat/resources/travel/view/travel_packages_view.dart';
import 'package:millat/resources/travel/view/travel_search_view.dart';
import 'package:millat/resources/travel/view/travel_single_product_view.dart';
import 'package:millat/routes/app_router_constants.dart';
import '../resources/home/view/al_quran/bookmark_view.dart';
import '../resources/home/view/al_quran/widgets/add_sura_search_view.dart';
import '../resources/home/view/al_quran/widgets/bookmark_collection_view.dart';
import '../resources/rewards/widget/rewards_single_shop_view.dart';
import '../resources/shop/view/order_status/order_details_view.dart';
import '../resources/shop/view/search/shop_search_view.dart';

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
            routes: [
              GoRoute(
                name: MyAppRouteConstants.imageFullViewRoutename,
                path: MyAppRouteConstants.imageFullViewRoutename,
                pageBuilder: (context, state) {
                  Map data = state.extra as Map;
                  return MaterialPage(
                      child: FullScreenImageWidget(
                    imageUrls: data['imageUrls'],
                    initialIndex: data['initialIndex'],
                  ));
                },
              ),
              GoRoute(
                name: MyAppRouteConstants.namazTimingRouteName,
                path: MyAppRouteConstants.namazTimingRouteName,
                pageBuilder: (context, state) {
                  return const MaterialPage(child: NamazTimingView());
                },
              ),
              GoRoute(
                name: MyAppRouteConstants.prayerTrackerCalendarRouteName,
                path: MyAppRouteConstants.prayerTrackerCalendarRouteName,
                pageBuilder: (context, state) {
                  return const MaterialPage(child: PrayerTrackerCalendarView());
                },
              ),
              GoRoute(
                  name: MyAppRouteConstants.rewardsShopRouteName,
                  path: MyAppRouteConstants.rewardsShopRouteName,
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: RewardShopView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.rewardsShopProductRoutename,
                      path: MyAppRouteConstants.rewardsShopProductRoutename,
                      pageBuilder: (context, state) {
                        Map data = state.extra as Map;
                        return MaterialPage(
                            child: RewardsSingleShopView(
                          id: data['id'],
                        ));
                      },
                    ),
                  ]),
              GoRoute(
                  name: MyAppRouteConstants.travelHomeRoutename,
                  path: MyAppRouteConstants.travelHomeRoutename,
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: TravelHomeView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.travelSearchRoutename,
                      path: MyAppRouteConstants.travelSearchRoutename,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: TravelSearchView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.travelSingleRoutename,
                      path: "${MyAppRouteConstants.travelSingleRoutename}/:id",
                      pageBuilder: (context, state) {
                        return MaterialPage(
                          child: TravelSingleProductView(
                            id: state.pathParameters['id']!,
                          ),
                        );
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.travelPackagesView,
                      path: "${MyAppRouteConstants.travelPackagesView}/:title",
                      pageBuilder: (context, state) {
                        Map data = state.extra as Map;
                        return MaterialPage(
                          child: TravelPackagesView(
                              title: state.pathParameters['title']!,
                              type: data['type']),
                        );
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.travelBookingFormRoutename,
                      path:
                          "${MyAppRouteConstants.travelBookingFormRoutename}/:id",
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            child: TravelBookingForm(
                                id: state.pathParameters['id']!));
                      },
                    ),
                  ]),
              GoRoute(
                  name: MyAppRouteConstants.shopTabsRouteName,
                  path: 'shop_tabs',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: ShopTabsView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.shopRouteName,
                      path: MyAppRouteConstants.shopRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: ShopView());
                      },
                      routes: [
                        GoRoute(
                          name: MyAppRouteConstants.shopSearchRouteName,
                          path: MyAppRouteConstants.shopSearchRouteName,
                          pageBuilder: (context, state) {
                            return const MaterialPage(child: ShopSearchView());
                          },
                        ),
                        GoRoute(
                            name: MyAppRouteConstants.cartRouteName,
                            path: MyAppRouteConstants.cartRouteName,
                            pageBuilder: (context, state) {
                              return const MaterialPage(child: CartView());
                            },
                            routes: [
                              GoRoute(
                                name: MyAppRouteConstants.checkoutRouteName,
                                path: MyAppRouteConstants.checkoutRouteName,
                                pageBuilder: (context, state) {
                                  Map data = state.extra as Map;
                                  return MaterialPage(
                                      child: CheckoutView(
                                    checkoutType: data['checkoutType'],
                                  ));
                                },
                              ),
                              GoRoute(
                                  name: MyAppRouteConstants
                                      .checkoutDetailRoutename,
                                  path: MyAppRouteConstants
                                      .checkoutDetailRoutename,
                                  pageBuilder: (context, state) {
                                    Map data = state.extra as Map;
                                    return MaterialPage(
                                        child: CheckoutDetails(
                                      type: data['type'],
                                    ));
                                  },
                                  routes: [
                                    GoRoute(
                                      name: MyAppRouteConstants
                                          .checkoutPaymentRouteName,
                                      path: MyAppRouteConstants
                                          .checkoutPaymentRouteName,
                                      pageBuilder: (context, state) {
                                        Map data = state.extra as Map;
                                        return MaterialPage(
                                          child: CheckoutPayment(
                                            checkoutType: data['checkoutType'],
                                          ),
                                        );
                                      },
                                    ),
                                    GoRoute(
                                        name: MyAppRouteConstants
                                            .checkoutConfirmationRouteName,
                                        path: MyAppRouteConstants
                                            .checkoutConfirmationRouteName,
                                        pageBuilder: (context, state) {
                                          Map data = state.extra as Map;
                                          return MaterialPage(
                                              child: CheckoutConfirmation(
                                            paymentType: data['paymentType'],
                                            checkoutType: data['checkoutType'],
                                          ));
                                        },
                                        routes: [
                                          GoRoute(
                                            name: MyAppRouteConstants
                                                .paymentSuccessfullRouteName,
                                            path: MyAppRouteConstants
                                                .paymentSuccessfullRouteName,
                                            pageBuilder: (context, state) {
                                              Map data = state.extra as Map;
                                              return MaterialPage(
                                                  child: PaymentSuccessful(
                                                delivery: data['delivery'],
                                                subTotal: data['subTotal'],
                                              ));
                                            },
                                          ),
                                        ]),
                                  ]),
                            ]),
                        GoRoute(
                          name: MyAppRouteConstants.addressBookRouteName,
                          path: MyAppRouteConstants.addressBookRouteName,
                          pageBuilder: (context, state) {
                            return const MaterialPage(child: AddressBookView());
                          },
                        ),
                        GoRoute(
                          name: MyAppRouteConstants.orderHistoryRouteName,
                          path: MyAppRouteConstants.orderHistoryRouteName,
                          pageBuilder: (context, state) {
                            return const MaterialPage(
                                child: OrderHistoryView());
                          },
                        ),
                        GoRoute(
                            name: MyAppRouteConstants.orderDetailRouteName,
                            path: MyAppRouteConstants.orderDetailRouteName,
                            pageBuilder: (context, state) {
                              Map data = state.extra as Map;
                              return MaterialPage(
                                  child: OrdetailsView(
                                orderStatus: data['orderStatus'],
                              ));
                            },
                            routes: [
                              GoRoute(
                                name: MyAppRouteConstants.orderReturnRouteName,
                                path: MyAppRouteConstants.orderReturnRouteName,
                                pageBuilder: (context, state) {
                                  return const MaterialPage(
                                      child: OrderReturnView());
                                },
                              ),
                              GoRoute(
                                name: MyAppRouteConstants.orderCancelRouteName,
                                path: MyAppRouteConstants.orderCancelRouteName,
                                pageBuilder: (context, state) {
                                  return const MaterialPage(
                                      child: CancelView());
                                },
                              ),
                              GoRoute(
                                name: MyAppRouteConstants
                                    .orderReturnDetailRouteName,
                                path: MyAppRouteConstants
                                    .orderReturnDetailRouteName,
                                pageBuilder: (context, state) {
                                  return const MaterialPage(
                                      child: OrderRetunDetailView());
                                },
                              ),
                              GoRoute(
                                name: MyAppRouteConstants
                                    .orderReturnSuccesRouteName,
                                path: MyAppRouteConstants
                                    .orderReturnSuccesRouteName,
                                pageBuilder: (context, state) {
                                  Map data = state.extra as Map;
                                  return MaterialPage(
                                      child: OrderReturnSuccessView(
                                    orderType: data['orderType'],
                                  ));
                                },
                              ),
                            ]),
                        GoRoute(
                          name: MyAppRouteConstants.wishlistRouteName,
                          path: MyAppRouteConstants.wishlistRouteName,
                          pageBuilder: (context, state) {
                            return const MaterialPage(child: WishListView());
                          },
                        ),
                        GoRoute(
                          name: MyAppRouteConstants
                              .shopSpecificCategoryBannerRouteName,
                          path: MyAppRouteConstants
                              .shopSpecificCategoryBannerRouteName,
                          pageBuilder: (context, state) {
                            Map data = state.extra as Map;
                            return MaterialPage(
                              child: ShopSpecificCategoryBannerView(
                                category: data['category'],
                                imageUrl: data['imageUrl'],
                              ),
                            );
                          },
                        ),
                        GoRoute(
                          name: MyAppRouteConstants.categoryRouteName,
                          path: MyAppRouteConstants.categoryRouteName,
                          pageBuilder: (context, state) {
                            Map data = state.extra as Map;
                            return MaterialPage(
                              child: CategoryView(
                                category: data['category'],
                                categoryId: data['categoryId'],
                                categoryType: data['categoryType'],
                              ),
                            );
                          },
                        ),
                        GoRoute(
                            name:
                                MyAppRouteConstants.categoriesProductsRouteName,
                            path:
                                MyAppRouteConstants.categoriesProductsRouteName,
                            pageBuilder: (context, state) {
                              Map data = state.extra as Map;
                              return MaterialPage(
                                child: CategoriesProductView(
                                  categoryId: data['categoryId'],
                                  category: data['category'],
                                  subCategory: data['subCategory'],
                                  type: data['type'],
                                  itemId: data['itemId'],
                                  itemName: data['itemName'],
                                ),
                              );
                            },
                            routes: [
                              GoRoute(
                                name: MyAppRouteConstants
                                    .categoryProductsFilterRouteName,
                                path: MyAppRouteConstants
                                    .categoryProductsFilterRouteName,
                                pageBuilder: (context, state) {
                                  Map data = state.extra as Map;
                                  return MaterialPage(
                                      child: CategoryProductsFilterView(
                                    type: data['type'],
                                    // categoryId: data['categoryId'],
                                    category: data['category'],
                                  ));
                                },
                              ),
                            ]),
                      ],
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.categoriesFilterRouteName,
                      path: MyAppRouteConstants.categoriesFilterRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(
                            child: CategoriesFilterView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.singleProductRouteName,
                      path: "${MyAppRouteConstants.singleProductRouteName}/:id",
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            child: SingleProductView(
                          id: state.pathParameters['id']!,
                        ));
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.shopBrandsRouteName,
                      path: MyAppRouteConstants.shopBrandsRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: ShopBrandView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.singleBrandRouteName,
                      path: MyAppRouteConstants.singleBrandRouteName,
                      pageBuilder: (context, state) {
                        Map data = state.extra as Map;

                        return MaterialPage(
                            child: SingleBrandView(
                          passValue: data['passValue'],
                          brandViewType: data['brandViewType'],
                        ));
                      },
                    ),
                    GoRoute(
                        name: MyAppRouteConstants.articleRouteName,
                        path: MyAppRouteConstants.articleRouteName,
                        pageBuilder: (context, state) {
                          return const MaterialPage(child: ArticlesView());
                        },
                        routes: [
                          GoRoute(
                            name: MyAppRouteConstants.singleArticleRoutename,
                            path:
                                "${MyAppRouteConstants.singleArticleRoutename}/:id",
                            pageBuilder: (context, state) {
                              return MaterialPage(
                                  child: SingleArticleView(
                                id: state.pathParameters['id']!,
                              ));
                            },
                          ),
                        ]),
                  ]),
              GoRoute(
                name: MyAppRouteConstants.notificationRouteName,
                path: 'notication',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: NotificationView());
                },
              ),
              GoRoute(
                  name: MyAppRouteConstants.quranRouteName,
                  path: 'quran',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: AlQuranView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.quranVersesRoutename,
                      path: 'quran_verse',
                      builder: (context, state) {
                        Map data = state.extra as Map;

                        return VersesView(
                          type: data['type'],
                          scrollType: data['scrollType'],
                          chapterid: data['chapterId'],
                        );
                      },
                    ),
                    GoRoute(
                        name: MyAppRouteConstants.quranSettingsRouteName,
                        path: MyAppRouteConstants.quranSettingsRouteName,
                        pageBuilder: (context, state) {
                          return const MaterialPage(child: AlQuranSettings());
                        },
                        routes: [
                          GoRoute(
                            name: MyAppRouteConstants.quranTextSettingRouteName,
                            path: MyAppRouteConstants.quranTextSettingRouteName,
                            pageBuilder: (context, state) {
                              return const MaterialPage(
                                child: TextSettingsView(),
                              );
                            },
                          ),
                          GoRoute(
                            name: MyAppRouteConstants.audioRecitorsRouteName,
                            path: MyAppRouteConstants.audioRecitorsRouteName,
                            pageBuilder: (context, state) {
                              return const MaterialPage(
                                child: AudioRecitorsView(),
                              );
                            },
                          ),
                        ]),
                    GoRoute(
                      name: MyAppRouteConstants.addNewQuranBookmarkRouteName,
                      path: MyAppRouteConstants.addNewQuranBookmarkRouteName,
                      pageBuilder: (context, state) {
                        Map data = state.extra as Map;
                        return MaterialPage(
                          child: AddNewBookMarkCollection(
                            passvalue: data['passvalue'],
                            type: data['type'],
                            verseKeys: data['verseKeys'],
                          ),
                        );
                      },
                    ),
                    GoRoute(
                      name:
                          MyAppRouteConstants.quranBookmarkCollectionRouteName,
                      path:
                          MyAppRouteConstants.quranBookmarkCollectionRouteName,
                      pageBuilder: (context, state) {
                        Map data = state.extra as Map;
                        return MaterialPage(
                          child: BookmarkCollectionView(
                            passvalue: data['passvalue'],
                          ),
                        );
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.addSuraSearchRouteName,
                      path: MyAppRouteConstants.addSuraSearchRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(
                          child: AddSuraSearchView(),
                        );
                      },
                    ),
                  ]),
              GoRoute(
                name: MyAppRouteConstants.compassRouteName,
                path: 'compass',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: QiblahScreen());
                },
              ),
              GoRoute(
                  name: MyAppRouteConstants.tasbihRouteName,
                  path: 'tasbih',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: TasbihView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.chooseDhikrRouteName,
                      path: 'choose_dhikr',
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: ChooseDhikrView());
                      },
                    ),
                  ]),
              GoRoute(
                  name: MyAppRouteConstants.duaRouteName,
                  path: 'dua',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: DuaView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.duaBookmarRouteName,
                      path: MyAppRouteConstants.duaBookmarRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: DuaBookMarkView());
                      },
                    ),
                    GoRoute(
                        name: MyAppRouteConstants.duaCategoryRouteName,
                        path: MyAppRouteConstants.duaCategoryRouteName,
                        pageBuilder: (context, state) {
                          return const MaterialPage(child: DuaCategoryView());
                        },
                        routes: [
                          GoRoute(
                            name: MyAppRouteConstants.insideDuaRouteName,
                            path: MyAppRouteConstants.insideDuaRouteName,
                            pageBuilder: (context, state) {
                              return const MaterialPage(child: InsideDuaView());
                            },
                          ),
                        ]),
                  ]),
              GoRoute(
                  name: MyAppRouteConstants.userProfileRoutename,
                  path: MyAppRouteConstants.userProfileRoutename,
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: UserProfileView());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.editProfileRouteName,
                      path: MyAppRouteConstants.editProfileRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: EditProfileView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.inviteFreindRouteName,
                      path: MyAppRouteConstants.inviteFreindRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: InviteFriendView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.termsAndConditionsRouteName,
                      path: MyAppRouteConstants.termsAndConditionsRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: TermsConditionsView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.supportHelpRouteName,
                      path: MyAppRouteConstants.supportHelpRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: SupportHelpView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.privacyPolicyRouteName,
                      path: MyAppRouteConstants.privacyPolicyRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: PrivacyPolicyView());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.aboutUsRouteName,
                      path: MyAppRouteConstants.aboutUsRouteName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: AboutUsView());
                      },
                    ),
                  ]),
            ]),
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
