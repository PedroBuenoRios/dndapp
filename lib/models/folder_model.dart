import 'package:dndapp/models/monster_model.dart';

class Folder {
  String name;
  String leading;
  late List<Monster> monster;

  Folder({required this.name, required this.leading});
}
