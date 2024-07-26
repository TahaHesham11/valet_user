import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/pament/components/payment_form.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/payment_successful/payment_successful_view.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

import 'cubit/payment_cubit.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = PaymentCubit.get(context);

          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(text: 'Paying off'.tr()),
                  Padding(
                    padding: EdgeInsets.all(12.0.r),
                    child: Column(
                      children: [
                        Align(
                            alignment: AlignmentDirectional.topStart,
                            child: MyText(
                                text: 'Enter the card number'.tr(),
                                margin:
                                    EdgeInsetsDirectional.only(start: 10.r))),
                        PaymentForm()
                      ],
                    ),
                  ),
                  MyButton(
                    onPressed: () {
                      if (cubit.formKey.currentState!.validate()) {
                        navigateTo(context, const PaymentSuccessfulScreen());
                      }
                    },
                    text: 'Paying off'.tr(),
                    margin: EdgeInsetsDirectional.only(top: 20.r),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
