import '../validators/interfaces/field_validation.dart';
import '../../../i18n/resources.dart';

class EmailFieldValidation implements FieldValidation {
  @override
  final String field;

  EmailFieldValidation(this.field);

  @override
  String? validate(String? value) {
    final regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value == null || value.isEmpty) {
      return R.strings.emailInvalid;
    }
    return regex.hasMatch(value) ? null : R.strings.emailInvalid;
  }
}
