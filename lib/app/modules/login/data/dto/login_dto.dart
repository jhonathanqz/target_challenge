import 'dart:convert';

import '../../domain/entities/login.dart';

class LoginDTO extends User {
  LoginDTO({
    required super.userName,
    required super.email,
    required super.id,
  });

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userName': userName,
      'email': email,
    };
  }

  factory LoginDTO.fromMap(Map<String, dynamic> map) {
    return LoginDTO(
      id: map['userId'] as int,
      userName: map['userName'] as String,
      email: map['email'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory LoginDTO.fromJson(String source) =>
      LoginDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant LoginDTO other) {
    if (identical(this, other)) return true;

    return other.id == id && other.userName == userName && other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ userName.hashCode ^ email.hashCode;
}
