import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class ContasRepository extends ChangeNotifier {
  late Database db;
  late int id;
  late String _email;

  ContasRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getEmail();
    //await _getNomeDeUsuario();
  }

  _getEmail() async {
    // db = await DB.instance.database;
    //List contas = await db.query('conta', where: 'email');
  }
}
