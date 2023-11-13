import 'package:flutter/material.dart';

class ThemeClass {
  static final Color greenColor = Color(0xFF1DD05D);

  static final Color greyColor = Color(0xFF2F4858);
  static final Color blackColor = Colors.black;
  static final Color skyBlueColor = Colors.grey;
  static final Color whiteColor = Colors.white;
  static final Color lightRedColor = Color(0xffE64C4C);
  static final Color brownColor = Colors.brown.shade800;

  static final titleTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static final titleTextStyleGrey = TextStyle(
      color: ThemeClass.greyColor, fontSize: 24, fontWeight: FontWeight.bold);

  static final subTitleStyleGray = TextStyle(
    color: ThemeClass.greyColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static final subTitleStyleRed = TextStyle(
    color: ThemeClass.lightRedColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static final smallSubTitleStyleGray = TextStyle(
    color: ThemeClass.greyColor,
    fontSize: 16,
  );
}
