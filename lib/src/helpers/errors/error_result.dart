import '../../domain/errors/application_error.dart';
import '../../domain/errors/domain_error.dart';
import '../../infrastructure/http/http_error.dart';

class ErrorResult {
  final String message;

  ErrorResult({
    required this.message,
  });

  factory ErrorResult.fromJson(Map? json) {
    final message = json == null
        ? "Something unexpected happened, please try again!"
        : json['message'];
    return ErrorResult(message: message);
  }

  factory ErrorResult.handler(ApplicationError applicationError) {
    if (applicationError is HttpError) {
      return (applicationError).error!;
    }

    if (applicationError is DomainError) {
      ErrorResult(message: (applicationError).message!);
    }

    throw Exception("not found error");
  }
}
