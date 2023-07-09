import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepper/common_widget/custom_button.dart';
import 'package:pepper/common_widget/custom_textfield.dart';
import 'package:pepper/views/user/home_user.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

var emailController = TextEditingController();
var passController = TextEditingController();

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            25.heightBox,
            Image.asset(
              verPepper,
              width: 250,
            ),
            30.heightBox,
            Image.asset(
              userLogin,
              width: context.screenWidth,
            ),
            customTextField(
                    title: "Email",
                    hint: "Enter Your Email",
                    controller: emailController,
                    isPass: false)
                .paddingOnly(left: 20, right: 20),
            customTextField(
                    title: "Password",
                    hint: "Enter Your Password",
                    controller: passController,
                    isPass: false)
                .paddingOnly(left: 20, right: 20),
            20.heightBox,
            Text(
              "By siging in you agree to our Terms & Condition",
              style:
                  TextStyle(fontFamily: regular, fontSize: 14, color: spGreen),
              textAlign: TextAlign.center,
            ),
            20.heightBox,
            customButton(
                    title: 'Log in',
                    onPress: () {
                      Get.to(() => HomePageUser());
                    },
                    textColor: Colors.white,
                    color: spGreen)
                .box
                .width(context.screenWidth - 50)
                .make(),
          ],
        ),
      ),
    );
  }
}
