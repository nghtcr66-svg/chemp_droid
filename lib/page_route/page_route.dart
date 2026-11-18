


import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../screens/createaccount_screen.dart';
import '../screens/discover_screen.dart';
import '../screens/landing_screen.dart';
import '../screens/login_screen.dart';
import '../screens/menu_screeen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/shcelduegame_screen.dart';

part 'page_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: CreateAccountRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: LandingRoute.page),
    AutoRoute(page: DiscoverRoute.page),
    AutoRoute(page: MenuRoute.page),
    AutoRoute(page: ShcelduegameRoute.page),
  ];
}