import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:valet_user/features/prsentaion/views/auth/verification/cubit/verification_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_floating.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';
import '../Verified/verified_view.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: Scaffold(
        backgroundColor: myBackground,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(AppAssets.loginUp),
              const CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(top: 80.0.r),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 187.w,
                      height: 95.h,
                    ),
                    CustomTitleText(
                      text: 'Mobile number verification'.tr(),
                      margin: EdgeInsetsDirectional.only(bottom: 20.r),
                    ),
                    MyText(
                      text: '+952365526',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    MyText(
                      text: 'Enter the confirmation code'.tr(),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      margin:
                          EdgeInsetsDirectional.only(top: 50.r, bottom: 20.r),
                    ),
                    code_field(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0.r),
                      child: Row(
                        children: [
                          CustomTextButton(
                            onPressed: () {
                              // Your action here
                            },
                            text: 'Resend the code'.tr(),
                            decoration: TextDecoration.underline,
                            // This adds underline to the text
                            color: red,
                            fontSize: 15.sp,
                          ),
                          const Spacer(),
                          MyText(
                            text: '60 Seconds'.tr(),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CustomTitleText(text: 'Verification'.tr()),
                        const Spacer(),
                        CustomFloating(
                          onPressed: () {
                            navigateTo(context, const VerifiedScreen());
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding code_field() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.r),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final cubit = VerificationCubit.get(context);
          return PinCodeTextField(
            textInputAction: TextInputAction.send,
            // validator:    validate(text: 'code'),

            appContext: context,
            length: 4,
            controller: cubit.verificationNumber,
            autoFocus: true,
            cursorColor: Colors.black,
            keyboardType: TextInputType.number,
            obscureText: false,
            animationType: AnimationType.scale,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5.r),
              fieldHeight: 50.h,
              fieldWidth: 50.w,
              borderWidth: 1.0.w,
              activeFillColor: Colors.grey[200],
              activeColor: Colors.grey[200],
              inactiveColor: Colors.grey[200],
              inactiveFillColor: Colors.white,
              selectedColor: Colors.grey[200],
              selectedFillColor: Colors.white,
            ),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            enableActiveFill: true,
            onCompleted: (submitCode) {},
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
