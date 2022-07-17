import 'dart:async';

import 'package:admin_dashboard/src/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  Future<void> setUp() async {
    GetIt.I.registerSingleton<NavigationService>(NavigationService()); //
  }
}
