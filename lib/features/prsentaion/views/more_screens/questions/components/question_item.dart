import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/my_text.dart';

class QuestionItem extends StatelessWidget {

  final bool isShowBorder;

  const QuestionItem({super.key,this.isShowBorder = false});

  @override
  Widget build(BuildContext context) {
    return           Container(
      padding: EdgeInsetsDirectional.all(10.r),
      width: 320.w,
      height: 50.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow:  [
            isShowBorder ? const BoxShadow(
              color: Color(0xffD4AE57),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            ) : const BoxShadow(
              color: Colors.white,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 0),
            )
          ]
      ) ,

      child: Row(
        children: [
          Expanded(
            child: MyText(text: 'This text is an example of text that can be changed ?',
              fontWeight: FontWeight.w500,fontSize: 13.sp,),
          ),
          const Icon(Icons.arrow_circle_down_rounded)
        ],
      ),
    );

  }
}
