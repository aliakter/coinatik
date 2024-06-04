import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              icon: Icon(
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
              height: (80 / 896) * screenHeight(context),
              width: (350 / 414) * screenWidth(context),
              child: Image.asset(
                "assets/images/signup2.png",
                fit: BoxFit.contain,
              ),
            ), // Background Image
            Container(
              height: (900 / 896) * screenHeight(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
                color: const Color(0xFFF5F5FA),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: (30 / 896) * screenHeight(context),
                    ),
                    Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          color: const Color(0xFF22264C),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),
                    Center(
                      child: Text(
                        "It's free and easy to set up!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          color: const Color(0xFF22264C),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (34 / 896) * screenHeight(context),
                    ),
                    Text(
                      "Full Name",
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
                      width: (346 / 364) * screenWidth(context),
                      height: (60 / 896) * screenHeight(context),
                      child: TextField(
                        // controller: controller.nameController,
                        decoration: InputDecoration(
                          // hintText: 'Email Address',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (15 / 896) * screenHeight(context),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email Address",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "ComicNeue",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),

                    SizedBox(
                      width: (346 / 364) * screenWidth(context),
                      height: (60 / 896) * screenHeight(context),
                      child: TextField(
                        // controller: controller.emailController,
                        decoration: InputDecoration(
                          // hintText: 'Email Address',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (15 / 896) * screenHeight(context),
                    ),

                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "ComicNeue",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),
                    // Recreate the password TextField when visibility changes
                    Container(
                      width: (346 / 364) * screenWidth(context),
                      height: (60 / 896) * screenHeight(context),
                      child: TextField(
                        // obscureText: !controller
                        //     .passwordVisibilityController
                        //     .isPasswordVisible
                        //     .value,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          // hintText: 'Enter password',
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(
                              // controller.passwordVisibilityController
                              //     .isPasswordVisible.value
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
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (15 / 896) * screenHeight(context),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Referral ID (optional)",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "ComicNeue",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (10 / 896) * screenHeight(context),
                    ),

                    SizedBox(
                      width: (346 / 364) * screenWidth(context),
                      height: (60 / 896) * screenHeight(context),
                      child: TextField(
                        // controller: controller.referralidController,
                        decoration: InputDecoration(
                          // hintText: 'Email Address',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (40 / 896) * screenHeight(context),
                    ),

                    // SizedBox(height: (2 / 896) * ResponsiveManager.getDeviceHeight(context),),

                    SizedBox(
                      width: (346 / 364) * screenWidth(context),
                      height: (60 / 896) * screenHeight(context),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF005EFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          // Get.off(() => PinAuthScreen());
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: (20 / 896) * screenHeight(context),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By registering you agree to ",
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 10,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF7931A),
                              fontFamily: "Proxima Nova Font",
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5 / 896) * screenHeight(context),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "and ",
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 10,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Privacy & Policy ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF7931A),
                              fontFamily: "Proxima Nova Font",
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Text(
                          "of coinatik",
                          style: TextStyle(
                            fontFamily: "Proxima Nova Font",
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: (35 / 896) * ResponsiveManager.getDeviceHeight(context),),
                    // Rest of your code...
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
