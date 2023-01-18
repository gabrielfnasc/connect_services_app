//import 'package:app_vex/src/domain/errors/application_error.dart';
import '../../domain/errors/application_error.dart';
import '../../helpers/errors/error_result.dart';

abstract class HttpError extends ApplicationError {
  final ErrorResult? error;

  HttpError._({this.error});

  factory HttpError.badRequest({ErrorResult? error}) =>
      _BadRequest(error: error);
  factory HttpError.unauthorized({ErrorResult? error}) =>
      _Unauthorized(error: error);
  factory HttpError.serverError({ErrorResult? error}) =>
      _ServerError(error: error);
  factory HttpError.timeOut({ErrorResult? error}) => _TimeOut(error: error);
}

class _BadRequest extends HttpError {
  _BadRequest({ErrorResult? error}) : super._(error: error);
}

class _Unauthorized extends HttpError {
  _Unauthorized({ErrorResult? error}) : super._(error: error);
}

class _TimeOut extends HttpError {
  _TimeOut({ErrorResult? error}) : super._(error: error);
}

class _ServerError extends HttpError {
  _ServerError({ErrorResult? error}) : super._(error: error);
}
