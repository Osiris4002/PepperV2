import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepper/consts/consts.dart';
import 'package:pepper/views/toc/toc.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const Toc());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(splashScreenBg),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(children: [
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      300.heightBox,
                      Image.asset(
                        iconPepper,
                        width: 300,
                      ),
                    ],
                  )),
              220.heightBox,
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    const Text(
                      creditTm,
                      style: TextStyle(
                        fontFamily: regular,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    10.heightBox,
                    const Text(
                      creditAn,
                      style: TextStyle(
                        fontFamily: regular,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    10.heightBox,
                    const Text(
                      creditSk,
                      style: TextStyle(
                        fontFamily: regular,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
