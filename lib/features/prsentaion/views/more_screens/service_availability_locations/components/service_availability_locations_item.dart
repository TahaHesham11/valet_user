import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class ServiceAvailabilityLocations extends StatelessWidget {
  const ServiceAvailabilityLocations({super.key});

  @override
  Widget build(BuildContext context) {
    return       Column(
      children: [

        Image.asset(AppAssets.serviceLocation),
        Container(
          padding: EdgeInsetsDirectional.all(5.r),
          height: 59.h,
          width: 333.w,

          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),

          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(text: 'Eastern Province'.tr(),fontSize: 10.sp,color: myColor,),
                    Row(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.8),
                              border: Border.all(color: myColor)
                          ),
                          width: 10.w,
                          height: 10.h,
                        ),
                        MyText(text: 'The condition'.tr(),fontSize: 8.sp,color: Colors.grey,margin: EdgeInsetsDirectional.only(start: 3.r),),
                        MyText(text: ': متاح',color: Colors.green,fontSize: 8.sp,)
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(AppAssets.location,width: 15.w,height: 15.h,),
                        MyText(text: 'Show the location on the map'.tr(),fontSize: 8.sp,color: Colors.grey,)
                      ],
                    )
                  ],
                ),
              ),
              MyButton(
                onPressed: (){},
                text: 'Book a place'.tr(),width: 140.r,height: 27.h,
                fontSize: 12.sp,
                borderRadius: BorderRadius.circular(10.r),
                margin: EdgeInsetsDirectional.only(top: 10.r,start: 10.r),
              ),

            ],
          ),

        )
      ],
    );
  }
}
