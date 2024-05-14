import 'package:flutter/material.dart';
import 'package:dndapp/pages/login.dart';

class RecuperacaoSenhaPage extends StatefulWidget {
  const RecuperacaoSenhaPage({super.key});

  @override
  State<RecuperacaoSenhaPage> createState() => _RecuperacaoSenhaState();
}

class _RecuperacaoSenhaState extends State<RecuperacaoSenhaPage> {
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
                    labelText: 'Nova Senha',
                    hintText: 'Digite sua nova senha'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirmação da Nova Senha',
                    hintText: 'Digite sua nova senha'),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
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
