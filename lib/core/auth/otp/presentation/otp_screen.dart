import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../../../constants/assets_path.dart';
import '../../../../constants/colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  static const routeName = '/otpScreen';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();
  bool isButtonDisabled = true;

  void onVerify() async {
    // Implement Verification
    Timer(const Duration(seconds: 3), () {
      btnController.success();
      // context.go(RegisterScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70.h),
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
                SizedBox(height: 30.h),
                Image.asset(
                  otpImage,
                  width: 187.2.w,
                  height: 165.h,
                ),
                SizedBox(height: 30.h),
                Text(
                  'OTP verification',
                  style: GoogleFonts.cairo(
                    fontSize: 18.w,
                    color: signInTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: 250.w,
                  child: Text(
                    'We sent an OTP to your registered email address',
                    style: GoogleFonts.cairo(
                      fontSize: 14.w,
                      color: otpSubTextColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.h),
                OTPTextField(
                  length: 6,
                  width: 253.w,
                  fieldWidth: 35.w,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                    borderColor: signInTextColor,
                  ),
                  onCompleted: (_) {
                    setState(() {
                      isButtonDisabled = false;
                    });
                  },
                  onChanged: (value) {
                    if (!isButtonDisabled && value.length != 6) {
                      setState(() {
                        isButtonDisabled = true;
                      });
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "0:59s",
                        style: GoogleFonts.cairo(
                          color: otpResendTextColor,
                          fontSize: 12.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                RoundedLoadingButton(
                  width: 120.w,
                  borderRadius: 10,
                  color: isButtonDisabled
                      ? disabledBtnColor.withOpacity(0.5)
                      : signInTextColor,
                  controller: btnController,
                  animateOnTap: !isButtonDisabled,
                  onPressed: isButtonDisabled ? null : onVerify,
                  successColor: Colors.green,
                  errorColor: Colors.red,
                  child: Text(
                    'Verify',
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 16.w,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t receive the verification OTP? ',
                      style: GoogleFonts.cairo(
                        fontSize: 13.w,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        // Implement Resend OTP
                      },
                      child: Text(
                        'Re-Send',
                        style: GoogleFonts.cairo(
                          fontSize: 13.w,
                          color: otpResendTextColor,
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
