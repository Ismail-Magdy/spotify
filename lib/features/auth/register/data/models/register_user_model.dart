import 'package:spotify/features/auth/register/domain/entities/register_user_entity.dart';

class RegisterUserModel extends RegisterUserEntity {
  RegisterUserModel({
    required super.fullName,
    required super.email,
    required super.password,
  });

  Map<String, dynamic> toMap() {
    return {"full_name": fullName, "email": email};
  }
}
