import 'package:dndapp/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePageController {
  logout(BuildContext context) async {
    try {
      await context.read<AuthService>().logout();
    } on AuthException catch (error) {
      debugPrint(error.message);
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(error.message)));
      }
    }
  }

  User? user;

  ProfilePageController() {
    user = FirebaseAuth.instance.currentUser;
  }
}
