import 'package:admin_dashboard/src/res/font_family.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: FontFamily.dmSans),
      home: Container(),
    );
  }
}
