import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 142.h,
      decoration: BoxDecoration(
          color: myColor, borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 5.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: 'Get a 15% discount once you subscribe to the service'
                        .tr(),
                    color: Colors.white,
                    margin: EdgeInsetsDirectional.only(bottom: 10.r),
                  ),
                  MyButton(
                    onPressed: () {},
                    width: 90.w,
                    height: 30.h,
                    fontSize: 12.sp,
                    text: 'join us'.tr(),
                    background: Colors.black,
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Image.asset(AppAssets.carBrand))
        ],
      ),
    );
  }
}
