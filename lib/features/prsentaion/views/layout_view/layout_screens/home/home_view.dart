import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/home/components/service_availability_locations.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/home/cubit/home_cubit.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/notification/notification_view.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/service_availability_locations/service_availability_locations_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';
import 'components/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Image.asset(
                AppAssets.logo,
                width: 89.w,
                height: 45.h,
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(12.0.r),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.location),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 10.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: 'Current City'.tr(),
                                color: Colors.grey,
                                margin: EdgeInsetsDirectional.only(bottom: 5.r),
                              ),
                              MyText(
                                text: 'Riyadh, Eastern Province'.tr(),
                                color: Colors.black,
                                fontSize: 14.sp,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              navigateTo(context, NotificationScreen());
                            },
                            icon: Image.asset(AppAssets.notification))
                      ],
                    ),

                    CardItem(),

                    Container(
                      margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                      width: 350.w,
                      height: 125.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            )
                          ]),
                      child: Row(
                        children: [
                          Image.asset(AppAssets.question),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: 5.0.r),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: 'What is Vale service?'.tr(),
                                      margin: EdgeInsetsDirectional.only(
                                          bottom: 10.r),),
                                    MyText(
                                      text:
                                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل فس نفس المساحة هذا النص يمكن أن يستبدل .. ',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,

                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        MyText(text: 'Service availability locations'.tr()),
                        const Spacer(),
                        CustomTextButton(text: 'Show All'.tr(),
                          fontSize: 10.sp,
                          color: myColor,
                          onPressed: () {
                            navigateTo(
                                context, ServiceAvailabilityLocationsScreen());
                          },),
                      ],
                    ),


                    SizedBox(
                      height: 222.h,

                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const ServiceAvailabilityLocationsItem();
                        },
                        itemCount: 10,
                      ),
                    )

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
