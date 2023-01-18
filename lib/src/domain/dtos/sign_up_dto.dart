import 'package:equatable/equatable.dart';

class SignUpDto extends Equatable {
  final String name;
  final String email;
  final String password;

  const SignUpDto({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List get props => [name, email, password];
}
