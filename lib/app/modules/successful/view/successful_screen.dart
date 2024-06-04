import 'package:coinatik/app/core/utils/constants.dart';
import 'package:coinatik/app/core/values/k_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.close,
              color: ashBlue,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 160.h,
              width: 160.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ashBlue.withOpacity(0.1),
                image: const DecorationImage(
                  image: AssetImage(KImages.success),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Center(
              child: Text(
                "Transfer Successful!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Inter",
                  color: const Color(0xFF22264C),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                "You’ve successfully send 0.00001068 BTC",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Inter",
                  color: const Color(0xFF22264C),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 113.h),
            Container(
              width: (358 / 364) * screenWidth(context),
              height: (75 / 896) * screenHeight(context),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  backgroundColor: Colors.white54,
                ),
                onPressed: () {
                  // Get.off(PinAuthScreen());
                },
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontFamily: "Proxima Nova Font",
                      fontSize: 16.sp,
                      color: ashBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
