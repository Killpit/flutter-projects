import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthController extends StateNotifier<bool> {
  AuthController(): super(false);
  
  //isLoading
  void signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) {}
}