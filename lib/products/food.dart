import '../constants/assets.dart';
import '../model/fast_food_model.dart';

class FoodList{
  FoodList._();

  static List<FastFood> food = [
    FastFood(
      id: 1,
      name: "Hamburger",
      image: Assets.hamburger,
      description: "",
      price: 2.0, // Updated from "2" to 2.0
    ),
    FastFood(
      id: 2,
      name: "Double burger",
      image: Assets.double,
      description: "",
      price: 2.5, // Updated from "\$2.5" to 2.5
    ),
    FastFood(
      id: 3,
      name: "Cheeseburger",
      image: Assets.cheese,
      description: "",
      price: 2.5, // Updated from "\$2.5" to 2.5
    ),
    FastFood(
      id: 4,
      name: "Double Cheeseburger",
      image: Assets.double_cheese,
      description: "",
      price: 2.8, // Updated from "\$2.8" to 2.8
    ),
    FastFood(
      id: 5,
      name: "Lavash",
      image: Assets.lavash,
      description: "",
      price: 2.0, // Updated from "\$2" to 2.0
    ),
    FastFood(
      id: 6,
      name: "Hot Dog",
      image: Assets.hot_dog,
      description: "",
      price: 1.0, // Updated from "\$1" to 1.0
    ),
    FastFood(
      id: 7,
      name: "Doner",
      image: Assets.donar,
      description: "",
      price: 2.5, // Updated from "\$2.5" to 2.5
    ),
    FastFood(
      id: 8,
      name: "Club Sandwich",
      image: Assets.club,
      description: "",
      price: 3.0, // Updated from "\$3" to 3.0
    ),
    FastFood(
      id: 9,
      name: "Fries",
      image: Assets.fries,
      description: "",
      price: 2.0, // Updated from "\$2" to 2.0
    ),
    FastFood(
      id: 10,
      name: "Pizza Pepperoni",
      image: Assets.pepperoni,
      description: "tomato sauce, pepperoni, mozzarella cheese",
      price: 10.0, // Updated from "\$10" to 10.0
    ),
    FastFood(
      id: 11,
      name: "Pizza Margarita",
      image: Assets.margarita,
      description: "tomato sauce, tomatoes, oregano, mozzarella cheese",
      price: 8.0, // Updated from "\$8" to 8.0
    ),
    FastFood(
      id: 12,
      name: "Pizza Sausage with mushrooms",
      image: Assets.sausage_pizza,
      description:
      "tomato sauce, sausages, mushrooms, tomatoes, mozzarella cheese",
      price: 8.0, // Updated from "\$8" to 8.0
    ),
  ];
}