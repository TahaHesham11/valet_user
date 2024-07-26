import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/create-reservation/create_reservation_view.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

class ServiceAvailabilityLocationsItem extends StatelessWidget {
  const ServiceAvailabilityLocationsItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return               GestureDetector(
      onTap: (){
        navigateTo(context, CreateReservationScreen());
      },
      child: Column(
        children: [
          Container(
      
            margin: EdgeInsetsDirectional.only(start: 10.r),
              width: 140.w,
              height: 185.h,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset(AppAssets.availabilityLocations),
                  Container(
                    padding: EdgeInsetsDirectional.all(5.r),
                    margin: EdgeInsetsDirectional.only(bottom: 5.r),
                    height: 59.h,
                    width: 129.w,
      
                    decoration: BoxDecoration(
      
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white.withOpacity(0.8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ]),
      
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
                            MyText(text: ' : متاح',color: Colors.green,fontSize: 8.sp,)
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(AppAssets.location,width: 15.w,height: 15.h,),
                            Expanded(child: MyText(text: 'Show the location on the map'.tr(),fontSize: 8.sp,color: Colors.grey,))
                          ],
                        )
                      ],
                    ),
      
                  ),
      
                ],
              )
          ),
          MyButton(
            onPressed: (){},
            text: 'Book a place'.tr(),width: 140.r,height: 27.h,
            fontSize: 12.sp,
            borderRadius: BorderRadius.circular(10.r),
            margin: EdgeInsetsDirectional.only(top: 10.r,start: 10.r),
          )
        ],
      ),
    );

  }
}
