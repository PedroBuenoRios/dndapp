class Monster {
  String name;
  String iconPath;
  int health;
  double classDificulty;
  late int rating;

  Monster(
      {required this.iconPath,
      required this.name,
      required this.health,
      required this.classDificulty});
}
