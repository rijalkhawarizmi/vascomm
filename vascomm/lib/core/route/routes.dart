import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vascomm/src/authentication/presentation/views/login_page.dart';
import 'package:vascomm/src/home/presentation/views/home_page.dart';
import 'package:vascomm/src/home/presentation/views/profile_page.dart';

import '../../src/authentication/presentation/views/register_page.dart';

final GoRouter routerApp = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name:  LoginPage.loginRoute,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/register-route',
      name: RegisterPage.registerRoute,
      builder: (BuildContext context, GoRouterState state) {
        return RegisterPage();
      },
    ),
    GoRoute(
      path: '/home-page-route',
      name: HomePage.routeHomePage,
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: '/profile-page-route',
      name: ProfilePage.routeProfilePage,
      builder: (BuildContext context, GoRouterState state) {
        return ProfilePage();
      },
    ),
  ],
);
