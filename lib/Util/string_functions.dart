RegExp _numeric = RegExp(r'^-?[0-9]+$');
RegExp  _validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

/// check if the string contains only numbers
bool isNumeric(String str) {
  return _numeric.hasMatch(str);
}

/// check if the string contains only numbers
bool isAlphaNumeric(String str) {
  return _validCharacters.hasMatch(str);
}