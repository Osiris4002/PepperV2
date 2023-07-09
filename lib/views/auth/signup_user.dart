import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepper/common_widget/custom_button.dart';
import 'package:pepper/common_widget/custom_textfield.dart';
import 'package:pepper/views/auth/auth_user.dart';
import 'package:pepper/views/user/home_user.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';

class SignUpUser extends StatefulWidget {
  const SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  bool isCheck = false;
  var controller = Get.put(AuthController());
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var repassController = TextEditingController();
  var addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Column(children: [
          25.heightBox,
          Image.asset(
            verPepper,
            width: 250,
          ),
          Text(
            "Complete the registration process to order your delicious home made food",
            style: TextStyle(fontFamily: regular, fontSize: 15, color: spGreen),
            textAlign: TextAlign.center,
          ),
          30.heightBox,
          Column(children: [
            Column(
              children: [
                customTextField(
                    hint: "Enter Your Full Name",
                    title: "Full Name",
                    controller: nameController,
                    isPass: false),
                customTextField(
                    hint: "Enter Your Email",
                    title: "Your Email",
                    controller: emailController,
                    isPass: false),
                customTextField(
                    hint: "Create a password",
                    title: "Password",
                    controller: passController,
                    isPass: true),
                customTextField(
                    hint: "Retype your password",
                    title: "Re-Type Password",
                    controller: repassController,
                    isPass: true),
                customTextField(
                    hint: "Enter your full address",
                    title: "Address",
                    controller: addressController,
                    isPass: false),
                Row(
                  children: [
                    Checkbox(
                      hoverColor: Colors.transparent,
                      activeColor: spGreen,
                      checkColor: Colors.black,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue!;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                        child: RichText(
                            text: const TextSpan(
                      children: [
                        TextSpan(
                            text: " I agree to the ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: Colors.black,
                            )),
                        TextSpan(
                            text: "Terms",
                            style: TextStyle(
                              fontFamily: regular,
                              color: spGreen,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: Colors.black,
                            )),
                        TextSpan(
                            text: "Condition",
                            style: TextStyle(
                              fontFamily: regular,
                              color: spGreen,
                            )),
                      ],
                    )))
                  ],
                ),
                20.heightBox,
                customButton(
                        title: 'Sign Up',
                        onPress: () {
                          Get.to(() => HomePageUser());
                          // if (isCheck != false) {
                          //   try {
                          //     await controller
                          //         .signupMethod(
                          //       context: context,
                          //       email: emailController.text,
                          //       password: passController.text,
                          //     )
                          //         .then((value) {
                          //       return controller.storeUserData(
                          //           email: emailController.text,
                          //           password: passController.text,
                          //           name: nameController,
                          //           address: addressController,
                          //           type: 'user');
                          //     }).then((value) {
                          //       VxToast.show(context,
                          //           msg: "Successfully Logged in");
                          //       Get.to(() => HomePageUser());
                          //     });
                          //   } catch (e) {
                          //     auth.signOut();
                          //     VxToast.show(context, msg: e.toString());
                          //   }
                          // }
                        },
                        textColor: Colors.white,
                        color: spGreen)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
              ],
            )
          ]).paddingAll(20)
        ])));
  }
}
