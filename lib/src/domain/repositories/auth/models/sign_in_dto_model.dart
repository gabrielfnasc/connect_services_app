import '../../../../domain//dtos/sign_in_dto.dart';

class SignInDtoModel {
  static Map toJson(SignInDto dto) {
    return {
      'email': dto.email,
      'password': dto.password,
    };
  }
}
