import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/CustomFormField.dart';
import 'package:flutter_firebase/components/customButton.dart';
import 'package:flutter_firebase/components/customLogoAuth.dart';
import 'package:flutter_firebase/components/haveEmail.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Login to continue using the app",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 20),
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
                Container(
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    "forget Password ?",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Login",
                ),
                const Center(
                  child: Text("Or Login with"),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  minWidth: double.infinity,
                  height: 40,
                  onPressed: () {},
                  color: const Color.fromARGB(255, 243, 116, 87),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Login with Google",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Image.asset(
                        "images/google.png",
                        height: 30,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const HaveEmail(
                  text: "not have an account ?  ",
                  isRegisterd: false,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
