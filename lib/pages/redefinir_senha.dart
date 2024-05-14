import 'package:dndapp/controllers/redefinir_senha_controller.dart';
import 'package:flutter/material.dart';
import 'package:dndapp/color_scheme.dart';

class RedefinirSenhaPage extends StatefulWidget {
  const RedefinirSenhaPage({super.key});

  @override
  State<RedefinirSenhaPage> createState() => _RedefinirSenhaState();
}

class _RedefinirSenhaState extends State<RedefinirSenhaPage> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSignIn = GoogleSignIn();

  final formKey = GlobalKey<FormState>();
  late RedefinirSenhaController _controller;
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = RedefinirSenhaController();
    _controller.emailTextFieldController ??= TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  maxWidth: 602,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                alignment: const AlignmentDirectional(-1, 0),
                child: const Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: Text(
                          'Redefinir senha',
                          style: TextStyle(
                            color: Color(primaryTextColor),
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            fontFamily: 'Outfit',
                            letterSpacing: 0,
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
                padding: EdgeInsetsDirectional.fromSTEB(10, 32, 0, 20),
                child: Text(
                  'Comece digitando seu email',
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
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _controller.emailTextFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(primaryTextColor),
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(alternateColor),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(primaryTextColor),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(errorColor),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(errorColor),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        contentPadding: const EdgeInsets.all(24),
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                      ),
                      validator: _controller.emailTextFieldValidator,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: double.maxFinite,
                  child: FilledButton(
                    onPressed: () {
                      _controller.redefinirSenha(context);
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
                        child: Text('Enviar email de recuperação',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                              letterSpacing: 0,
                            ))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
