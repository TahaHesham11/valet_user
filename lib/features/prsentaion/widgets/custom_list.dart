import 'dart:developer';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';

class CustomList extends StatelessWidget {
  final List<String>? listItem;
  final EdgeInsets? padding;
  final EdgeInsetsGeometry? margin;
  final String? Function(String?)? validate;
  final String text;
  final BoxBorder? borderAll;
  final Color? fontColor;
  final Color? background;
  final double? fontSize;
  final double? height;
  final double? width;
  final Color? iconColor;
  final Color? textColor;
  final bool shapeIcon;
  final double? fontIcon;
  final List<BoxShadow>? boxShadow;
  final Widget Function(BuildContext, String, bool)? headerBuilder;
  final Widget Function(BuildContext, String, bool, void Function())?
      listItemBuilder;

  const CustomList({
    super.key,
    this.width,
    this.shapeIcon = false,
    this.fontIcon,
    this.iconColor,
    this.textColor,
    required this.text,
    this.boxShadow,
    this.fontSize,
    this.padding,
    this.listItem,
    this.borderAll,
    this.fontColor,
    this.background,
    this.validate,
    this.height,
    this.margin,
    this.headerBuilder,
    this.listItemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 10.r, horizontal: 10.r),
      child: CustomDropdown<String>(
        items: listItem,
        validator: validate,

        headerBuilder: headerBuilder,
        // closedHeaderPadding: padding??EdgeInsets.only(top: 7.r.r,bottom: 7.r, left: 2.r,right: 2.r),
        hintText: text,

        decoration: CustomDropdownDecoration(
            closedBorder: borderAll,
            errorStyle:  TextStyle(color: red),
            closedBorderRadius: BorderRadius.circular(20.r),
            closedFillColor: background ?? Colors.white,
            headerStyle: TextStyle(
              fontSize: 11.sp,
            ),
            hintStyle: TextStyle(
              color: fontColor ?? Colors.grey[400],
              fontSize: fontSize,
            ),
            closedSuffixIcon: shapeIcon
                ? Icon(
                    Icons.arrow_drop_down_outlined,
                    size: fontIcon ?? 30.0.sp,
                    color: iconColor,
                  )
                : Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: fontIcon ?? 30.r,
                    color: iconColor,
                  ),
            expandedSuffixIcon: Icon(
              Icons.arrow_drop_up_outlined,
              size: fontIcon ?? 20.r,
              color: iconColor,
            )),
        onChanged: (value) {
          log('changing value to: $value');
        },
      ),
    );
  }
}
