import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/settings/cubit/setting_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class SwitchItem extends StatelessWidget {
  const SwitchItem({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = SettingCubit.get(context);

    return Container(
      width: 315.w,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.r),
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          MyText(text: 'Notification'.tr()),
          const Spacer(),
          FlutterSwitch(
              width: 50.w,
              height: 25.h,
              value: cubit.isSwitch,
              showOnOff: true,
              activeTextColor: Colors.black,
              toggleSize: 15.sp,
              activeText: 'ON',
              inactiveText: 'Of',
              activeColor: myGrey,
              activeToggleColor: Colors.green,
              onToggle: (value) {
                cubit.changeSwitch();
              })
        ],
      ),
    );
  }
}
