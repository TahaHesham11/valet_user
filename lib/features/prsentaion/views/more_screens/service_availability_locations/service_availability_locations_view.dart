import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/service_availability_locations/components/service_availability_locations_item.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_search.dart';

import 'cubit/service_availability_cubit.dart';

class ServiceAvailabilityLocationsScreen extends StatelessWidget {


  ServiceAvailabilityLocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServiceAvailabilityCubit(),
      child: BlocConsumer<ServiceAvailabilityCubit, ServiceAvailabilityState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = ServiceAvailabilityCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),

              child: Column(
                children: [

                  DefaultAppBar(text: 'Service availability locations'.tr(),isSpace: false,isSpaceStart: true,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomList(
                          text: 'City'.tr(),
                          margin: EdgeInsetsDirectional.symmetric(
                            horizontal: 10.r,),
                          listItem: ['جدة', 'الرياض'],
                          fontSize: 14.sp,
                          iconColor: myColor,
                          fontColor: myColor,
                          borderAll: Border.all(color: myColor),

                        ),
                      ),
                      Expanded(
                          child: CustomList(
                            text: 'The condition'.tr(),
                            listItem: ['غير متاح', 'متاح'],
                            iconColor: myColor,
                            margin: EdgeInsetsDirectional.only(end: 10.r),

                            fontColor: myColor,
                            fontSize: 14.sp,
                            borderAll: Border.all(color: myColor),
                          ))
                    ],
                  ),

                  CustomSearch(controller: cubit.searchController,),


                  SizedBox(
                    height: 400.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const ServiceAvailabilityLocations();
                      },
                      itemCount: 10,
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
