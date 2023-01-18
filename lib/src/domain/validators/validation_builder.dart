import '../../domain/validators/email.field_validator.dart';
import '../../domain/validators/interfaces/field_validation.dart';
import '../../domain/validators/required.field.validator.dart';

class ValidationBuilder {
  static ValidationBuilder? _instance;
  String? fieldName;
  List<FieldValidation> validations = [];

  // private constructor
  ValidationBuilder._();

  static ValidationBuilder field(String fieldName) {
    _instance = ValidationBuilder._();
    _instance?.fieldName = fieldName;
    return _instance!;
  }

  ValidationBuilder required() {
    validations.add(RequiredFieldValidation(fieldName!));
    return this;
  }

  ValidationBuilder email() {
    validations.add(EmailFieldValidation(fieldName!));
    return this;
  }

  List<FieldValidation> build() => validations;
}
