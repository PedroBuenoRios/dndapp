import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dndapp/database/database_firestore.dart';
import 'package:dndapp/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CriarFichaController {
  late AuthService _auth;
  late FirebaseFirestore db;

  CriarFichaController() {
    db = DBFirestore.get();
  }

  criarFicha(BuildContext context) async {
    _auth = context.read<AuthService>();
    await db
        .collection('usuarios/${_auth.user!.uid}/fichas')
        .doc(nomeFichaTextFieldController!.text)
        .set({
      'nome': nomeFichaTextFieldController!.text,
      'classeDificuldade': classeDificuldadeTextFieldController!.text,
      'vida': vidaTextFieldController!.text,
    });
  }

  TextEditingController? nomeFichaTextFieldController;

  TextEditingController? classeDificuldadeTextFieldController;

  TextEditingController? vidaTextFieldController;
}
