import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dndapp/database/database_firestore.dart';
import 'package:dndapp/models/ficha_model.dart';
import 'package:dndapp/services/auth_services.dart';
import 'package:flutter/material.dart';

class FichasRepository extends ChangeNotifier {
  final List<Ficha> _lista = [];
  late FirebaseFirestore db;
  late AuthService auth;

  FichasRepository({required this.auth}) {
    _startRepository();
  }

  UnmodifiableListView<Ficha> get lista => UnmodifiableListView(_lista);

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
        Ficha ficha = Ficha();
        _lista.add(ficha);
        notifyListeners();
      });
    }
  }
}
