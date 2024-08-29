import 'dart:async';

import 'package:clinic/constants/assets_path.dart';
import 'package:clinic/constants/colors.dart';
import 'package:clinic/core/auth/register/presentation/register_screen.dart';
import 'package:clinic/utils/ui/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/loginScreen';

  @override
  Widget build(BuildContext context) {
    final RoundedLoadingButtonController btnController =
        RoundedLoadingButtonController();

    void doSomething() async {
      //TODO: Implement Sign In
      Timer(const Duration(seconds: 3), () {
        btnController.success();
      });
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 100.h),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      'Sign In',
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
                  labelText: "Enter Email",
                  textInputType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextFromField(
                  labelText: "Enter Password",
                  textInputType: TextInputType.text,
                  isPassword: true,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forget password?',
                      style: GoogleFonts.cairo(
                        fontSize: 14.w,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                RoundedLoadingButton(
                  width: 120.w,
                  borderRadius: 10,
                  color: signInTextColor,
                  controller: btnController,
                  onPressed: doSomething,
                  successColor: Colors.green,
                  errorColor: Colors.red,
                  child: Text(
                    'Sign In',
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
                  child: Image.asset(googleImage),
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
                      'don\'t have an account?',
                      style: GoogleFonts.cairo(
                        fontSize: 14.w,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        context.go(RegisterScreen.routeName);
                      },
                      child: Text(
                        'Register',
                        style: GoogleFonts.cairo(
                          fontSize: 15.w,
                          color: registerTextColor,
                          fontWeight: FontWeight.w700,
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
