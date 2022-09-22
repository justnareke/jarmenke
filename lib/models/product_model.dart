import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imgUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });
  @override
  List<Object?> get props =>
      [name, category, imgUrl, price, isPopular, isRecommended];

  static List<Product> products = [
    Product(
        name: 'Coca-Cola',
        category: 'Сусын',
        imgUrl:
            'https://bitnovosti.com/wp-content/uploads/2021/07/o.890341.jpg',
        price: 400,
        isPopular: true,
        isRecommended: false),
    Product(
        name: 'Pepsi',
        category: 'Сусын',
        imgUrl:
            'https://aif-s3.aif.ru/images/029/391/4ae543c2e0c87a4933f0c3a2165db9c6.jpg',
        price: 420,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Банан',
        category: 'Смузи',
        imgUrl:
            'https://adrush-5ka-games.ru/wp-content/uploads/5/2/3/523eec06747603284e3fcd5e7ced88d2.jpeg',
        price: 1200,
        isPopular: true,
        isRecommended: false),
    Product(
        name: 'Tassay',
        category: 'Су',
        imgUrl:
            'https://n1s2.hsmedia.ru/79/7a/4c/797a4c55ddcb44d078aeec3526969022/1000x600_21_1832d75b98ae0225ada06ecc217b11fd@1718x1280_0xac120003_10037929011629118354.jpg',
        price: 300,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Asu',
        category: 'Су',
        imgUrl: 'https://i.ytimg.com/vi/DtjDtnDF0So/maxresdefault.jpg',
        price: 300,
        isPopular: true,
        isRecommended: true),
  ];
}
