import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 221, 221, 221),
            borderRadius: BorderRadius.circular(50)),
        child: Image.asset(
          "images/logo.png",
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
