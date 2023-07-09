import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/consts.dart';

Widget customTextField({
  String? title,
  String? hint,
  controller,
  isPass,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text
          .color(Color.fromARGB(255, 0, 0, 0))
          .fontFamily(regular)
          .size(16)
          .make(),
      5.heightBox,
      TextFormField(
          obscureText: isPass,
          controller: controller,
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontFamily: regular,
              color: Color.fromARGB(255, 139, 138, 138),
            ),
            hintText: hint,
            isDense: true,
            fillColor: spGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
          )).paddingAll(5),
      5.heightBox,
    ],
  );
}
