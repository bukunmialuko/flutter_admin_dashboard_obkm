import 'package:admin_dashboard/src/pages/confirm/confirm_page.dart';
import 'package:admin_dashboard/src/pages/login/log_in_page.dart';
import 'package:admin_dashboard/src/pages/recover/recover_page.dart';
import 'package:admin_dashboard/src/pages/routes/routes.dart';
import 'package:admin_dashboard/src/pages/signup/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'fade_route.dart';

Route<dynamic>? routes(RouteSettings settings) {
  switch (settings.name) {
    case PageRoutes.root:
    case PageRoutes.login:
      return FadeRoute<void>(page: const LoginPage());

    case PageRoutes.signup:
      return FadeRoute<void>(page: const SignupPage());

    case PageRoutes.recover:
      return FadeRoute<void>(page: const RecoverPage());

    case PageRoutes.confirm:
      return FadeRoute<void>(page: const ConfirmPage());

    default:
      return FadeRoute<void>(
        page: const Scaffold(
          body: Center(child: Text('404: Page Not Found')),
        ),
      );
  }
}
