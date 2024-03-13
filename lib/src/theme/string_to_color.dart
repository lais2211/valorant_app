import 'package:flutter/material.dart';

extension StringParsing on String {
  Color toColor() {
    return Color(int.parse('FF${substring(0, 6)}', radix: 16)).withOpacity(1);
  }
}