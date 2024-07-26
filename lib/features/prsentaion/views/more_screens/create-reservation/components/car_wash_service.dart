import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../../../core/constants/color.dart';
import '../cubit/create_reservation_cubit.dart';

class CarWashService extends StatelessWidget {
  const CarWashService({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = CreateReservationCubit.get(context);
    return Container(
      padding: EdgeInsetsDirectional.all(10.r),
      width: 350.w,
      height: 125.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ]),
      child: Row(
        children: [
          Expanded(
              child: Image.asset(AppAssets.carServices)),
          Flexible(
            flex: 3,
            child: Padding(
              padding:
              EdgeInsetsDirectional.only(start: 5.r),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  MyText(text: 'Car wash service'.tr()),
                   Expanded(
                    child: MyText(
                      text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة'
                          ' هذا النص هو مثال لنص يمكن ان يستبدل فس نفس المساحة هذا النص يمكن أن يستبدل .. ',
                      fontSize: 8,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: cubit.isCheckSubscribe,
                        activeColor: myColor,
                        checkColor: Colors.white,
                        onChanged: (value) {
                          cubit.isChangeSubscribe();
                        },
                      ),
                      Expanded(
                        child: MyText(
                          text: 'Subscribe to the service'
                              .tr(),
                          color: myColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: MyText(
              text: '12 ر.س',
              color: myColor,
            ),
          )
        ],
      ),
    );
  }
}
