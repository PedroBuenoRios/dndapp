import 'package:flutter/material.dart';

class LoginPageModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for usernameCreateTextField widget.
  FocusNode? usernameLoginTextFieldFocusNode;
  TextEditingController? usernameLoginTextFieldController;
  String? usernameLoginTextFieldControllerValidator(String? value) {
    return (value != null && !value.contains('@')) ? 'Necessário o @' : null;
  }

  // State field(s) for passwordLoginTextField widget.
  FocusNode? passwordLoginTextFieldFocusNode;
  TextEditingController? passwordLoginTextFieldController;
  late bool passwordLoginTextFieldVisibility;
  String? passwordLoginTextFieldControllerValidator(String? value) {
    return (value != null && value.length < 8)
        ? 'A senha precisa conter pelo menos 8 caracteres'
        : null;
  }

  // State field(s) for usernameCreateTextField widget.
  FocusNode? usernameCreateTextFieldFocusNode;
  TextEditingController? usernameCreateTextFieldController;
  String? usernameCreateTextFieldControllerValidator(String? value) {
    return (value != null && value.contains(' '))
        ? 'Não pode conter espaços'
        : null;
  }

  // State field(s) for emailCreateTextField widget.
  FocusNode? emailCreateTextFieldFocusNode;
  TextEditingController? emailCreateTextFieldController;
  String? emailCreateTextFieldControllerValidator(String? value) {
    return (value != null && !value.contains('@')) ? 'Necessário o @' : null;
  }

  // State field(s) for passwordCreateTextField widget.
  FocusNode? passwordCreateTextFieldFocusNode;
  TextEditingController? passwordCreateTextFieldController;
  late bool passwordCreateTextFieldVisibility;
  String? passwordCreateTextFieldControllerValidator(String? value) {
    return (value != null && value.length < 8)
        ? 'A senha precisa conter pelo menos 8 caracteres'
        : null;
  }

  // State field(s) for passwordConfirmTextField widget.
  FocusNode? passwordConfirmTextFieldFocusNode;
  TextEditingController? passwordConfirmTextFieldController;
  late bool passwordConfirmTextFieldVisibility;
  String? passwordConfirmTextFieldControllerValidator(String? value) {
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
    usernameLoginTextFieldFocusNode?.dispose();
    usernameLoginTextFieldController?.dispose();

    passwordLoginTextFieldFocusNode?.dispose();
    passwordLoginTextFieldController?.dispose();

    usernameCreateTextFieldFocusNode?.dispose();
    usernameCreateTextFieldController?.dispose();

    emailCreateTextFieldFocusNode?.dispose();
    emailCreateTextFieldController?.dispose();

    passwordCreateTextFieldFocusNode?.dispose();
    passwordCreateTextFieldController?.dispose();

    passwordConfirmTextFieldFocusNode?.dispose();
    passwordConfirmTextFieldController?.dispose();
  }
}
