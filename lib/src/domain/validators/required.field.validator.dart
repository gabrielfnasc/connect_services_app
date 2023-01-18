import '../validators/interfaces/field_validation.dart';

import '../../../i18n/resources.dart';

class RequiredFieldValidation implements FieldValidation {
  @override
  final String field;

  RequiredFieldValidation(this.field);

  @override
  String? validate(String? value) {
    return value?.isNotEmpty == true ? null : R.strings.requiredField;
  }
}
