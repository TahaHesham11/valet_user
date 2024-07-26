import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
 final Color? color;
  const CustomAppBar({super.key,this.color});

  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding:  EdgeInsetsDirectional.only(top: 40.r),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:  Icon(
              Icons.arrow_back_ios,
              color:color??Colors.white,

            )),
      ),
    );

  }
}
