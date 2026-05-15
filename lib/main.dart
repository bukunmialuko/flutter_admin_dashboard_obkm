import 'package:admin_dashboard/src/di/service_locator.dart';
import 'package:admin_dashboard/src/navigation/navigation_service.dart';
import 'package:admin_dashboard/src/navigation/routes.dart';
import 'package:admin_dashboard/src/pages/routes/routes.dart';
import 'package:admin_dashboard/src/res/font_family.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().setUp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: FontFamily.dmSans),
      navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
      initialRoute: PageRoutes.root,
      onGenerateRoute: routes,
    );
  }
}
