import 'package:flutter/material.dart';
import 'package:pepper/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Image.asset(
            banner,
            width: context.screenWidth,
          )
        ],
      ),
    );
  }
}
