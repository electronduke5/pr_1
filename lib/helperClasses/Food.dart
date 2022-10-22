class Food {
  String image;
  String name;
  String category;
  int price;

  Food(
      {required this.image,
        required this.name,
        required this.category,
        required this.price});

  static List<Food> foods = [
    Food(
      image: 'assets/images/original_salad.png',
      name: 'Original Salad',
      category: 'Lovy Food',
      price: 8,
    ),
    Food(
      image: 'assets/images/fresh_salad.png',
      name: 'Fresh Salad',
      category: 'Cloudy Resto',
      price: 10,
    ),
    Food(
      image: 'assets/images/ice_cream.png',
      name: 'Yummie Ice Cream',
      category: 'Circlo Resto',
      price: 6,
    ),
    Food(
      image: 'assets/images/vegan_salad.png',
      name: 'Vegan Special',
      category: 'Haty Food',
      price: 11,
    ),
    Food(
      image: 'assets/images/pasta.png',
      name: 'Mixed Pasta',
      category: 'Recto Food',
      price: 13,
    ),
  ];
}
