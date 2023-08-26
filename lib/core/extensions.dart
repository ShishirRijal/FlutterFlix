extension NullString on String? {
  String orEmpty() {
    return this ?? '';
  }
}

extension NullInt on int? {
  int orZero() {
    return this ?? 0;
  }
}

extension NullDouble on double? {
  double orZero() {
    return this ?? 0.0;
  }
}
