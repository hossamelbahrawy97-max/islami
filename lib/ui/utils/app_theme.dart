import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      showUnselectedLabels: false,
      backgroundColor: AppColors.primaryColor,
      type: BottomNavigationBarType.fixed,
    ),
      scaffoldBackgroundColor: AppColors.blackBgColor,
      appBarTheme: AppBarThemeData(
          backgroundColor: AppColors.blackBgColor,

          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.primaryColor),
          titleTextStyle: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'JannaLT',
              fontSize: 20,
              fontWeight: FontWeight.bold
          )
      )
  );
}
