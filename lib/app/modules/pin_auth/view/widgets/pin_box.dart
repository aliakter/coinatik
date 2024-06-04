import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class PinBox extends StatelessWidget {
  final String value;

  PinBox({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (50 / 414) * screenWidth(context),
      height: (50 / 896) * screenHeight(context),
      margin: EdgeInsets.symmetric(horizontal: 10), // Add horizontal margin
      padding: EdgeInsets.symmetric(horizontal: 10), // Add horizontal padding
      decoration: BoxDecoration(
        color: Color(0x1A005EFF), // Set background color
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.center,
      child: value.isNotEmpty
          ? Image.asset('assets/images/passdot.png', width: 24, height: 24)
          : SizedBox(),
    );
  }
}
