class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final String description;
  final List<String> colors;
  final List<String> sizes;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.colors,
    required this.sizes,
  });
}
