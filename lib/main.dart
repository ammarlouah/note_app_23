import 'package:flutter/material.dart';
import 'package:note_app_23/home/homepage.dart';

import 'auth/login.dart';
import 'auth/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(color: Colors.blue),
        textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 20)),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      routes: {
        "login": (context) => const Login(),
        "signup": (context) => const SignUp(),
        "homepage": (context) => const HomePage(),
      },
    );
  }
}
