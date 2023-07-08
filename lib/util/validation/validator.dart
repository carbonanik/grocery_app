String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  }
  // if (!value.contains(r'@')) {
  //   return 'Invalid email address';
  // }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
}
