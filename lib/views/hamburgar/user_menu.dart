import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pepper/common_widget/custom_button.dart';
import 'package:pepper/consts/colour.dart';
import 'package:velocity_x/velocity_x.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        Column(
          children: [
            BackButtonIcon(),
            customButton(
                onPress: () {},
                title: "Log Out",
                color: Colors.white,
                textColor: spGreen)
          ],
        )
      ],
    ).box.height(context.screenHeight).width(context.screenWidth / 2).make(),
  );
}
