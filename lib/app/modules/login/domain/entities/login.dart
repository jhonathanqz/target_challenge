// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:target_challenge/app/core/domain/entities/entity.dart';

class User extends Entity {
  final String userName;
  final String email;

  User({
    required this.userName,
    required this.email,
    required super.id,
  });

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'email': email,
    };
  }

  User copyWith({
    String? userName,
    String? email,
    int? id,
  }) {
    return User(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      id: id ?? this.id,
    );
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userName: map['userName'] as String,
      email: map['email'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(userName: $userName, email: $email)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.userName == userName && other.email == email;
  }

  @override
  int get hashCode => userName.hashCode ^ email.hashCode;
}
