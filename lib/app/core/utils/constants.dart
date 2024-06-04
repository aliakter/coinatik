import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color ashBlue = const Color(0xFF005EFF);

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width.w;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height.h;
}
