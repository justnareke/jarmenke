import 'package:flutter/material.dart';
import 'package:jarmenke/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Jarmenke',
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.bold),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
