import 'package:dndapp/pages/biblioteca.dart';
import 'package:dndapp/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:dndapp/models/monster_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Monster> _monsters = [
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

  int _selectedIndex = 0;
  var pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageViewController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (int index) => setState(() {
          _selectedIndex = index;
        }),
        children: [BibliotecaPage(), BibliotecaPage(), const ProfilePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedFontSize: 12,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: (value) => setState(() {
          pageViewController.animateToPage(
            value,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
          _selectedIndex = value;
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Biblioteca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Compendium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic to create a new folder or card
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildMonsterCard(Monster monster) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Text(monster.name),
          AspectRatio(
              aspectRatio: 1.4,
              child: Image.asset(
                monster.iconPath,
              )),
          Row(children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 15)),
            const Text("CD: "),
            Text(monster.classDificulty.toString()),
          ]),
        ],
      ),
    );
  }

  Widget _buildFolder(String name) {
    return ListTile(
      title: Text(name),
      leading: const Icon(Icons.folder),
    );
  }
}
