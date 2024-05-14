import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dndapp/database/database_firestore.dart';
import 'package:dndapp/models/ficha_model.dart';
import 'package:dndapp/services/auth_services.dart';
import 'package:flutter/material.dart';

class FichasRepository extends ChangeNotifier {
  List<Ficha> _lista = [];
  late FirebaseFirestore db;
  late AuthService auth;

  FichasRepository({required this.auth}) {
    _startRepository();
  }

  _startRepository() async {
    await _startFirestore();
    await _readFichas();
  }

  _startFirestore() {
    db = DBFirestore.get();
  }

  _readFichas() async {
    if (auth.user != null && _lista.isEmpty) {
      final snapshot =
          await db.collection('usuario/${auth.user!.uid}/fichas').get();

      snapshot.docs.forEach((doc) {
        Ficha ficha = Ficha(
            nome: doc.get('nome'),
            classeDificuldade: doc.get('classeDificuldade'),
            vida: doc.get('vida'),
            iconPath: 'images/tiamat.jpeg');
        _lista.add(ficha);
        notifyListeners();
      });
    }
  }
}
