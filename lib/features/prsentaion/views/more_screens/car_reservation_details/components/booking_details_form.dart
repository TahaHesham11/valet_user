import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/car_reservation_details/components/Booking_details_item.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class BookingDetailsForm extends StatelessWidget {
  const BookingDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingDetailsItem(
          text: '12 April 22',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Reservation ID'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: '123',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Reservation status'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: 'جاري',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Reservation type'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: 'online',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Location details'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: 'Name of the place',
          isShow: true,
          image: Image.asset(AppAssets.location),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            margin: EdgeInsetsDirectional.only(top: 20.r),
            text: 'Car details'.tr(),
            color: myGrey,
          ),
        ),
        BookingDetailsItem(
          text: 'kia',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Services details'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: 'Vale 21 Saudi riyals',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Additional services'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: 'Car wash service',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Total reservation cost'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: '22 Saudi riyals',
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: MyText(
            text: 'Payment method, date and time of payment'.tr(),
            color: myGrey,
            margin: EdgeInsetsDirectional.only(top: 20.r),
          ),
        ),
        BookingDetailsItem(
          text: '10 am 2020',
          isShow: true,
          image: Image.asset(AppAssets.payPal),
        ),
      ],
    );
  }
}
