import 'package:intl/intl.dart';

/// Currency formatter for displaying currency values.
///
/// Example:
/// ```dart
/// final formatted = kCurrencyFormatter.format(1234.56);
/// print(formatted); // "$1,234.56"
/// ```
final kCurrencyFormatter = NumberFormat.simpleCurrency();
