class Dish {
  final String id;
  final String nameEs;
  final String nameEn;
  final String descriptionEs;
  final String descriptionEn;
  final List<String> ingredientsEs;
  final List<String> ingredientsEn;
  final double price;
  final String imageUrl;
  final String category;
  final bool inStock;

  Dish({
    required this.id,
    required this.nameEs,
    required this.nameEn,
    required this.descriptionEs,
    required this.descriptionEn,
    required this.ingredientsEs,
    required this.ingredientsEn,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.inStock = true,
  });

  String getName(String langCode) => langCode == 'es' ? nameEs : nameEn;
  String getDescription(String langCode) =>
      langCode == 'es' ? descriptionEs : descriptionEn;
  List<String> getIngredients(String langCode) =>
      langCode == 'es' ? ingredientsEs : ingredientsEn;
}
