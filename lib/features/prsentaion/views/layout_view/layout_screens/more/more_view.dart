import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/about_application/about_application_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/call_us/call_us_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/condition/condition_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/privacy/privacy_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/questions/questions_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/settings/setting_view.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_Drawer_list.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';

import '../../../../../../core/constants/color.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DefaultAppBar(
              text: 'More'.tr(),
              isShow: false,
              isSpace: true,
            ),
            Padding(
              padding: EdgeInsets.all(12.0.r),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CustomDrawerList(
                    leadingIcon: GestureDetector(
                        onTap: () {
                          navigateTo(context, SettingScreen());
                        },
                        child: Image.asset(AppAssets.setting)),
                    onTap: () {},
                    title: 'Settings'.tr(),
                  ),
                  CustomDrawerList(
                    leadingIcon: Image.asset(AppAssets.share),
                    title: 'Share the app'.tr(),
                    trailing: Container(
                      width: 1.w,
                    ),
                  ),
                  CustomDrawerList(
                    onTap: () {},
                    leadingIcon: Image.asset(AppAssets.feedback),
                    title: 'Evaluate the application on stores'.tr(),
                    trailing: Container(
                      width: 1.w,
                    ),
                  ),
                  CustomDrawerList(
                    leadingIcon: Image.asset(AppAssets.information),
                    onTap: () {
                      navigateTo(context, AboutApplicationView());
                    },
                    title: 'About the application'.tr(),
                  ),
                  CustomDrawerList(
                    leadingIcon: Image.asset(AppAssets.ask),
                    onTap: () {
                      navigateTo(context, QuestionsScreen());
                    },
                    title: 'Common questions'.tr(),
                  ),
                  CustomDrawerList(
                    onTap: () {
                      navigateTo(context, ConditionScreen());
                    },
                    leadingIcon: Image.asset(AppAssets.conditions),
                    title: 'Terms and Conditions'.tr(),
                  ),
                  CustomDrawerList(
                    onTap: () {
                      navigateTo(context, PrivacyScreen());
                    },
                    leadingIcon: Image.asset(AppAssets.lock),
                    title: 'Privacy policy'.tr(),
                  ),
                  CustomDrawerList(
                    onTap: () {
                      navigateTo(context, CallUsScreen());
                    },
                    leadingIcon: Image.asset(AppAssets.call),
                    title: 'Call Us'.tr(),
                  ),
                  Container(
                    width: 100.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
                        color: red),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.trash,
                            color: Colors.white,
                          ),
                          MyText(
                            text: 'delete account'.tr(),
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
