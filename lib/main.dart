// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:jarmenke/config/app_router.dart';
import 'package:jarmenke/config/theme.dart';
import 'package:jarmenke/screens/home/home_screen.dart';

import 'widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jarmenke',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
