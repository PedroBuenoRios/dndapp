import 'package:dndapp/color_scheme.dart';
import 'package:dndapp/models/monster_model.dart';
import 'package:dndapp/pages/busca_resultado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  Widget _listTileBuilder(BuildContext contex, int index) {
    return ListTile(
      leading: const Icon(Icons.folder),
      title: Text(
        _folders[index],
        style: const TextStyle(
            color: Color(primaryTextColor),
            fontWeight: FontWeight.w400,
            fontSize: 16),
      ),
    );
  }

  Widget _gridItemBuilder(BuildContext context, int index) {
    final monsterItem = _monsters[index];
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title: Text(monsterItem.name),
              subtitle: Text(
                'CD: ${monsterItem.classDificulty.toString()}',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.edit),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'EDITAR',
                          style: TextStyle(
                            color: Color(0xFF6200EE),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.delete),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'EXCLUIR',
                          style: TextStyle(
                            color: Color(0xFF6200EE),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  clipBehavior: Clip.antiAlias,
                  child:
                      Image.asset('images/reddragon2.webp', fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('images/Reddragon.webp',
                      width: double.infinity,
                      height: 255,
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.9)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 120, 20, 0),
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
                                                const SearchResultPage()));
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
                                                builder: (BuildContext
                                                        context) =>
                                                    const SearchResultPage()));
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
                      Padding(
                        padding: EdgeInsets.zero,
                        child: ListView.separated(
                          itemCount: _folders.length,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: _listTileBuilder,
                          separatorBuilder: (_, __) => const Divider(
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.zero,
                          child: GridView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: _monsters.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1.0,
                              ),
                              itemBuilder: _gridItemBuilder))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
