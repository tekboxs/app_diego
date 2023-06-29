import 'package:app_diego/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextAppTheme {
  static const activatedButtonTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const labelBoldTextStyle = TextStyle(
    color: AppTheme.darkColor,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  static const labelTextStyle = TextStyle(
    color: AppTheme.darkColor,
    fontSize: 14,
  );
  static const titleTextStyle = TextStyle(
    color: AppTheme.darkColor,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
}
