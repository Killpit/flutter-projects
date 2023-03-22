import 'package:twitter_clone/core/core.dart';
import 'package:appwrite/models.dart' as model;
import 'package:appwrite/appwrite.dart';

//want to signup, want to get user account -> Account
//want to access user related data ->model.Account

abstract class IAuthAPI {
  FutureEither<model.Account> signUp({
    required String email,
    required String password,
  });
}
