import 'package:conponentes_app/themes/app_theme.dart';
import 'package:flutter/material.dart';


import 'package:conponentes_app/router/app_router.dart';

void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',

      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRouter(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}