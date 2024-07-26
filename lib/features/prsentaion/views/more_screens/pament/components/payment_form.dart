import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/pament/cubit/payment_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../../core/constants/validate.dart';

class PaymentForm extends StatelessWidget {

  const PaymentForm({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentCubit cubit = PaymentCubit.get(context);

    return   Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomDefaultField(
            controller: cubit.cardNumberController,
            type: TextInputType.name,
            suffixImage:IconButton(onPressed: (){},
              icon: Image.asset(AppAssets.trash),),

            prefix: Image.asset(AppAssets.debitCard),
            validate:    validate(text: 'card Number'),
            label: '12345',
            showBorder: true,
            borderColor: Colors.black,
          ),

          Align(
              alignment: AlignmentDirectional.topStart,
              child: MyText(text: 'Enter a new card number'.tr(),margin: EdgeInsetsDirectional.only(top: 15.r,start: 10.r),)),

          CustomDefaultField(
            controller: cubit.newCardNumberController,
            type: TextInputType.number,
            label: 'Card number'.tr(),
            showBorder: true,
            borderColor: Colors.black,
            validate:    validate(text: 'new card Number'),

          ),

          Padding(
            padding:  EdgeInsetsDirectional.only(top: 20.r,bottom: 20.r),
            child: Row(
              children: [
                Expanded(
                  child: CustomDefaultField(
                    showBorder: true,
                    borderColor: Colors.black,
                    controller: cubit.monthController,
                    type: TextInputType.datetime,
                    label: 'The month'.tr(),
                    validate:    validate(text: 'month'),

                  ),
                ),
                Expanded(
                  child: CustomDefaultField(

                    showBorder: true,
                    borderColor: Colors.black,
                    controller: cubit.yearsController,
                    type: TextInputType.datetime,
                    label: 'The year'.tr(),
                    validate:    validate(text: 'year'),

                  ),
                ),

              ],
            ),
          ),


          CustomDefaultField(
              controller: cubit.verificationController,
              type: TextInputType.number,
              showBorder: true,
              borderColor: Colors.black,
              validate:    validate(text: 'verification code '),

              label: 'Card verification code cvc'.tr()
          ),
        ],
      ),
    );
  }
}
