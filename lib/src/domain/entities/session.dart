class Session {
  final String accessToken;
  final DateTime createdAt = DateTime.now();

  Session({
    required this.accessToken,
  });
}
