import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerList extends StatelessWidget {
  final Widget? leadingIcon;
  final String? title;
  final Widget? trailing;
  final Function()? onTap;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomDrawerList({
    this.title,
    this.color,
    this.fontSize,
    this.onTap,
    this.leadingIcon,
    this.trailing,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: leadingIcon,
      title: Text(
        title!,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
      trailing: trailing??Icon(Icons.arrow_forward_ios_rounded,size: 17.sp,),

      onTap: onTap,
    );
  }
}
