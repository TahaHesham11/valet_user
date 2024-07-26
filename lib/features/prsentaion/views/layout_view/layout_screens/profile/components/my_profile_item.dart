import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class MyProfileITem extends StatelessWidget {
  final String text;
  final String title;
  final bool isEdit;
  const MyProfileITem({super.key,required this.text,required this.title,this.isEdit = true});


  @override
  Widget build(BuildContext context) {
    return           Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 15.r),
      width: 338.w,
      height: 60.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0.r),
        child: Row(
          children: [
            MyText(text:text.tr()),
            MyText(text:title),
            Spacer(),
            isEdit ? CircleAvatar(
              radius: 15.r,
              backgroundColor: myColor,
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.edit,color: Colors.white,size: 12.sp,)

              ),
            ) : Container(),
          ],
        ),
      ),
    );
  }
}
