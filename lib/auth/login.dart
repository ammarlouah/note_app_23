import 'package:flutter/material.dart';
import 'package:note_app_23/auth/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Center(
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Wrap(
                    children: [
                      const Text("if you don't have an account "),
                      InkWell(
                        child: const Text(
                          "Click here",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    // backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    textStyle: MaterialStatePropertyAll(
                      TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("homepage");
                  },
                  child: const Text(
                    "Login",
                    // style: Theme().textTheme.headlineLarge,
                  ),
                ),
              ],
            )),
          )
      ],
    ),
        ));
  }
}
