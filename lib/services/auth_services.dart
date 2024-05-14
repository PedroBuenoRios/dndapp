import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  bool isLoading = true;

  AuthService() {
    _authCheck();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? userFirebase) {
      user = (userFirebase == null) ? null : userFirebase;
      isLoading = false;
      notifyListeners();
    });
  }

  _getUser() {
    user = _auth.currentUser;
    notifyListeners();
  }

  signup(String username, String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _getUser();
      await user?.updateDisplayName(username);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('A senha é muito fraca');
      } else if (e.code == 'email-already-exists') {
        throw AuthException('Email já está cadastrado');
      }
    }
  }

  signin(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('Email não encontrado');
      } else if (e.code == 'wrong-password') {
        throw AuthException('A senha está incorreta');
      }
    }
  }

  logout() async {
    await _auth.signOut();
    _getUser();
  }
}
