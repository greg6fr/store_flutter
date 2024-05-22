class Product {
  // constructeur

  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Map rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
}
