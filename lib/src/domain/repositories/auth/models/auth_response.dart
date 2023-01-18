class AuthResponse {
  final String accessToken;
  final String userId;

  AuthResponse({
    required this.accessToken,
    required this.userId,
  });

  factory AuthResponse.fromJson(Map json) {
    return AuthResponse(
      accessToken: json['accessToken'],
      userId: '123',
    );
  }
}
