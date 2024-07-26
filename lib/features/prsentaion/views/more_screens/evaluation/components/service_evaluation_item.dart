import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class ServiceEvaluationItem extends StatelessWidget {
  final  TextEditingController? controller;
  const ServiceEvaluationItem({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(4.r),
      height: 140.h,
      width: 350.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: const Color(0xffF3F3F3),width: 2.w)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(AppAssets.woman),
              MyText(text: 'Azza mahmoud',margin: EdgeInsetsDirectional.only(start: 10.r),)
            ],
          ),

          CustomDefaultField(
            boxShadow: [
              BoxShadow(

                  color: Colors.white
              )

            ],
            controller: controller,
            type: TextInputType.text,
            backGround: Colors.white,
            label: 'Write your comment now...'.tr(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              MyButton(
                title: 'Excellent'.tr(),
                fontSize: 10.sp,
                image: AppAssets.excellent,
                width: 93.w, height: 20.h,
                  isImage: false,
                  onPressed: (){},
                ),
              MyButton(
                title: 'Good'.tr(),
                fontSize: 10.sp,
                image: AppAssets.good,
                width: 93.w, height: 20.h,
                  isImage: false,
                  onPressed: (){},
                ),
              MyButton(
                title: 'Bad'.tr(),
                fontSize: 10.sp,
                image: AppAssets.bad,
                width: 93.w, height: 20.h,
                  isImage: false,
                  onPressed: (){},
                ),
            ],
          )

        ],
      ),
    );
  }
}
// Container(
// width: 80.w,
// height: 18.h,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(25.r),
// color: Colors.grey[300]
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
//
// children: [
// MyText(text: 'Excellent'.tr(),fontSize: 10.sp,),
//
// Image.asset(AppAssets.excellent),
// ],
// ),
// ),
