import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/car_reservation_details/car_reservation_details_view.dart';
import 'package:valet_user/core/constants/navigate.dart';

import '../../../../../widgets/my_text.dart';

class CarDataItem extends StatelessWidget {
  const CarDataItem({super.key});

  @override
  Widget build(BuildContext context) {
    return                 GestureDetector(
      onTap: (){
        navigateTo(context, CarReservationDetailsScreen());
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(top: 10.r),
        padding: EdgeInsetsDirectional.all(10.r),
        width: 362.w,
        height: 376.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 4,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MyText(text: 'Serial'.tr()),
                MyText(text: ' : 123#')

              ],
            ),
            Row(
              children: [
                MyText(text: 'Identification number'.tr(),color: myGrey,),
                MyText(text: ' : 123#',color: myGrey,)

              ],
            ),
            Row(
              children: [
                Expanded(child: MyText(
                  maxLine: 1,
                  text: 'Date and time the reservation was created'.tr(),color: myGrey,)),
                MyText(text: ' : 10 April 2020',color: myGrey,)

              ],
            ),
            Row(
              children: [
                MyText(text: 'Address'.tr(),color: myGrey,),
                MyText(text: ' : Riyadh, Eastern Province',color: myGrey,)

              ],
            ),
            Row(
              children: [
                MyText(text: 'Service type'.tr(),color: myGrey,),
                MyText(text: ' : Valet',color: myGrey,)

              ],
            ),


            MyText(text: 'Car data'.tr()),


            Row(
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
                const Spacer(),
                Image.asset(AppAssets.car)
              ],
            ),

            Row(
              children: [
                MyText(text: 'Reservation type'.tr(),color: myGrey,),
                MyText(text: ' : online',color: myGrey,)

              ],
            ),
            Row(
              children: [
                MyText(text: 'Reservation status'.tr(),color: myGrey,),
                MyText(text: ' : جاري',color: myGrey,)

              ],
            ),


          ],
        ),
      ),
    );

  }
}
