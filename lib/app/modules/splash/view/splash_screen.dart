import 'package:coinatik/app/core/utils/constants.dart';
import 'package:coinatik/app/core/values/k_images.dart';
import 'package:coinatik/app/modules/splash/controller/splash_controller.dart';
import 'package:coinatik/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5FA),
                borderRadius: BorderRadius.all(
                  Radius.circular(40.r),
                ),
              ),
              child: Image.asset(
                KImages.splashBg,
                width: screenWidth(context) * (354 / 414),
                height: screenHeight(context) * (532 / 896),
              ),
            ),
            SizedBox(
              height: (28 / 896) * screenHeight(context),
            ),
            Center(
              child: Text(
                'Best Way to Invest Your Money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Proxima Nova Font",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF22264C),
                ),
              ),
            ),
            SizedBox(
              height: (49 / 896) * screenHeight(context),
            ),
            SizedBox(
              width: screenWidth(context) * (330 / 414),
              height: screenHeight(context) * (60 / 896),
              child: Obx(
                () => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        splashController.isSignUpButtonSelected.value
                            ? const Color(0xFF005EFF)
                            : const Color(0xFFF1F1F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {
                    splashController.toggleSignUpButton();
                    // Get.off(PinAuthScreen());
                    Get.toNamed(Routes.pinAuth);
                  },
                  child: Obx(
                    () => Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: splashController.isSignUpButtonSelected.value
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: (20 / 896) * screenHeight(context)),
            SizedBox(
              width: screenWidth(context) * (330 / 414),
              height: screenHeight(context) * (60 / 896),
              child: Obx(
                () => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        !splashController.isSignUpButtonSelected.value
                            ? const Color(0xFF005EFF)
                            : const Color(0xFFF1F1F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {
                    splashController.toggleSignUpButton();
                    Get.toNamed(Routes.signin);
                  },
                  child: Obx(
                    () => Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: "Proxima Nova Font",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: !splashController.isSignUpButtonSelected.value
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: (15 / 896) * screenHeight(context).h,
            ),
          ],
        ),
      ),
    );
  }
}
