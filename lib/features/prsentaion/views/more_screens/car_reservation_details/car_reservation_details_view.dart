import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/car_reservation_details/components/booking_details_form.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/car_reservation_details/cubit/car_reservation_cubit.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/evaluation/evaluation_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/report_problem/report_problem_view.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';

class CarReservationDetailsScreen extends StatelessWidget {
  CarReservationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarReservationCubit(),
      child: BlocConsumer<CarReservationCubit, CarReservationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(text: 'Reservations'.tr()),
                  Padding(
                    padding: EdgeInsets.all(12.0.r),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: MyText(
                            text: 'Booking details'.tr(),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: MyText(
                            text: 'Date and time the reservation was created'
                                .tr(),
                            color: myGrey,
                            margin: EdgeInsetsDirectional.only(
                                top: 10.r, start: 10),
                          ),
                        ),
                        BookingDetailsForm(),
                        MyButton(
                          onPressed: () {
                            navigateTo(context, EvaluationScreen());
                          },
                          text: 'Evaluation'.tr(),
                          margin:
                              EdgeInsetsDirectional.symmetric(vertical: 20.r),
                        ),
                        MyButton(onPressed: () {}, text: 'Request a car'.tr()),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.symmetric(vertical: 20.r),
                          child: Row(
                            children: [
                              MyText(
                                text: '10 am April 2020',
                                color: myGrey,
                              ),
                              Spacer(),
                              MyText(
                                text: 'يتم التجهيز خلال 10 دقائق',
                                color: myGrey,
                              ),
                            ],
                          ),
                        ),
                        MyButton(
                          onPressed: () {
                            navigateTo(context, ReportProblemScreen());
                          },
                          text: 'Report a problem'.tr(),
                          background: Colors.white,
                          textColor: myColor,
                          border: Border.all(color: myColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
