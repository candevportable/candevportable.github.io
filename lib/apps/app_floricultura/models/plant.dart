class Plant {
  String title;
  String country;
  String image;
  int price;

  Plant(
      {required this.title,
      required this.country,
      required this.image,
      required this.price});
}

final List<Plant> plants = [
  Plant(
      title: "Orquídea Azul",
      country: "Brasil",
      image: "assets/assets_app_floricultura/images/orquidea_azul.jpg",
      price: 198),
  Plant(
      title: "Begônia Maculata",
      country: "Brasil",
      image: "assets/assets_app_floricultura/images/begonia_maculata.jpg",
      price: 187),
  Plant(
      title: "Kalanchoe Vermelho",
      country: "Madagascar",
      image: "assets/assets_app_floricultura/images/kalanchoe_vermelho.jpg",
      price: 74),
];
