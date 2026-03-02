import 'package:dartz/dartz.dart';
import 'package:spotify/core/errors/failure.dart';
import 'package:spotify/features/auth/register/domain/entities/register_user_entity.dart';
import 'package:spotify/features/auth/register/domain/repository/register_repository.dart';

class RegisterUsecase {
  final RegisterRepository registerRepository;

  RegisterUsecase(this.registerRepository);

  Future<Either<Failure, void>> call(
    RegisterUserEntity registerUserEntity,
  ) async {
    return await registerRepository.register(registerUserEntity);
  }
}
