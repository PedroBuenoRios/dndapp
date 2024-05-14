import 'package:dndapp/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPageController {
  signin(BuildContext context) async {
    try {
      await context.read<AuthService>().signin(
          emailLoginTextFieldController!.text,
          passwordLoginTextFieldController!.text);
    } on AuthException catch (e) {
      debugPrint('Erroooooooo');
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.message)));
      }
    }
  }

  signup(BuildContext context) async {
    try {
      await context.read<AuthService>().signup(
          usernameCreateTextFieldController!.text,
          emailLoginTextFieldController!.text,
          passwordLoginTextFieldController!.text);
    } on AuthException catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.message)));
      }
    }
  }

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for usernameCreateTextField widget.
  TextEditingController? emailLoginTextFieldController;
  String? emailLoginTextFieldValidator(String? value) {
    return (value != null && !value.contains('@')) ? 'Necessário o @' : null;
  }

  // State field(s) for passwordLoginTextField widget.
  TextEditingController? passwordLoginTextFieldController;
  late bool passwordLoginTextFieldVisibility;
  String? passwordLoginTextFieldValidator(String? value) {
    return (value != null && value.length < 8)
        ? 'A senha precisa conter pelo menos 8 caracteres'
        : null;
  }

  // State field(s) for usernameCreateTextField widget.
  TextEditingController? usernameCreateTextFieldController;
  String? usernameCreateTextFieldValidator(String? value) {
    return (value != null && value.contains(' '))
        ? 'Não pode conter espaços'
        : null;
  }

  // State field(s) for emailCreateTextField widget.
  TextEditingController? emailCreateTextFieldController;
  String? emailCreateTextFieldValidator(String? value) {
    return (value != null && !value.contains('@')) ? 'Necessário o @' : null;
  }

  // State field(s) for passwordCreateTextField widget.
  TextEditingController? passwordCreateTextFieldController;
  late bool passwordCreateTextFieldVisibility;
  String? passwordCreateTextFieldValidator(String? value) {
    return (value != null && value.length < 8)
        ? 'A senha precisa conter pelo menos 8 caracteres'
        : null;
  }

  // State field(s) for passwordConfirmTextField widget.
  TextEditingController? passwordConfirmTextFieldController;
  late bool passwordConfirmTextFieldVisibility;
  String? passwordConfirmTextFieldValidator(String? value) {
    if (value?.compareTo(passwordCreateTextFieldController!.text) != 0) {
      return 'As senhas são diferentes';
    }
    return null;
  }

  void initState(BuildContext context) {
    passwordLoginTextFieldVisibility = false;
    passwordCreateTextFieldVisibility = false;
    passwordConfirmTextFieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailLoginTextFieldController?.dispose();

    passwordLoginTextFieldController?.dispose();

    usernameCreateTextFieldController?.dispose();

    emailCreateTextFieldController?.dispose();

    passwordCreateTextFieldController?.dispose();

    passwordConfirmTextFieldController?.dispose();
  }
}
