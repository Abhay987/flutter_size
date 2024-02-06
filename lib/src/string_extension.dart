extension CustomStringExtension on String {
  String get fstLtCapitalize {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
