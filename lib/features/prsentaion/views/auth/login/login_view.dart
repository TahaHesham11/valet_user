import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/auth/login/cubit/login_cubit.dart';
import 'package:valet_user/features/prsentaion/views/auth/register/register_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_floating.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../../core/constants/validate.dart';
import '../../choose_language/choose_language_view.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: myBackground,
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = LoginCubit.get(context);
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Stack(
                children: [
                  Image.asset(AppAssets.loginUp),
                  const CustomAppBar(),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: 80.0, start: 15.r, end: 15.r),
                    child: Form(
                      key: cubit.formKay,
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
                            text: 'Sign in'.tr(),
                            color: Colors.white,
                            margin: EdgeInsetsDirectional.only(
                                top: 40.r, bottom: 80.r),
                          ),
                          MyText(
                            text:
                                '“To register a new account or log in to your account, please enter your mobile number“'
                                    .tr(),
                            color: red,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30.0.r),
                            child: CustomDefaultField(
                              controller: cubit.phoneController,
                              type: TextInputType.phone,
                              label: 'Enter your mobile number'.tr(),
                              validate: validate(text: 'mobile number'),
                            ),
                          ),
                          Row(
                            children: [
                              CustomTitleText(
                                text: 'Login'.tr(),
                                color: Colors.white,
                              ),
                              const Spacer(),
                              CustomFloating(onPressed: () {
                                if (cubit.formKay.currentState!.validate()) {
                                  navigateTo(
                                      context, const ChooseLanguageScreen());
                                }
                              }),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomStart,
                            child: CustomTextButton(
                              margin: EdgeInsetsDirectional.only(top: 60.r),
                              text: 'Create an account'.tr(),
                              color: Colors.white,
                              fontSize: 14.sp,
                              onPressed: () {
                                navigateTo(context, RegisterScreen());
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
