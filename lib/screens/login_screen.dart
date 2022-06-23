import 'package:flutter/material.dart';
import 'package:saharakhaja/screens/homePage_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        body: Form(
          key: _form,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "UserName",
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter the username";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  icon: Icon(Icons.password),
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty ) {
                    return "Enter the Password";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_form.currentState!.validate()) {
                      Navigator.of(context).pushNamed(HomePage.routeName);
                    }
                  },
                  child: const Text("Submit")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {



                  },
                  child: const Text(
                    "Login With facebook",
                  )),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {

                  }, child: const Text("Login With Google")),
            ],
          ),
        ));
  }
}
