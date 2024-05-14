import 'package:dndapp/color_scheme.dart';
import 'package:dndapp/controllers/criar_ficha_controller.dart';
import 'package:dndapp/widgets/text_field.dart';
import 'package:flutter/material.dart';

class CriarFichaPage extends StatefulWidget {
  const CriarFichaPage({super.key});

  @override
  State<CriarFichaPage> createState() => CriarFichaPageState();
}

class CriarFichaPageState extends State<CriarFichaPage> {
  final formKey = GlobalKey<FormState>();

  late CriarFichaController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CriarFichaController();
    _controller.classeDificuldadeTextFieldController = TextEditingController();
    _controller.nomeFichaTextFieldController = TextEditingController();
    _controller.vidaTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando uma ficha'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFieldCustom(
                    labelText: 'Nome da Ficha',
                    hintText: 'Nome da Ficha',
                    fontSize: 30,
                    controller: _controller.nomeFichaTextFieldController,
                  ),
                  TextFieldCustom(
                    labelText: 'Classe de dificuldade',
                    hintText: 'Classe de dificuldade',
                    fontSize: 30,
                    controller:
                        _controller.classeDificuldadeTextFieldController,
                  ),
                  TextFieldCustom(
                    labelText: 'Vida',
                    hintText: 'Vida',
                    fontSize: 30,
                    controller: _controller.vidaTextFieldController,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      width: double.maxFinite,
                      child: FilledButton(
                        onPressed: () {
                          _controller.criarFicha(context);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5);
                              }
                              return const Color(
                                  0xFFC7363B); // Use the component's default.
                            },
                          ),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Text('Criar  Ficha',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
