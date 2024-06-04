import 'package:coinatik/app/modules/reset_password/controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants.dart';
import '../../../core/values/k_images.dart';
import '../../../routes/routes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController =
        Get.put(ResetPasswordController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70.h,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 3.h),
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
                KImages.reset,
                fit: BoxFit.contain,
              ),
            ), // Background Image
            SizedBox(
              height: (60 / 896) * screenHeight(context),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: (60 / 896) * screenHeight(context),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        "Create New Password",
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          color: const Color(0xFF22264C),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                        ),
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
                        "Your new password must be different from previously used password.",
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
                    height: (64 / 896) * screenHeight(context),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "New Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "ComicNeue",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (10 / 896) * screenHeight(context),
                  ),
                  SizedBox(
                    width: (358 / 364) * screenWidth(context),
                    height: (75 / 896) * screenHeight(context),
                    child: TextField(
                      controller: resetPasswordController.newPasswordController,
                      // obscureText: !controller
                      //     .passwordVisibilityController
                      //     .isPasswordVisible
                      //     .value,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // hintText: 'Enter password',
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Color(0xFF005EFF),
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
                  SizedBox(
                    height: (30 / 896) * screenHeight(context),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Confirm New Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "ComicNeue",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (10 / 896) * screenHeight(context),
                  ),
                  SizedBox(
                    width: (358 / 364) * screenWidth(context),
                    height: (75 / 896) * screenHeight(context),
                    child: TextField(
                      controller:
                          resetPasswordController.confirmPasswordController,
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
                          color: Colors.grey,
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
                  SizedBox(
                    height: (40 / 896) * screenHeight(context),
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
                        Get.toNamed(Routes.twostepverification);
                      },
                      child: Center(
                        child: Text(
                          'Update Password',
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
                    height: (130 / 896) * screenHeight(context),
                  ),

                  // Rest of your code...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
