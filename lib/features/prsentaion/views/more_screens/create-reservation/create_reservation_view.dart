import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/add%20_new_car/new_car_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/booking_details/booking_details_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/create-reservation/components/car_wash_service.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/create-reservation/components/my_car_item.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/create-reservation/components/service_type_item.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

import 'cubit/create_reservation_cubit.dart';

class CreateReservationScreen extends StatefulWidget {
  const CreateReservationScreen({
    super.key,
  });

  @override
  State<CreateReservationScreen> createState() =>
      _CreateReservationScreenState();
}

class _CreateReservationScreenState extends State<CreateReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateReservationCubit(),
      child: BlocConsumer<CreateReservationCubit, CreateReservationState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          final cubit = CreateReservationCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(text: 'Create a reservation'.tr(),isSpace: false,isSpaceStart: true,),



                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppAssets.skyscraper),
                            MyText(
                              text: 'Riyadh, Eastern Province'.tr(),
                              color: myColor,
                              margin: EdgeInsetsDirectional.only(start: 5.r),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            MyText(text: 'My cars'.tr()),
                            const Spacer(),
                            CustomTextButton(
                                text: '+ Add a new car'.tr(),
                                color: myColor,
                                onPressed: () {
                                  navigateTo(context, NewCarScreen());
                                }),
                          ],
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return const MyCarItem();
                          },
                          itemCount: 2,
                        ),
                        MyText(text: 'Service type'.tr()),
                        Row(
                          children: [
                            Expanded(
                                child: ServiceTypeItem(
                              text: 'Vale 200 SAR'.tr(),
                              onPressed: () {
                                cubit.selectVale();
                              },
                              border: cubit.isClick
                                  ? Border.all(color: Colors.white)
                                  : Border.all(color: myColor),
                            )),
                            Expanded(
                              child: ServiceTypeItem(
                                text: 'Self 200 SAR'.tr(),
                                onPressed: () {
                                  cubit.selectSelf();
                                },
                                border: cubit.isClick
                                    ? Border.all(color: myColor)
                                    : Border.all(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        CarWashService(),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(vertical: 20.r),
                          width: 350.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(text: 'Total cost :'.tr()),
                              MyText(
                                text: '12 ريال سعودي',
                                color: myColor,
                              )
                            ],
                          ),
                        ),
                        MyText(
                          text:
                              'Reservation is available 24 hours after completing the reservation and payment. After that, it is not possible to benefit from the service or refund the reservation value'
                                  .tr(),
                          color: red,
                          textAlign: TextAlign.center,
                          fontSize: 12.sp,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0.r),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: cubit.terms,
                                  activeColor: myColor,
                                  checkColor: Colors.white,
                                  onChanged: (value) {
                                    cubit.isChangeTerms();
                                  }),
                              MyText(
                                text:
                                    'I agree to the terms and conditions'.tr(),
                              )
                            ],
                          ),
                        ),
                        Center(
                            child: MyButton(
                                onPressed: () {
                                  navigateTo(context, BookingDetailsScreen());
                                },
                                text: 'Create a reservation'.tr()))
                      ],
                    ),
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
