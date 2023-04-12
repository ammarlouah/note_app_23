import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
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
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "email",
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
                      const Text("if you already have an account "),
                      InkWell(
                        child: const Text(
                          "Click here",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("login");
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
                  onPressed: () {},
                  child: const Text(
                    "SignUp",
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
