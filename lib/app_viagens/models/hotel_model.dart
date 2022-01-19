class Hotel {
  String? imageUrl;
  String? name;
  String? address;
  int? price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images_app_viagens/hotel0.jpg',
    name: 'Mediterrane Hotel',
    address: 'Visualizar no mapa',
    price: 575,
  ),
  Hotel(
    imageUrl: 'assets/images_app_viagens/hotel1.jpg',
    name: 'Pousada Porto Praia',
    address: 'Visualizar no mapa',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images_app_viagens/hotel2.jpg',
    name: 'Pousada Mirante do Atalaia',
    address: 'Visualizar no mapa',
    price: 240,
  ),
];
