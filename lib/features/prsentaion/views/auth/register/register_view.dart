import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:valet_user/features/prsentaion/views/auth/verification/verification_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_floating.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_list.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterScreen extends StatelessWidget {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackground,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Image.asset(
              AppAssets.registerUp,
            ),
            CustomAppBar(),
            buildRegisterItem(firstName: firstName, lastName: lastName),
          ],
        ),
      ),
    );
  }
}

class buildRegisterItem extends StatelessWidget {
  const buildRegisterItem({
    super.key,
    required this.firstName,
    required this.lastName,
  });

  final TextEditingController firstName;
  final TextEditingController lastName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 80.r, start: 15.0.r, end: 15.r),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              AppAssets.logo,
              width: 187.w,
              height: 95.h,
            ),
          ),
          CustomTitleText(
            text: 'Create an account'.tr(),
            color: Colors.white,
            margin: EdgeInsetsDirectional.only(top: 20.r, bottom: 50.r),
          ),
          CustomDefaultField(
            controller: firstName,
            type: TextInputType.name,
            label: 'First Name'.tr(),
          ),
          CustomDefaultField(
            controller: lastName,
            type: TextInputType.name,
            label: "Last Name".tr(),
          ),
          CustomList(
            text: 'Gender'.tr(),
            listItem: ['ذكر', 'انثي'],
          ),
          CustomList(
            text: 'Region'.tr(),
            listItem: ['جدة', 'الرياض'],
          ),
          CustomList(
            text: 'City'.tr(),
            listItem: ['جدة', 'الرياض'],
          ),
          Stack(
            children: [
              Row(
                children: [
                  CustomTitleText(
                    text: 'Login'.tr(),
                    color: Colors.white,
                  ),
                  const Spacer(),
                  CustomFloating(onPressed: () {
                    navigateTo(context, VerificationScreen());
                  }),
                ],
              ),
            ],
          ),
          Align(
              alignment: AlignmentDirectional.bottomStart,
              child: CustomTextButton(
                fontSize: 14.sp,
                color: Colors.white,
                text: 'Sign in'.tr(),
                onPressed: () {
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );
  }
}
