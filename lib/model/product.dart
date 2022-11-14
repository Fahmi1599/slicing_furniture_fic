class Product{
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
    this.isFavorite = false,
  });



}