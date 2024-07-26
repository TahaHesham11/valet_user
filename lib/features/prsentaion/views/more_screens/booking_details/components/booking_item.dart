import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../../core/constants/app_assets.dart';
import '../../../../../../core/constants/color.dart';

class BookingItem extends StatelessWidget {
  const BookingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsetsDirectional.all(10.r),
      width: 350.w,
      height: 230.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            )

          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyText(text: 'Booking details : '.tr()),
          Row(
            children: [
              Image.asset(AppAssets.location),
              MyText(text: 'Riyadh, Eastern Province'.tr(), color: Colors.grey,
                margin: EdgeInsetsDirectional.only(start: 10.r),
              )
            ],
          ),
          Row(
            children: [
              Image.asset(AppAssets.deliveryTruck),
              MyText(text: 'Ford F350 / A 61026 / green', color: Colors.grey,
                margin: EdgeInsetsDirectional.only(start: 10.r),

              )
            ],
          ),
          Row(
            children: [
              Image.asset(AppAssets.onlineBooking),
              MyText(text: 'Valet service (100 SAR)'.tr(), color: Colors.grey,
                margin: EdgeInsetsDirectional.only(start: 10.r),

              )
            ],
          ),
          Row(
            children: [
              Image.asset(AppAssets.carServices),
              MyText(text: 'Car wash service (134 SAR)'.tr(), color: Colors.grey,
                margin: EdgeInsetsDirectional.only(start: 10.r),

              )
            ],
          ),
          MyText(text: 'Total cost :'.tr()),
          MyText(text: '234 ريال سعودي', color: myColor,),
        ],
      ),
    );
  }
}
