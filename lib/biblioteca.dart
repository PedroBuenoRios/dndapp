import 'package:flutter/material.dart';
import 'package:dndapp/model/monster_model.dart';
import 'model/folder_model.dart';
import 'color_scheme.dart';

class BibliotecaPage extends StatefulWidget {
  const BibliotecaPage({super.key});

  @override
  State<BibliotecaPage> createState() => _BibliotecaPageState();
}

class _BibliotecaPageState extends State<BibliotecaPage> {
  final List<String> _folders = [
    'Pasta 1',
    'Pasta 2',
    'Pasta 3',
    'Pasta 4',
  ];

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: const Padding(
      //     padding: EdgeInsets.only(left: 16),
      //     child: ImageIcon(
      //       AssetImage('images/dnd-logo.png'),
      //       color: Colors.red,
      //     ),
      //   ),
      //   title: const Text('Dungeons and Dragons'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        unselectedFontSize: 12,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Image.asset('images/Reddragon.webp',
                      width: double.infinity,
                      height: 255,
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.9)),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 120, 20, 0),
                    child: Column(
                      children: [
                        const Text(
                          'Dungeons and Dragons',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 27, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SearchResultPage()));
                                    },
                                    child: const Icon(
                                      Icons.search,
                                      color: Color(secondaryTextColor),
                                      size: 24,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              5, 0, 0, 2),
                                      child: TextFormField(
                                        //controller: _model.textController,
                                        //focusNode: _model.textFieldFocusNode,
                                        onFieldSubmitted: (_) async {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          SearchResultPage()));
                                        },
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                          hintText: 'Procurar por ficha...',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Color(secondaryTextColor),
                                          fontFamily: 'Playfair Display',
                                          fontSize: 16,
                                          letterSpacing: 0,
                                        ),
                                        // validator: _model
                                        //     .textControllerValidator
                                        //     .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 32, 0, 20),
                            child: Text(
                              'Suas fichas',
                              style: TextStyle(
                                color: Color(secondaryTextColor),
                                fontFamily: 'Playfair Display',
                                fontSize: 18,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(context) {
    return Text('Busca');
  }
}
