import 'package:dndapp/color_scheme.dart';
import 'package:dndapp/pages/busca_resultado.dart';
import 'package:flutter/material.dart';

class BibliotecaPage extends StatelessWidget {
  BibliotecaPage({super.key});

  final List<String> _folders = [
    'Pasta 1',
    'Pasta 2',
    'Pasta 3',
    'Pasta 4',
  ];

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
                child: Image.asset('images/Reddragon.webp',
                    width: double.infinity,
                    height: 255,
                    fit: BoxFit.cover,
                    opacity: const AlwaysStoppedAnimation(0.9)),
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
                      Align(
                        alignment: const AlignmentDirectional(-1, 0),
                        child: ListView.separated(
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: const Icon(Icons.folder),
                                title: Text(_folders[index]),
                              );
                            },
                            padding: const EdgeInsets.all(16),
                            separatorBuilder: (_, __) => const Divider(
                                  indent: 7,
                                  endIndent: 7,
                                  color: Colors.grey,
                                  thickness: 2,
                                ),
                            itemCount: _folders.length),
                      ),
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
