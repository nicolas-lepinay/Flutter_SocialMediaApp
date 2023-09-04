import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/home_page.dart';
import 'package:flutter_application_test/pages/login_page.dart';
import 'package:flutter_application_test/pages/main_page.dart';
import 'package:flutter_application_test/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: 'Roboto',
            scaffoldBackgroundColor: AppColors.background,
            brightness: Brightness.dark),
        //home: LoginPage(),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/main': (context) => MainPage()
        });
  }
}
