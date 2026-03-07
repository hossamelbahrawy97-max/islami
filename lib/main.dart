
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/intro/intro_screen.dart';
import 'package:islami_app/ui/utils/app_routes.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.introScreen,
      routes: {
         AppRoutes.routeName : (context) => HomeScreen(),
        AppRoutes.introScreen: (context) => IntroScreen(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
