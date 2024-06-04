import 'package:coinatik/app/modules/forget_password/view/forget_password_screen.dart';
import 'package:coinatik/app/modules/signin/view/signin_screen.dart';
import 'package:coinatik/app/modules/signup/view/signup_screen.dart';
import 'package:coinatik/app/modules/splash/view/splash_screen.dart';
import 'package:coinatik/app/modules/successful/view/successful_screen.dart';
import 'package:coinatik/app/modules/two_steps_verification/view/two_steps_screen.dart';
import 'package:coinatik/app/routes/routes.dart';
import 'package:get/get.dart';

import '../modules/email_varification/view/email_verification_screen.dart';
import '../modules/pin_auth/view/pin_auth_screen.dart';
import '../modules/reset_password/view/reset_password_screen.dart';

class Pages {
  static const initial = SplashScreen();
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const SplashScreen(),
      // binding:
    ),
    GetPage(
      name: Routes.pinAuth,
      page: () => const PinAuthScreen(),
    ),
    GetPage(
      name: Routes.signin,
      page: () => const SigninScreen(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: Routes.forgetPassword,
      page: () => const ForgetPasswordScreen(),
    ),
    GetPage(
      name: Routes.emailverification,
      page: () => const EmailVerificationScreen(),
    ),
    GetPage(
      name: Routes.resetpassword,
      page: () => const ResetPasswordScreen(),
    ),
    GetPage(
      name: Routes.twostepverification,
      page: () => const TwoStepsScreen(),
    ),
    GetPage(
      name: Routes.successful,
      page: () => const SuccessfulScreen(),
    ),
  ];
}
