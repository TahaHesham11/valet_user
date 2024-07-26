import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomSearch extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearch({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding:  EdgeInsetsDirectional.only(top: 15.0.r,start: 10.r,end: 10.r),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            fillColor: Colors.grey[300],
            border: InputBorder.none,


            suffixIcon: Icon(Icons.search,color: myColor,),
            hintText: 'Enter your reservation number'.tr(),
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14.sp
            ),
            filled: true
        ),
        controller: controller,
      ),
    );

  }
}
