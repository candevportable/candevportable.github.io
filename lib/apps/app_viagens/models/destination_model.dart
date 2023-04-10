import '../models/activity_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? country;
  String? description;
  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/assets_app_viagens/stmarksbasilica.jpg',
    name: 'Basílica de São Marcos',
    type: 'Visita Guiada',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/gondola.jpg',
    name: 'Veneza',
    type: 'Passeio de Barco',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 3,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/murano.jpg',
    name: 'Tour em Murano e Burano',
    type: 'Passeio Turístico',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 4,
    price: 125,
  ),
];

List<Activity> activities2 = [
  Activity(
    imageUrl: 'assets/assets_app_viagens/stmarksbasilica.jpg',
    name: 'Basílica de São Marcos',
    type: 'Visita Guiada',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/murano.jpg',
    name: 'Tour em Murano e Burano',
    type: 'Passeio Turístico',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 4,
    price: 125,
  ),
];

List<Activity> activities3 = [
  Activity(
    imageUrl: 'assets/assets_app_viagens/stmarksbasilica.jpg',
    name: 'Basílica de São Marcos',
    type: 'Visita Guiada',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/gondola.jpg',
    name: 'Veneza',
    type: 'Passeio de Barco',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 3,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/murano.jpg',
    name: 'Tour em Murano e Burano',
    type: 'Passeio Turístico',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 4,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/stmarksbasilica.jpg',
    name: 'Basílica de São Marcos',
    type: 'Visita Guiada',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/gondola.jpg',
    name: 'Veneza',
    type: 'Passeio de Barco',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 3,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/assets_app_viagens/murano.jpg',
    name: 'Tour em Murano e Burano',
    type: 'Passeio Turístico',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 4,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/assets_app_viagens/venice.jpg',
    city: 'Veneza',
    country: 'Itália',
    description: 'Visite Veneza para uma aventura inesquecível.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/assets_app_viagens/paris.jpg',
    city: 'Paris',
    country: 'França',
    description: 'Visite Paris, terra das artes e da gastronomia.',
    activities: activities2,
  ),
  Destination(
    imageUrl: 'assets/assets_app_viagens/newdelhi.jpg',
    city: 'Nova Delhi',
    country: 'Índia',
    description: 'Visite Nova Delhi e seus pontos turísticos.',
    activities: activities3,
  ),
  Destination(
    imageUrl: 'assets/assets_app_viagens/saopaulo.jpg',
    city: 'São Paulo',
    country: 'Brasil',
    description: 'Visite São Paulo e aproveite essa incrível cidade.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/assets_app_viagens/newyork.jpg',
    city: 'Nova York',
    country: 'Estados Unidos',
    description: 'Visite Nova York, a cidade que nunca dorme.',
    activities: activities3,
  ),
];
