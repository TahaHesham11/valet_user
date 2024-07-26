import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';


class CustomTextButton extends StatelessWidget {

 final void  Function()? onPressed;
 final  String text;
 final  Color? color;
 final  double? fontSize;
 final EdgeInsetsGeometry? margin;
 final int? maxLines;
 final TextDecoration? decoration;
  const CustomTextButton({
     super.key,
     required this.text,
     required this.onPressed,
     this.color,
    this.margin,
    this.maxLines,
    this.decoration,
     this.fontSize});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: margin,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            maxLines: maxLines,
            style: TextStyle(
decoration: decoration,
             color: color??myColor,
                 fontSize: fontSize??10.0.sp,
            ),
          )
      ),
    );
  }
}




