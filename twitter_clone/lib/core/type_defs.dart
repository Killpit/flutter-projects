import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/failure.dart';
import 'package:twitter_clone/core/success.dart';

typedef FutureEither = Future<Either<Failure, Success>>;