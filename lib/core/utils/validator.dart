class Validator {
  final String subjectName;
  Validator({this.subjectName = 'Field'});

  final List<String? Function(String? value)> _validationRules = [];

  bool _isValueEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  Validator require({String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) {
        return message ?? '$subjectName is required';
      }
      return null;
    });
    return this;
  }

  // must be exac length
  Validator exactLength(int length, {String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (value!.length != length) {
        return message ?? '$subjectName must be exactly $length characters';
      }
      return null;
    });
    return this;
  }

  Validator minLength(int length, {String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (value!.length < length) {
        return message ?? '$subjectName must be at least $length characters';
      }
      return null;
    });
    return this;
  }

  Validator maxLength(int length, {String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (value!.length > length) {
        return message ?? '$subjectName must be at most $length characters';
      }
      return null;
    });
    return this;
  }

  // must be a number
  Validator isNumber({String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
        return message ?? '$subjectName must be a number';
      }
      return null;
    });
    return this;
  }

  // must be a valid email
  Validator isEmail({String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (!RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
      ).hasMatch(value!)) {
        return message ?? 'Enter a valid email address';
      }
      return null;
    });
    return this;
  }

  Validator startsWith(String prefix, {String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (!value!.startsWith(prefix)) {
        return message ?? '$subjectName must start with $prefix';
      }
      return null;
    });
    return this;
  }

  Validator matchRegex(String regex, {String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (!RegExp(regex).hasMatch(value!)) {
        return message ?? '$subjectName is invalid';
      }
      return null;
    });
    return this;
  }

  Validator isEqualTo(String match, {String? message}) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      if (value != match) {
        return message ?? '$subjectName must be equal to $match';
      }
      return null;
    });
    return this;
  }

  Validator customValidation(
    String? Function(String? value) validationFunction,
  ) {
    _validationRules.add((String? value) {
      if (_isValueEmpty(value)) return null;
      final result = validationFunction(value);
      if (result != null) {
        return result;
      }
      return null;
    });
    return this;
  }

  String? validate(String? value) {
    for (var rule in _validationRules) {
      final result = rule(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
