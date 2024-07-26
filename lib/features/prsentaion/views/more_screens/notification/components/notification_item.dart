import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

import '../../../../../../core/constants/color.dart';


class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                width: 330.w,
                height: 120.h,
                margin: EdgeInsetsDirectional.only(bottom: 20.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0xffFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]
                ),
                padding: EdgeInsetsDirectional.all(12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.chat,color: myColor,),
                        Container(
                          width: 5.w,
                          height: 5.h,
                          margin: EdgeInsetsDirectional.symmetric(horizontal: 5.r),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: red
                          ),
                        ),
                        MyText(text: 'Now',color: Colors.green,),
                        Spacer(),
                        GestureDetector(
                            onTap: (){},
                            child:  Icon(Icons.close,color: red,))

                      ],
                    ),

                    Expanded(
                      flex: 5,
                      child: MyText(
                          maxLine: 1,
                          text: 'مثال نصي متغير',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsetsDirectional.only(top: 10.0.r),
                      child: MyText(
                          text:' هذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييره',
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: Colors.grey,
                        margin: EdgeInsetsDirectional.only(bottom: 10.r),
                      ),
                    ),
                    Row(
                      children: [
                        MyText(text: '22 April',fontSize: 12.sp,),
                        Spacer(),
                        MyText(text: '5:12 am',fontSize: 12.sp,),
                      ],
                    )

                  ],
                )
            ),
          ],
        ),
        Container(

            width: 330.w,
            height: 120.h,
            margin: EdgeInsetsDirectional.only(bottom: 20.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xffFFFFFF),

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]
            ),
            padding: EdgeInsetsDirectional.all(12.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.error_outline,color: red),
                    Container(
                      width: 5.w,
                      height: 5.h,
                      margin: EdgeInsetsDirectional.symmetric(horizontal: 5.r),

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: myGrey
                      ),
                    ),
                    MyText(text: 'yesterday',color: Colors.green,),
                    Spacer(),
                    GestureDetector(
                        onTap: (){},
                        child:  Icon(Icons.close,color: red,))

                  ],
                ),

                Expanded(
                  flex: 5,
                  child: MyText(

                    maxLine: 1,
                    text: 'مثال نصي متغير',
                  ),
                ),
                Padding(
                  padding:  EdgeInsetsDirectional.only(top: 10.0.r),
                  child: MyText(
                      text:' هذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييره',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp,
                      color: Colors.grey,
                    margin: EdgeInsetsDirectional.only(bottom: 10.r),

                  ),
                ),
                Row(
                  children: [
                    MyText(text: '22 April',fontSize: 12.sp,),
                    Spacer(),
                    MyText(text: '5:12 am',fontSize: 12.sp,),
                  ],
                )

              ],
            )
        ),
      ],
    );
  }
}
