import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/views/auth/register/cubit/register_cubit.dart';
import 'package:valet_user/features/prsentaion/views/auth/verification/verification_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_floating.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import '../../../../../../core/constants/validate.dart';
import '../../../../../../core/constants/navigate.dart';
import '../../../../widgets/custom_list.dart';
import '../../../../widgets/custom_title_text.dart';
import 'package:easy_localization/easy_localization.dart';

class buildRegisterForm extends StatelessWidget {
  const buildRegisterForm({
    super.key,

  });

  @override
  Widget build(BuildContext context) {

    RegisterCubit cubit = RegisterCubit.get(context);

    return Padding(
      padding:  EdgeInsetsDirectional.only(top: 80.r,start: 15.0.r,end: 15.r),
      child: Form(
        key: cubit.formKey,
        child: Column(
          children: [

            Center(
              child: Image.asset(AppAssets.logo,width: 187.w,height: 95.h,),
            ),
            CustomTitleText(
              text: 'Create an account'.tr(),
              color: Colors.white,
              margin: EdgeInsetsDirectional.only(top: 20.r,bottom: 50.r),
            ),


            CustomDefaultField(
              controller: cubit.firstName,
              type: TextInputType.name,
              label: 'First Name'.tr(),
              validate:    validate(text: 'first name'),

            ),
            CustomDefaultField(
              controller: cubit.lastName,
              type: TextInputType.name,
              label:"Last Name".tr(),
              validate:    validate(text: 'last name'),

            ),

            CustomList(
              text: 'Gender'.tr(),listItem: const ['ذكر','انثي'],
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your gender';
                } else {
                  return null;
                }
              },
            ),
            CustomList(text: 'Region'.tr(),listItem: const ['جدة','الرياض'],
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your gender';
                } else {
                  return null;
                }
              },

            ),
            CustomList(text: 'City'.tr(),listItem: const ['جدة','الرياض'],
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your gender';
                } else {
                  return null;
                }
              },

            ),

            Stack(
              children: [
                Row(
                  children: [
                    CustomTitleText(text: 'Login'.tr(),color: Colors.white,),

                    const Spacer(),
                    CustomFloating(onPressed: (){
                      if(cubit.formKey.currentState!.validate()){
                        navigateTo(context,  VerificationScreen());

                      }
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
                  text: 'Sign in'.tr(), onPressed: (){
                  Navigator.pop(context);
                },))
          ],
        ),
      ),
    );
  }
}
