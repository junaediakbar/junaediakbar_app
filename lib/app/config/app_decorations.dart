import 'package:flutter/material.dart';
import 'package:junaediakbar_app/app/config/app_colors.dart';

class AppDecorations {
  static BoxDecoration shadowTab = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: AppColors.white.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 8,
        offset: Offset(4, 8),
      )
    ],
  );
}
