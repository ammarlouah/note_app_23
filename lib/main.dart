import 'package:flutter/material.dart';

import 'auth/login.dart';

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
      },
    );
  }
}
