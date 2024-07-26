import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/color.dart';

class TabBarItem extends StatelessWidget {
  final String text;
  final String title;
  const TabBarItem({super.key,required this.text,required this.title});

  @override
  Widget build(BuildContext context) {
    return             Container(
      width: 300.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.r),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TabBar(
        physics: const BouncingScrollPhysics(),
        indicator: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(35.r),
        ),
        indicatorColor: Colors.white,
        unselectedLabelColor: myColor,
        labelColor: Colors.white,
        dividerHeight: 0,
        padding: EdgeInsetsDirectional.symmetric(vertical: 5.r),
        tabs: [
          Container(

            padding:  EdgeInsets.symmetric(horizontal: 30.r,),
            child: Tab(
              child: Text(
                text,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.r,),
            child: Tab(
              child: Text(
               title,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
