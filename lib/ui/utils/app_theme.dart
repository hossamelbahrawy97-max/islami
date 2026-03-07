import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      showUnselectedLabels: false,
      backgroundColor: AppColors.primaryColor,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
