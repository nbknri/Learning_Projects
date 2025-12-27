import 'package:firebase_auth/firebase_auth.dart';
import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';

class UserModel {
  final String id;
  final String name;
  final String email;

  UserModel({required this.id, required this.name, required this.email});

  factory UserModel.fromFireBaseUser(User user) {
    return UserModel(
      id: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
    );
  }

  UserEntity toEntity() {
    return UserEntity(id: id, name: name, email: email);
  }
}
