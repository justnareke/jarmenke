import 'package:flutter/material.dart';
import 'package:jarmenke/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Себет',
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.bold),
      ),
      // ignore: prefer_const_constructors
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
