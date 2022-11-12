import 'package:flutter/material.dart';
import 'package:junaediakbar_app/app/config/app_colors.dart';

class AppButton {
  static ButtonStyle buttonTab = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    backgroundColor:
        MaterialStateProperty.all<Color>(AppColors.orangeSecondary),
  );
}
