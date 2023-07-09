import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepper/consts/consts.dart';
import 'package:pepper/views/auth/login_user.dart';
import 'package:pepper/views/auth/signup_user.dart';
import 'package:velocity_x/velocity_x.dart';

class UserToc extends StatelessWidget {
  const UserToc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          25.heightBox,
          Image.asset(
            iconPepper,
            width: 250,
          ),
          30.heightBox,
          Text(
            "Eat well, empower women & Choose Pepper for flavor and impact!",
            style: TextStyle(fontFamily: regular, fontSize: 16),
            textAlign: TextAlign.center,
          )
              .box
              .border(color: Colors.black, width: .4, style: BorderStyle.solid)
              .padding(Vx.m12)
              .margin(Vx.m12)
              .withRounded(value: 20)
              .make(),
          Image.asset(
            eaterScreen,
            height: 300,
          ),
          30.heightBox,
          ElevatedButton(
            onPressed: () {
              Get.to(() => LoginUser());
            },
            child: Text(
              "Login in",
              style: TextStyle(
                  fontFamily: regular, color: Colors.white, fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: spGreen, padding: const EdgeInsets.all(12)),
          ).box.width(context.screenWidth - 50).make(),
          20.heightBox,
          ElevatedButton(
            onPressed: () {
              Get.to(() => SignUpUser());
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontFamily: regular, color: Colors.white, fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: spGreen, padding: const EdgeInsets.all(12)),
          ).box.width(context.screenWidth - 50).make(),
        ]),
      ),
    );
  }
}
