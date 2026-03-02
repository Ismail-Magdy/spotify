import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/core/errors/failure.dart';
import 'package:spotify/features/auth/register/data/data_source/register_remote_data_source.dart';
import 'package:spotify/features/auth/register/domain/entities/register_user_entity.dart';
import 'package:spotify/features/auth/register/domain/repository/register_repository.dart';
import '../models/register_user_model.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource remoteDataSource;

  RegisterRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, void>> register(RegisterUserEntity user) async {
    try {
      final userModel = RegisterUserModel(
        fullName: user.fullName,
        email: user.email,
        password: user.password,
      );

      await remoteDataSource.register(userModel);

      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(ServerFailure(e.message ?? 'An unknown error occurred.'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
