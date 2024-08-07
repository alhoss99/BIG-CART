// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  final Icon? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboradType;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.icon,
    this.suffixIcon,
    required this.obscureText,
    this.keyboradType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 7.h),
            blurRadius: 10,
            color: Colors.black12,
          )
        ],
        // color: Colors.white,
      ),
      child: TextFormField(
        keyboardType: keyboradType,
        obscureText: obscureText,
        cursorHeight: 25.h,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          labelStyle: const TextStyle(),
          hintStyle: Theme.of(context).textTheme.bodySmall,
          hintTextDirection: TextDirection.rtl,
          prefixIcon: icon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
      ),
    );
  }
}
