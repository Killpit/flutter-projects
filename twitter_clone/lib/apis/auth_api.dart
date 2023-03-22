import 'package:appwrite/appwrite.dart';
import 'package:twitter_clone/core/type_defs.dart';

abstract class IAuthAPI {
  FutureEither<Account> signUp({
    required String email,
    required String password,
  });
}
