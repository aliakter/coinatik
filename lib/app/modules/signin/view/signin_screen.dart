import 'package:coinatik/app/core/values/k_images.dart';
import 'package:coinatik/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                // size: 17.w,
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
                KImages.signinBg,
                fit: BoxFit.contain,
              ),
            ), // Background Image
            SizedBox(
              height: (68 / 896) * screenHeight(context),
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontFamily: "Proxima Nova Font",
                color: const Color(0xFF22264C),
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: (36 / 896) * screenHeight(context),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Move content to the bottom
                  Text(
                    "Email Address",
                    textAlign: TextAlign.left,
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
                      // controller: controller.emailController,
                      textInputAction: TextInputAction.next,
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
                    height: (25 / 896) * screenHeight(context),
                  ),
                  Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "ComicNeue",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: (10 / 896) * screenHeight(context),
                  ),
                  // Recreate the password TextField when visibility changes
                  SizedBox(
                    width: (358 / 364) * screenWidth(context),
                    height: (75 / 896) * screenHeight(context),
                    child: TextField(
                      // obscureText: !controller
                      //     .passwordVisibilityController
                      //     .isPasswordVisible
                      //     .value,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // hintText: 'Enter password',
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Color(0xFF22264C),
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            // controller.passwordVisibilityController
                            //         .isPasswordVisible.value
                            //     ? Icons.visibility_off
                            Icons.visibility,
                            color: Color(0xFF005EFF),
                          ),
                          onPressed: () {
                            // controller.passwordVisibilityController
                            //     .togglePasswordVisibility();
                          },
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Get.off(ForgetPasswordPage());
                          Get.toNamed(Routes.forgetPassword);
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF22264C),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
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
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          fontSize: 14.sp,
                          color: const Color(0xFF9C98AA),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Get.off(SignupPage());
                          Get.toNamed(Routes.signup);
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 14.sp,
                            color: const Color(0xFFF7931A),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (35 / 896) * screenHeight(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
