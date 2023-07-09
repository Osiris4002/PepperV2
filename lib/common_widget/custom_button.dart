import 'package:flutter/material.dart';
import 'package:pepper/consts/consts.dart';

Widget customButton({onPress, color, textColor, title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onPress,
      child: Text(
        title,
        style: TextStyle(color: textColor, fontFamily: regular, fontSize: 20),
      ));
}
