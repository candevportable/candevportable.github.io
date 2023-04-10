import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/user/user.dart';

class UserController {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Adiciona um novo usuário ao Firestore
  static Future<void> addUser(User user) async {
    await _firestore.collection('users').doc(user.uuid).set(user.toJson());
  }

  // Obtém um usuário específico do Firestore
  static Future<User?> getUser(String uuid) async {
    final doc = await _firestore.collection('users').doc(uuid).get();
    if (doc.exists) {
      final user = User.fromJson(doc.data()!);
      return user;
    } else {
      return null;
    }
  }

  // Atualiza um usuário existente no Firestore
  static Future<void> updateUser(User user) async {
    await _firestore.collection('users').doc(user.uuid).update(user.toJson());
  }

  // Remove um usuário existente do Firestore
  static Future<void> deleteUser(String uuid) async {
    await _firestore.collection('users').doc(uuid).delete();
  }
}
