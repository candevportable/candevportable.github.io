import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Método para verificar se o usuário está logado
  Future<bool> isLoggedIn() async {
    final currentUser = _auth.currentUser;
    return currentUser != null;
  }

  // Método para fazer login com o Google
  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
    await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final result = await _auth.signInWithCredential(credential);
    return result;
  }

  // Método para fazer login com email e senha
  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    final result =
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return result;
  }

  // Método para fazer logout
  Future<void> logout() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  // Método para recuperar a senha do usuário
  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  // Método para registrar um novo usuário com email e senha
  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String password) async {
    final result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return result;
  }

  // Método para atualizar a senha do usuário
  Future<void> updatePassword(String password) async {
    final currentUser = _auth.currentUser;
    await currentUser!.updatePassword(password);
  }

  // Método para atualizar o email do usuário
  Future<void> updateEmail(String email) async {
    final currentUser = _auth.currentUser;
    await currentUser!.updateEmail(email);
  }

  // Método para atualizar o nome do usuário
  Future<void> updateName(String name) async {
    final currentUser = _auth.currentUser;
    await currentUser!.updateDisplayName(name);
  }
}
