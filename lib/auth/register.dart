import 'package:flutter/material.dart';

import '../components/CustomFormField.dart';
import '../components/customButton.dart';
import '../components/customLogoAuth.dart';
import '../components/haveEmail.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomLogoAuth(),
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "register to continue using the app",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 20),
                CustomFormField(
                  hintText: "Enter You'r Username",
                  isPassword: false,
                  labelText: "Username",
                  controller: email,
                ),
                CustomFormField(
                  hintText: "Enter You'r Email",
                  isPassword: false,
                  labelText: "Email",
                  controller: email,
                ),
                CustomFormField(
                    hintText: "Enter You'r Password",
                    isPassword: true,
                    labelText: "Password",
                    controller: password),
                CustomButton(
                  onPressed: () {},
                  text: "Register",
                ),
                const SizedBox(
                  height: 20,
                ),
                const HaveEmail(
                  text: "already have an account ?  ",
                  isRegisterd: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
