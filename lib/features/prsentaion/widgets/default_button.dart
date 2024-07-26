import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:valet_user/core/constants/color.dart';
import 'my_text.dart';

class DefaultButton extends StatelessWidget {

  final String? text;
  final Widget image;
  final double? width;
  final double? height;
  final  void Function()? onPressed;
  final Color? background ;
 const  DefaultButton({
   super.key,
   this.height,
   this.background,
    this.text,
   required this.image,
    this.onPressed,
   this.width,
 });


  @override
  Widget build(BuildContext context) {
    return           Container(
      margin: EdgeInsetsDirectional.only(top: 30.r,start: 10.r,end: 10.r),
      height:height?? 69.h ,
      width: width??315.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: background ??myColor,
          border:Border.all(color: Colors.transparent),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,

          Padding(
            padding:  EdgeInsetsDirectional.only(start: 10.0.r),
            child: MyText(

              text:text??'',color: Colors.white,),
          ),

        ],
      ),
      ),
    );

  }
}
