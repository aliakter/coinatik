import 'package:coinatik/app/core/values/k_images.dart';
import 'package:coinatik/app/modules/forget_password/controller/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants.dart';
import '../../../routes/routes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPasswordController =
        Get.put(ForgetPasswordController());
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
                KImages.forgetPassScreenBg,
                fit: BoxFit.contain,
              ),
            ), // Background Image
            SizedBox(
              height: (40 / 896) * screenHeight(context),
            ),
            Container(
              // height: (500 / 896) * screenHeight(context),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: (35 / 896) * screenHeight(context),
                    ),
                    Center(
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          color: Color(0xFF22264C),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          "Enter the email address associated with your\naccount",
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
                      height: (27 / 896) * screenHeight(context),
                    ),
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontFamily: "ComicNeue",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),
                    SizedBox(
                      width: (358 / 364) * screenWidth(context),
                      height: (75 / 896) * screenHeight(context),
                      child: TextField(
                        controller: forgetPasswordController.emailController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          // hintText: 'Email Address',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color(0xFF22264C),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(
                              color: Color(0xFF005EFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (50 / 896) * screenHeight(context),
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
                          // Get.off(PinAuthScreen());
                          Get.toNamed(Routes.emailverification);
                        },
                        child: Center(
                          child: Text(
                            'Recover Password',
                            style: TextStyle(
                              fontFamily: "Proxima Nova Font",
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
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
