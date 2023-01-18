import 'package:connect_services_app/src/domain/errors/application_error.dart';

abstract class DomainError extends ApplicationError {
  final String? message;

  DomainError._({this.message});

  factory DomainError.notFound({String? message}) =>
      _NotFound(message: message);
}

class _NotFound extends DomainError {
  _NotFound({String? message}) : super._(message: message);
}
