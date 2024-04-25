import 'package:delivery_025/constants/assets.dart';
import 'package:equatable/equatable.dart';

class Clothes extends Equatable {
  final int id;
  final String name;
  final String image;
  final String price;

  const Clothes({
    required this.id,
    required this.name,
    required this.image,
    required this.price
  });

  @override
  List<Object?> get props => [id, name, image, price];

  static List<Clothes> clothes = [
    Clothes(
      id: 1,
      name: "Polo shirt",
      image: Assets.polo,
      price: "\$30"
    ),
    Clothes(
      id: 2,
      name: "Dress",
      image: Assets.dress,
      price: "\$40"
    ),Clothes(
      id: 3,
      name: "Hoodie",
      image: Assets.hoodie,
      price: "\$15"
    ),Clothes(
      id: 4,
      name: "Shirt",
      image: Assets.shirt,
      price: "\$10"
    ),Clothes(
      id: 5,
      name: "Flip flops",
      image: Assets.flipFlops,
      price: "\$6"
    ),Clothes(
      id: 6,
      name: "Shorts",
      image: Assets.shorts,
      price: "\$10"
    ),Clothes(
      id: 7,
      name: "Skirt",
      image: Assets.skirt,
      price: "\$22"
    ),Clothes(
      id: 8,
      name: "Jeans",
      image: Assets.jeans,
      price: "\$33"
    ),Clothes(
      id: 9,
      name: "Shoes",
      image: Assets.shoes,
      price: "\$73"
    ),Clothes(
      id: 10,
      name: "Coat",
      image: Assets.coat,
      price: "\$160"
    ),Clothes(
      id: 11,
      name: "High heels",
      image: Assets.highHeels,
      price: "\$64"
    ),Clothes(
      id: 12,
      name: "Suit",
      image: Assets.suit,
      price: "\$230"
    ),Clothes(
      id: 13,
      name: "Cap",
      image: Assets.cap,
      price: "\$12"
    ),Clothes(
      id: 14,
      name: "Socks",
      image: Assets.socks,
      price: "\$2.5"
    ),Clothes(
      id: 15,
      name: "Skirt",
      image: Assets.skirt,
      price: "\$17"
    ),Clothes(
      id: 16,
      name: "Bra",
      image: Assets.bra,
      price: "\$26"
    ),Clothes(
      id: 17,
      name: "Scarf",
      image: Assets.scarf,
      price: "\$11"
    ),Clothes(
      id: 18,
      name: "Swimsuit",
      image: Assets.swimsuit,
      price: "\$38"
    ),Clothes(
      id: 19,
      name: "Hat",
      image: Assets.hat,
      price: "\$16"
    ),Clothes(
      id: 20,
      name: "Gloves",
      image: Assets.gloves,
      price: "\$12"
    ),Clothes(
      id: 21,
      name: "Sunglasses",
      image: Assets.sunglasses,
      price: "\$79"
    ),Clothes(
      id: 22,
      name: "Leather jacket",
      image: Assets.jacket,
      price: "\$119"
    ),Clothes(
      id: 23,
      name: "Sweater",
      image: Assets.sweater,
      price: "\$46"
    ),Clothes(
      id: 24,
      name: "Compression suit",
      image: Assets.compressionSuit,
      price: "\$75"
    ),Clothes(
      id: 25,
      name: "Tie",
      image: Assets.tie,
      price: "\$50"
    ),
  ];
}