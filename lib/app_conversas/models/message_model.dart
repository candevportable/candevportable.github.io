import 'user_model.dart';

class Message {
  final User sender;
  final String? time;
  final String? text;
  final bool? isLiked;
  final bool? unread;

  Message({
    required this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
    id: 0,
    name: 'Carlos',
    imageUrl: 'assets/assets_app_conversas/greg.jpg');

final User greg =
    User(id: 1, name: 'Jorge', imageUrl: 'assets/assets_app_conversas/greg.jpg');
final User james = User(
    id: 2, name: 'James', imageUrl: 'assets/assets_app_conversas/james.jpg');
final User john =
    User(id: 3, name: 'João', imageUrl: 'assets/assets_app_conversas/john.jpg');
final User olivia = User(
    id: 4, name: 'Olívia', imageUrl: 'assets/assets_app_conversas/olivia.jpg');
final User sam =
    User(id: 5, name: 'Sara', imageUrl: 'assets/assets_app_conversas/sam.jpg');
final User sophia = User(
    id: 6, name: 'Sophia', imageUrl: 'assets/assets_app_conversas/sophia.jpg');
final User steven = User(
    id: 7, name: 'Pedro', imageUrl: 'assets/assets_app_conversas/steven.jpg');

List<User> favorites = [sam, james, olivia, john, greg];

List<Message> chats = [
  Message(
    sender: olivia,
    time: '4:31 PM',
    text: 'Assim ficou melhor?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'Té fechado então, hoje o pau quebra',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: john,
    time: '3:27 PM',
    text: 'o James te chamou pro fut hoje né?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:12 PM',
    text: 'Olá Carlos, como vai?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:54 PM',
    text: 'Olha, isso não é pra mim',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sam,
    time: '1:31 PM',
    text: 'Desculpe pelo incômodo',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '11:43 AM',
    text: 'Valeu parceiro, até a próxima',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: currentUser,
    time: '3:45 PM',
    text: 'Té fechado então, hoje o pau quebra',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '3:45 PM',
    text: 'Foi mal tava resolvendo um problema aqui',
    isLiked: false,
  ),
  Message(
    sender: james,
    time: '3:09 PM',
    text:
        'Oito em ponto começa, mas bora se encontrar na porta uns 15 min antes',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '3:09 PM',
    text: 'Massa, que horas?',
    isLiked: false,
  ),
  Message(
    sender: james,
    time: '3:07 PM',
    text: 'O plano é bater uma bola e dps tomar uma',
    isLiked: true,
  ),
  Message(
    sender: currentUser,
    time: '2:41 PM',
    text: 'Oq temos para hoje?',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '2:40 PM',
    text: 'Fala James, tudo em cima irmão',
    isLiked: false,
  ),
  Message(
    sender: james,
    time: '2:30 PM',
    text: 'E aí Carlos, tranquilo?',
    isLiked: true,
  ),
];
