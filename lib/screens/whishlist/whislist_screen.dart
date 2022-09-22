import 'package:flutter/material.dart';
import 'package:jarmenke/widgets/widgets.dart';

class WhishlistScreen extends StatelessWidget {
  static const String routeName = '/whishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WhishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Таңдаулы',
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.bold),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
