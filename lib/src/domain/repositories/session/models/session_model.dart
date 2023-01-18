import '../../../../domain/entities/session.dart';

class SessionModel extends Session {
  SessionModel({
    required super.accessToken,
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) {
    final credential = SessionModel(
      accessToken: json['accessToken'],
    );

    return credential;
  }

  static Map<String, dynamic> toJson(Session credential) {
    return {
      'accessToken': credential.accessToken,
    };
  }
}
