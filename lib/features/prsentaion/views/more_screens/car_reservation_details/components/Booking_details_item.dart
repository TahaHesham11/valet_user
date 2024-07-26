import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class BookingDetailsItem extends StatelessWidget {
  final bool isShow;
  final String text;
  final Widget? image;
  const BookingDetailsItem(
      {super.key, this.isShow = false, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 15.r),
      width: 338.w,
      height: 56.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0.r),
        child: Row(
          children: [
            MyText(
              text: text,
              color: myGrey,
            ),
            const Spacer(),
            isShow ? image! : Container(),
          ],
        ),
      ),
    );
  }
}
