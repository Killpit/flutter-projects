import 'package:appwrite/appwrite.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/type_defs.dart';

abstract class IAuthAPI {
  FutureEither signUp({
    required String email,
    required String password,
  });
}
