import '../../../../domain//dtos/sign_up_dto.dart';

class SignUpDtoModel {
  static Map toJson(SignUpDto dto) {
    return {
      'name': dto.name,
      'email': dto.email,
      'password': dto.password,
    };
  }
}
