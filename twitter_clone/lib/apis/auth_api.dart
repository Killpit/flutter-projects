import 'package:twitter_clone/core/core.dart';
import 'package:appwrite/models.dart';


abstract class IAuthAPI {
  FutureEither<Account> signUp({
    required String email,
    required String password,
  });
}
