import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T?> to<T>({required String routeName}) {
    return navigatorKey.currentState!.pushNamed<T>(routeName);
  }

  void back<T>([T? result]) {
    navigatorKey.currentState!.pop<T>(result);
  }

  Future<T?> clearAllTo<T>({required String routeName}) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil<T>(routeName, (route) => false);
  }
}
