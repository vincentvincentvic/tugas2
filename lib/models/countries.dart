import 'package:flutter/foundation.dart';

class Country {
  final String dialingCode;
  final String isoCode;
  final String name;

  const Country({
    @required this.dialingCode,
    @required this.isoCode,
    this.name  "",
  });
}