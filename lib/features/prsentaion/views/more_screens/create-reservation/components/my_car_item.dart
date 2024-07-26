import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class MyCarItem extends StatelessWidget {
  const MyCarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return           Container(
      margin: EdgeInsetsDirectional.only(bottom: 10.r),
      padding: EdgeInsetsDirectional.all(10.r),
      height: 100.h,
      width: 343.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]
      ),
      child: Row(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Image.asset(AppAssets.carName,width: 25.w,height: 25.h,),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsetsDirectional.only(start:10.0.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(text: 'Mercedes  63',maxLine: 2,),
                  MyText(text: 'A 61026',color: Colors.grey,),
                  MyText(text: 'Black'.tr(),color: Colors.grey,),
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset(AppAssets.car)
        ],
      ),
    );

  }
}
