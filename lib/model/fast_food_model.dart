import 'package:delivery_025/constants/assets.dart';
import 'package:equatable/equatable.dart';

class FastFood extends Equatable {
  final int id;
  final String name;
  final String image;
  final String description;
  final String price;

  const FastFood({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [id, name, image, description, price];

  static List<FastFood> food = [
    FastFood(
      id: 1,
      name: "Hamburger",
      image: Assets.hamburger,
      description: "",
      price: "2 \$"
    ),
    FastFood(
        id: 2,
        name: "Double burger",
        image: Assets.double,
        description: "",
        price: "2.5 \$"
    ),
    FastFood(
      id: 3,
      name: "Cheeseburger",
      image: Assets.cheese,
      description: "",
      price: "2.5 \$"
    ),
    FastFood(
        id: 4,
        name: "Double Cheeseburger",
        image: Assets.double_cheese,
        description: "",
        price: "2.8 \$"
    ),
    FastFood(
        id: 5,
        name: "Lavash",
        image: Assets.lavash,
        description: "",
        price: "2 \$"
    ),
    FastFood(
        id: 6,
        name: "Hot Dog",
        image: Assets.hot_dog,
        description: "",
        price: "1 \$"
    ),
    FastFood(
        id: 7,
        name: "Doner",
        image: Assets.donar,
        description: "",
        price: "2.5 \$"
    ),
    FastFood(
      id: 8,
      name: "Club Sandwich",
      image: Assets.club,
      description: "",
      price: "3 \$"
    ),FastFood(
      id: 9,
      name: "Fries",
      image: Assets.fries,
      description: "",
      price: "\$2"
    ),
    FastFood(
      id: 10,
      name: "Pizza Pepperoni",
      image: Assets.pepperoni,
      description: "tomato sauce, pepperoni, mozzarella cheese",
      price: "\$10"
    ),
    FastFood(
        id: 11,
        name: "Pizza Margarita",
        image: Assets.margarita,
        description: "tomato sauce, tomatoes, oregano, mozzarella cheese",
        price: "\$8"
    ),FastFood(
      id: 12,
      name: "Pizza Sausage with mushrooms",
      image: Assets.sausage_pizza,
      description: "tomato sauce, sausages, mushrooms, tomatoes, mozzarella cheese",
      price: "\$8"
    ),
  ];
}
