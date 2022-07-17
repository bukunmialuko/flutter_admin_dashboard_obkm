import 'package:admin_dashboard/src/pages/login/log_in_page.dart';
import 'package:admin_dashboard/src/pages/routes/routes.dart';
import 'package:flutter/material.dart';

import 'fade_route.dart';

var routes = (RouteSettings settings) {
  switch (settings.name) {
    case PageRoutes.login:
      return FadeRoute(
        page: const LoginPage(),
      );

    case PageRoutes.login:
      return FadeRoute(
        page: const LoginPage(),
      );

    default:
      return FadeRoute(
        page: const Scaffold(
          body: Center(
            child: Text("404: Page Not Found"),
          ),
        ),
      );
  }
};
