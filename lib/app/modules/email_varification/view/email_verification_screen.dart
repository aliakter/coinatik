import 'package:coinatik/app/core/values/k_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants.dart';
import '../../../routes/routes.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70.h,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w, top: 5.h),
          child: Container(
            height: 30.h,
            width: 30.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF1F2F2),
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (273 / 896) * screenHeight(context),
              width: (363 / 414) * screenWidth(context),
              child: Image.asset(
                KImages.emailValidation,
                fit: BoxFit.contain,
              ),
            ), // Background Image
            SizedBox(
              height: (40 / 896) * screenHeight(context),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
                color: const Color(0xFFF5F5FA),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: (38 / 896) * screenHeight(context),
                    ),
                    Text(
                      "Email Verification",
                      style: TextStyle(
                        fontFamily: "Proxima Nova Font",
                        color: const Color(0xFF22264C),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          "Please enter the 4 digit code sent to your email address.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "ComicNeue",
                            color: const Color(0xFF22264C),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (44 / 896) * screenHeight(context),
                    ),

                    /// here pin type box will be implemented

                    SizedBox(
                      height: (45 / 896) * screenHeight(context),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "If you didn't receive code! ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "ComicNeue",
                              color: Colors.blueGrey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            " Resend",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Proxima Nova Font",
                              color: const Color(0xFF005EFF),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: (33 / 896) * screenHeight(context),
                    ),
                    SizedBox(
                      width: (358 / 364) * screenWidth(context),
                      height: (75 / 896) * screenHeight(context),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF005EFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.resetpassword);
                        },
                        child: Text(
                          'Verify and Proceed',
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (280 / 896) * screenHeight(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
