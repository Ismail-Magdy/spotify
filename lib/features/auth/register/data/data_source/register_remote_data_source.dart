import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/features/auth/register/data/models/register_user_model.dart';

abstract class RegisterRemoteDataSource {
  Future<void> register(RegisterUserModel registerUserModel);
}

class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  RegisterRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  @override
  Future<void> register(RegisterUserModel registerUserModel) async {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(
          email: registerUserModel.email,
          password: registerUserModel.password,
        );

    await firebaseFirestore
        .collection("Users")
        .doc(userCredential.user!.uid)
        .set(registerUserModel.toMap());
  }
}
