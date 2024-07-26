import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/booking_details/booking_details_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

import 'cubit/payment_successful_cubit.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentSuccessfulCubit(),
      child: BlocConsumer<PaymentSuccessfulCubit, PaymentSuccessfulState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                CustomAppBar(
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 140.0.r),
                  child: Image.asset(AppAssets.paymentSuccess),
                ),
                MyText(
                  text: 'Your reservation has been completed successfully'.tr(),
                  margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                ),
                MyText(
                  text: 'تم إنشاء حجزك بنجاح رقم الحجز xxxxx# '
                      'وتم إرسال رسالة نصية عين رقم الجوال بها تفاصيل الحجز',
                  fontSize: 12.sp,
                  color: Colors.grey,
                  textAlign: TextAlign.center,
                ),
                MyButton(
                  onPressed: () {
                    navigateTo(context, BookingDetailsScreen());
                  },
                  text: 'Booking details'.tr(),
                  background: Colors.white,
                  textColor: myColor,
                  margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                  border: Border.all(color: myColor),
                ),
                MyButton(onPressed: () {
                  navigateTo(context, LayoutScreen(showDialogOnLoad: false,));
                }, text: 'Return to the home page'.tr())
              ],
            ),
          );
        },
      ),
    );
  }
}
