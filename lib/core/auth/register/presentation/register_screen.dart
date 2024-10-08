import 'dart:async';

import 'package:clinic/constants/assets_path.dart';
import 'package:clinic/constants/colors.dart';
import 'package:clinic/core/auth/login/presentation/login_screen.dart';
import 'package:clinic/core/auth/otp/presentation/otp_screen.dart';
import 'package:clinic/utils/ui/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const routeName = '/registerScreen';

  @override
  Widget build(BuildContext context) {
    final RoundedLoadingButtonController btnController =
        RoundedLoadingButtonController();

    void onSignUp() async {
      //TODO: Implement Sign Up
      Timer(const Duration(seconds: 3), () {
        btnController.success();
        context.go(OtpScreen.routeName);
      });
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'الدوكش',
                      style: GoogleFonts.cairo(
                        fontSize: 30.w,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: GoogleFonts.cairo(
                        fontSize: 20.w,
                        fontWeight: FontWeight.w700,
                        color: signInTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                const CustomTextFromField(
                  labelText: "Create Username",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  isPassword: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextFromField(
                  labelText: "Enter Email",
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  isPassword: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextFromField(
                  labelText: "Create Password",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  isPassword: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextFromField(
                  labelText: "Re-Enter Password",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  isPassword: true,
                ),
                SizedBox(
                  height: 30.h,
                ),
                RoundedLoadingButton(
                  width: 120.w,
                  borderRadius: 10,
                  color: signInTextColor,
                  controller: btnController,
                  onPressed: onSignUp,
                  successColor: Colors.green,
                  errorColor: Colors.red,
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 16.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5.h),
                      color: onBoardingTextColor,
                      height: 1.h,
                      width: 110.w,
                    ),
                    Text(
                      "connect with",
                      style: GoogleFonts.cairo(
                        fontSize: 14.w,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.h),
                      color: onBoardingTextColor,
                      height: 1.h,
                      width: 110.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  child: Image.asset(
                    googleImage,
                    height: 30.h,
                    width: 30.w,
                  ),
                  onTap: () {
                    //TODO: Implement Login with Google
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'already have an account?',
                      style: GoogleFonts.cairo(
                        fontSize: 13.w,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        context.go(LoginScreen.routeName);
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.cairo(
                          fontSize: 13.w,
                          color: registerTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
