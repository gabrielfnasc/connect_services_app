import '../validators/interfaces/field_validation.dart';
import '../validators/interfaces/validation.dart';

class CompositeValidator implements Validator {
  List<FieldValidation> validators;

  CompositeValidator(this.validators);

  @override
  String? validate({required String field, required String value}) {
    String? error;

    final validationFiltered =
        validators.where((validation) => validation.field == field);

    for (final validation in validationFiltered) {
      error = validation.validate(value);
      if (error?.isNotEmpty == true) {
        return error;
      }
    }

    return error;
  }
}
