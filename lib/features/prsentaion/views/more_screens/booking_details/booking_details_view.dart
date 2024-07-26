import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/booking_details/components/payment_option_item.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/pament/payment_view.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

import 'components/booking_item.dart';
import 'cubit/booking_details_cubit.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => BookingDetailsCubit(),
  child: BlocConsumer<BookingDetailsCubit, BookingDetailsState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {

    final cubit = BookingDetailsCubit.get(context);

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            children: [
            DefaultAppBar(text: 'Create a reservation'.tr(),isSpace: false,isSpaceStart: true,),
        Padding(
          padding:  EdgeInsets.all(12.0.r),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookingItem(),

                MyText(text: 'Choose payment method'.tr(),
          margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),),


                Column(
                  children: [
                    PaymentOptionItem(
                      title: 'PayPal',
                      isSelected: cubit.paypal,
                      onPressed: () {

                       cubit.selectPayPal();
                      },
                      image: AppAssets.payPal,
                    ),
                    PaymentOptionItem(
                      title: 'GooglePay',
                      isSelected: cubit.googlePay,
                      onPressed: () {

                        cubit.selectGooglePay();
                      },
                      image: AppAssets.googlePay,
                    ),
                    PaymentOptionItem(
                      title: 'ApplePay',
                      isSelected: cubit.applePay,
                      onPressed: () {
                        cubit.selectApplePay();
                      },
                      image: AppAssets.applePay,
                    ),
                  ],
                ),

                Center(child: MyButton(onPressed: (){
                  navigateTo(context, PaymentScreen());
                }, text: 'Follow-up'.tr()))

                ],
              ),
        )],
    )
    ,
    )
    ,
    );
  },
),
);
  }
}
