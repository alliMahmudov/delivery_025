
class FastFood{
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;
  int qty;

  FastFood({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    this.qty = 1
  });
}
