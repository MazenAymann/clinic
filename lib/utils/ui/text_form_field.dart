import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class CustomTextFromField extends StatefulWidget {
  const CustomTextFromField({
    super.key,
    required this.labelText,
    required this.textInputType,
    required this.isPassword,
    required this.textInputAction,
  });

  final String labelText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool isPassword;
  @override
  State<CustomTextFromField> createState() => _CustomTextFromFieldState();
}

class _CustomTextFromFieldState extends State<CustomTextFromField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      cursorColor: signInTextColor,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: GoogleFonts.cairo(color: signInTextColor),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: signInTextColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: signInTextColor),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: signInTextColor,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
      keyboardType: widget.textInputType,
    );
  }
}
