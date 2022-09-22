import 'package:flutter/material.dart';
import 'package:jarmenke/models/category_model.dart';
import 'package:jarmenke/models/models.dart';
import 'package:jarmenke/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          )),
          SectionTitle(title: 'Ең көп сатылым'),
          //Өнім тізбектері
          //ProductCard(
          // product: Product.products[0],
          //)
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          SectionTitle(title: 'Кең танымал'),
          //Өнім тізбектері
          //ProductCard(
          // product: Product.products[0],
          //)
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
