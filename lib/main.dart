import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moyuru Aizawa',
      theme: appTheme,
      home: HomePage(),
    );
  }
}
