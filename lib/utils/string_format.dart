import 'package:intl/intl.dart';

extension IntEx on int {
  String get formatWithComma {
    return NumberFormat('#,###').format(this);
  }

  String get formatWithCommaAndYen {
    return '$formatWithComma円';
  }
}
