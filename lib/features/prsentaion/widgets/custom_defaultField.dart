import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';

class CustomDefaultField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final TextInputType type;
  final IconData? suffix;
  final Color? backGround;
  final double? fontSize;
  final double? width;
  final void Function()? onTap;
  final void Function()? suffixPressed;
  final Color? fontColor;
  final bool enable;
  final TextAlign? textAlign;
  final bool? isPassword;
  final Widget? suffixImage;
  final String? Function(String? value)? validate;
  final Widget? prefix;
  final TextInputAction? textInputAction;
  final InputDecoration? decoration;
  final Color? fillColor;
  final bool? filled;
  final BorderSide? borderSide;
  final bool showBorder;
  final int maxLines;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final Color? borderColor;
  final double? height;
  final List<BoxShadow>? boxShadow;

  const CustomDefaultField({
    this.textAlign,
    super.key,
    this.boxShadow,
    required this.controller,
    this.borderColor,
    this.suffixImage,
    this.prefix,
    this.maxLines = 1,
    this.isPassword = false,
    this.showBorder = false,
    this.onTap,
    this.height,
    this.borderSide,
    this.suffixPressed,
    this.fontColor,
    this.fontSize,
    this.decoration,
    this.width,
    this.label,
    required this.type,
    this.backGround,
    this.enable = true,
    this.suffix,
    this.validate,
    this.textInputAction,
    this.fillColor,
    this.filled,
    this.onSubmitted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.r, horizontal: 10.r),
      child: TextFormField(
        style: TextStyle(
          color: fontColor ?? Colors.black,
          fontSize: 15.sp,
        ),
        controller: controller,
        enabled: enable,
        keyboardType: type,
        onChanged: onChanged,
        obscureText: isPassword ?? false,
        textInputAction: textInputAction,
        validator: validate,
        onTap: onTap,
        onFieldSubmitted: onSubmitted,
        maxLines: maxLines,
        textAlign: textAlign ?? TextAlign.start,
        decoration: InputDecoration(
          fillColor: fillColor ?? Colors.white,
          errorStyle: TextStyle(color: red),
          filled: filled ?? true,
          prefixIcon: prefix,
          suffixIcon: suffixImage,
          hintText: label,
          hintStyle: TextStyle(
              color: fontColor ?? Colors.grey[400],
              fontSize: fontSize ?? 15.sp,
              fontWeight: FontWeight.w400),
          border: showBorder
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: borderColor ?? myColor,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                )
              : OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0.r),
                ),
        ),
      ),
    );
  }
}
