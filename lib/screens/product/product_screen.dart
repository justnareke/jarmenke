import 'package:flutter/material.dart';
import 'package:jarmenke/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Өнім',
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.bold),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
