import 'package:equatable/equatable.dart';

class SignInDto extends Equatable {
  final String email;
  final String password;

  const SignInDto({
    required this.email,
    required this.password,
  });

  @override
  List get props => [email, password];
}
