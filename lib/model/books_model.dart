

class Books {
  final int id;
  final String name;
  final double price;
  final String image;
  final String description;
  int qty;

  Books(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.description,
      this.qty = 1
      });

}

