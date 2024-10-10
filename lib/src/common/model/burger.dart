class Burger {
  final String name;
  final String restaurant;
  final double price;

  Burger({
    required this.name,
    required this.restaurant,
    required this.price,
  });

  factory Burger.fromJson(Map<String, dynamic> json) {
    return Burger(
      name: json['strMeal'] ?? 'Unknown',
      restaurant: json['strCategory'] ?? 'Unknown',
      price: (json['idMeal'] as String).length.toDouble(),
    );
  }
}


