

class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;

  final double price;

  Product({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
    required this.description,
  });
}
