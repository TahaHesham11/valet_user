import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/booking/components/car_data_item.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/booking/cubit/booking_cubit.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/components/tab_bar_item.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_search.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class BookingScreen extends StatelessWidget {

  BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingCubit(),
      child: BlocConsumer<BookingCubit, BookingState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit  = BookingCubit.get(context);
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: Column(

                children: [
                  DefaultAppBar(text: 'Reservations'.tr(),isShow: false,isSpace: true,),
                  TabBarItem(text: 'Current'.tr(), title: 'Completed'.tr(),),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.r),
                    child: CustomSearch(controller: cubit.searchController,),
                  ),


                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: GestureDetector(
                      onTap: (){
                        cubit.showList();
                      },
                      child: Container(
                        margin: EdgeInsetsDirectional.only(start: 10.r,top: 10.r),
                        width: 100.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: myColor,

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           Image.asset(AppAssets.filter),
                            MyText(text: 'Latest'.tr(),fontSize: 12.sp,color: Colors.white,),
                            Icon(
                              Icons.keyboard_arrow_up,
                              size: 20.r,
                              color: Colors.white,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  if(cubit.isShow)
                    Align(
                      alignment: AlignmentDirectional.topStart,

                      child: Container(height: 38.h,width: 94.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            )
                          ]
                      ),
                        child: Center(
                          child: MyText(
                            text:'الاقدم',

                          ),
                        ),
                      ),
                    ),


                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 12.0.r),
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return const CarDataItem();
                            },
                            itemCount: 5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0.r),
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return const CarDataItem();
                            },
                            itemCount: 5,
                          ),
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
