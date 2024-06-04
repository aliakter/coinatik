import 'package:coinatik/app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/values/k_images.dart';

class PinAuthScreen extends StatelessWidget {
  const PinAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Stack(
            //   alignment: Alignment.topRight,
            //   children: [
            //     Image.asset(
            //       KImages.pinAuth,
            //       width: screenWidth(context) * (386 / 414),
            //       height: screenHeight(context) * (381 / 896),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: (26 / 896) * screenHeight(context),
            ),
            Text(
              'Enter PIN',
              style: TextStyle(
                fontSize: 30.sp,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                color: const Color(0xFF005EFF),
              ),
            ),
            SizedBox(height: (10 / 896) * screenHeight(context)),
            Text(
              'Please enter your Pin to continue. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "ComicNeue",
                fontWeight: FontWeight.w400,
                color: const Color(0xFF005EFF),
              ),
            ),
            SizedBox(
              height: (40 / 896) * screenHeight(context),
            ),
            // pin code here
            SizedBox(
              height: (50 / 896) * screenHeight(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // for (int i = 0; i < 4; i++)
                  // PinBox(value: i < _enteredPin.length ? '.' : ''),
                  SizedBox(width: 10.w),
                ],
              ),
            ),
            SizedBox(
              height: (60 / 896) * screenHeight(context),
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // for (int i = 1; i <= 3; i++)
                    // PinButton(digit: i.toString(), onPressed: () => _handlePinInput(i.toString())),
                  ],
                ),
                SizedBox(height: 5.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // for (int i = 4; i <= 6; i++)
                    //   PinButton(digit: i.toString(), onPressed: () => _handlePinInput(i.toString())),
                  ],
                ),
                SizedBox(height: 5.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // for (int i = 7; i <= 9; i++)
                    //   PinButton(digit: i.toString(), onPressed: () => _handlePinInput(i.toString())),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Center(
                        child: Icon(
                          Icons.fingerprint,
                          size: 41.w,
                        ),
                      ),
                      onPressed: () {},
                      // _authenticateWithFingerprint,
                      // iconSize: 41.w,
                      color: const Color(0xFF005EFF),
                    ),
                    // PinButton(digit: '0', onPressed: () => _handlePinInput('0')),
                    // IconButton(
                    //   icon: Icon(Icons.backspace),
                    //   onPressed: _deleteLastDigit,
                    //   color: Color(0xFF005EFF),
                    // ),
                    Container(
                      height: 68.h,
                      width: 68.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x1A005EFF),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.backspace,
                            size: 25.w,
                          ),
                          onPressed: () {},
                          // _deleteLastDigit,
                          color: const Color(0xFF005EFF),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
