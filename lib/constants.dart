import 'package:flutter/material.dart';

const textColorNight = Colors.white;
const textColorDay = Colors.black;
const darkBackground = Color(0xFF0E1C36);
const lightBackground = Color(0xFFCCF2FA);
const dropDownColor = Color(0xFF6A7282);

Widget indicatorImage = Image.asset('images/indicator.png');
Widget earthImage = Image.asset('images/earth.png');
Widget moonImage = Image.asset('images/moon.png');

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

EdgeInsets tilePadding(BuildContext context) => EdgeInsets.only(
    left: screenWidth(context) * 0.07,
    top: screenWidth(context) * 0.07,
    bottom: screenWidth(context) * 0.07);
