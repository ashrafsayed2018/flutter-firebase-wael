import 'package:flutter/material.dart';
import 'package:flutter_firebase/auth/login.dart';
import 'package:flutter_firebase/auth/register.dart';

class HaveEmail extends StatelessWidget {
  final String text;
  final bool isRegisterd;
  const HaveEmail({Key? key, required this.text, required this.isRegisterd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      isRegisterd ? const Login() : const Register()));
        },
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: text,
                style: TextStyle(fontSize: 15, color: Colors.grey[800])),
            TextSpan(
                text: isRegisterd ? " Login" : " Register",
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
    );
  }
}
