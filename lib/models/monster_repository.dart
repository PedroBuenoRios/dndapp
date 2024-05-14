import 'package:dndapp/models/monster_model.dart';

class MonsterRepository {
  static List<Monster> lista = [
    Monster(
        iconPath: "images/tiamat.jpeg",
        name: 'Tiamat1',
        health: 1,
        classDificulty: 10),
    Monster(
        iconPath: "images/tiamat.jpeg",
        name: 'Tiamat2',
        health: 2,
        classDificulty: 10),
    Monster(
        iconPath: "images/tiamat.jpeg",
        name: 'Tiamat3',
        health: 3,
        classDificulty: 10),
  ];
}
