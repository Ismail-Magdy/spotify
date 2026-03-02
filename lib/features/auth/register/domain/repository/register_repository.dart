import 'package:dartz/dartz.dart';
import 'package:spotify/core/errors/failure.dart';
import 'package:spotify/features/auth/register/domain/entities/register_user_entity.dart';

abstract class RegisterRepository {
  Future<Either<Failure, void>> register(RegisterUserEntity registerUserEntity);
}
