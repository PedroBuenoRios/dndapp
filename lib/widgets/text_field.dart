import 'package:dndapp/color_scheme.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  String? labelText;
  String? hintText;
  double? fontSize;
  TextEditingController? controller;
  CallbackAction? validator;
  TextFieldCustom(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.fontSize,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(5, 16, 0, 2),
      child: TextFormField(
        //controller: _model.textController,
        //focusNode: _model.textFieldFocusNode,
        onFieldSubmitted: (_) async {},
        obscureText: false,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 177, 178, 179),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 42, 43, 44),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(errorColor),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(errorColor),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Color(secondaryTextColor),
          fontFamily: 'Playfair Display',
          fontSize: 30,
          letterSpacing: 0,
        ),
        // validator: _model
        //     .textControllerValidator
        //     .asValidator(context),
      ),
    );
  }
}
