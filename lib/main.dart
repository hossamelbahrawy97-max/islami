
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/utils/app_routes.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: AppRoutes.routeName,
       routes: {
         AppRoutes.routeName : (context) => HomeScreen(),
       },
     );
  }
}
