import 'package:flutter/material.dart';

class Colors {

  const Colors();

  static const Color appBarTitle = const Color(0xFF673AB7);
  static const Color appHeroShadow = const Color(0xFF311B92);
  static const Color appDetailBackground = const Color(0xFF9FA8DA);
  static const Color appTextFieldColor = const Color(0xFF9FA8DA);// Text Fields

}

TextStyle headingStyle = new TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

TextStyle textStyle = const TextStyle(
    color: const Color(0XFFFFFFFF),
    fontSize: 16.0,
    fontWeight: FontWeight.normal);

TextStyle buttonTextStyle = const TextStyle(
    color: const Color.fromRGBO(255, 255, 255, 0.8),
    fontSize: 14.0,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold);

ExactAssetImage logo = new ExactAssetImage("images/logo.png");