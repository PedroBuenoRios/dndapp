import 'package:dndapp/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RedefinirSenhaController {
  redefinirSenha(BuildContext context) async {
    try {
      await context.read<AuthService>().redefinirSenha(
            emailTextFieldController!.text,
          );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Email enviado com sucesso')));
      }
    } on AuthException catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.message)));
      }
    }
  }

  TextEditingController? emailTextFieldController;
  String? emailTextFieldValidator(String? value) {
    return (value != null && !value.contains('@')) ? 'Necessário o @' : null;
  }

  void dispose() {
    emailTextFieldController?.dispose();
  }
}
