import 'dart:developer' as dev;

extension CustomDynamicExtension on dynamic {
  String get getNonNullableStringData {
    var localString = this == null ? '' : toString();
    return localString;
  }

  void get logPrint {
    dev.log(this);
  }

  String? fieldValidator(String? value) {
    if (value == null ||
        value.toString().isEmpty ||
        value.toString().trim().isEmpty) {
      return '$this field can\'t be empty';
    }
    return null;
  }

  String? numberfieldValidator(String? value) {
    if (value == null ||
        value.toString().isEmpty ||
        value.toString().trim().isEmpty) {
      return '$this field can\'t be empty';
    }

    if (num.tryParse(value) == null) {
      return '$this field should be valid number';
    }

    return null;
  }
}
