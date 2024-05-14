import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar-se'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nome de usuário',
                    hintText: 'Digite o nome de usuário'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'abc@email.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                    hintText: 'Digite sua senha'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirmação de Senha',
                    hintText: 'Digite sua senha'),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                    child: Text('Cadastrar'),
                  ),
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
                  onPressed: () async {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                    child: Text('Entrar com o Google'),
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
