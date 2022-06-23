import 'package:flutter/material.dart';
import 'package:saharakhaja/screens/employee_list_screen.dart';
import 'package:saharakhaja/screens/homePage_screen.dart';
import 'package:saharakhaja/screens/khaja_list_screen.dart';
import 'package:saharakhaja/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sahara Khaja ",
      initialRoute: '/',
      routes: {
        '/':(context) => const LoginScreen(),

        HomePage.routeName: (context) => const HomePage(
              title: "Sahara Khaja",
            ),

        EmployeePage.routeName: (context) => const EmployeePage(
              title: "Employee Details",
            ),
        KhajaSet.routeName: (context) => KhajaSet(title: "Khaja"),
      },
    );
  }
}
