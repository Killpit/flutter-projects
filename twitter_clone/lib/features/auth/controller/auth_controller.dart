import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/apis/auth_api.dart';
import 'package:twitter_clone/core/utils.dart';



class AuthController extends StateNotifier<bool> {
  final AuthAPI _authAPI;
  AuthController({required AuthAPI authAPI}): _authAPI = authAPI, super(false);
  //state = isLoading

  Future<void> signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final res = await _authAPI.signUp(
      email: email, 
      password: password,
      );
      res.fold(
        (l) => showSnackBar(context, l.message), 
        (r) => print(r.name));
  }
}