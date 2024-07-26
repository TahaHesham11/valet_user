import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/settings/components/switch.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_list.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../widgets/app_bar.dart';
import 'cubit/setting_cubit.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: BlocConsumer<SettingCubit, SettingState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = SettingCubit.get(context);
          return Scaffold(
            body: Column(
              children: [
                DefaultAppBar(
                  text: 'Settings'.tr(),
                  isSpace: false,
                ),
                SwitchItem(),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10.r),
                  margin: EdgeInsetsDirectional.only(top: 20.r, bottom: 40.r),
                  width: 315.w,
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
                      MyText(
                        text: 'the language'.tr(),
                      ),
                      const Spacer(),
                      Expanded(
                        child: CustomList(
                          listItem: const ['English'],
                          width: 130.w,
                          height: 100,
                          text: 'Arabic'.tr(),
                          textColor: Colors.black,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                  onPressed: () {},
                  text: 'Save'.tr(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
