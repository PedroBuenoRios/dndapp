import 'package:flutter/material.dart';
import 'package:dndapp/rec_senha.dart';

class RecuperacaoSenhaCodigoPage extends StatefulWidget {
  const RecuperacaoSenhaCodigoPage({super.key});

  @override
  State<RecuperacaoSenhaCodigoPage> createState() =>
      _RecuperacaoSenhaCodigoState();
}

class _RecuperacaoSenhaCodigoState extends State<RecuperacaoSenhaCodigoPage> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperação de Senha'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Digite o seu email'),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: ElevatedButton(
                  onPressed: () async {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                    child: Text('Enviar código'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Código de Recuperação',
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const RecuperacaoSenhaPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                    child: Text('Recuperar Senha'),
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
