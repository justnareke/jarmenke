import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imgUrl;

  const Category({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<Category> categories = [
    Category(
        name: 'Сусын',
        imgUrl:
            'https://pbs.twimg.com/media/FVVTf7QXoAAk1s4?format=jpg&name=large'),
    Category(
        name: 'Смузи',
        imgUrl:
            'https://pic.rutubelist.ru/video/f2/97/f29726f135100ff440f5c018ede6ab9d.jpg'),
    Category(
        name: 'Су',
        imgUrl:
            'http://www.aapkisaheli.com/picture_image/drinking-cold-water-does-to-your-body-will-shock-you-1-1475-aps-d.jpg'),
  ];
}
