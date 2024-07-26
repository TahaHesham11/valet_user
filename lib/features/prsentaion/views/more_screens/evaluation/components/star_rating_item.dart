import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class StartRatingItem extends StatelessWidget {
  final bool isShow;
  const StartRatingItem({super.key,this.isShow = true});

  @override
  Widget build(BuildContext context) {
    return              Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
      width: 346.w,
      height: 60.h,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF3F3F3),width: 2.w),
          borderRadius: BorderRadius.circular(10.r)
      ),
      child: isShow ? Row(
        children: [
          MyText(text: 'Star rating : '.tr(),color: myColor,margin: EdgeInsetsDirectional.only(start: 10.r),),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 20.0.r),
            child: RatingBar.builder(
                itemPadding: EdgeInsetsDirectional.symmetric(horizontal: 3.r),
                itemSize: 18.sp,
                initialRating: 1.0,
                minRating: 0.5,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 1.sp,
                  color: Colors.amber,
                ),
                onRatingUpdate: (value){}

            ),
          ),


        ],
      ):Row(
        children: [
          MyText(text: 'Employee Name : '.tr().tr(),color: myColor,margin: EdgeInsetsDirectional.only(start: 10.r),),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 10.0.r),
            child: MyText(
              text: 'Ahmed mohamed',
              color: myGrey,
            )
          ),


        ],
      ),
    );



  }
}
