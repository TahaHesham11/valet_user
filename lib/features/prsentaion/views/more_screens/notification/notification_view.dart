import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/notification/components/notification_item.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/notification/cubit/notification_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/notification/error/error_view.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';

import '../../../../../core/constants/app_assets.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationCubit(),
      child: BlocConsumer<NotificationCubit, NotificationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = NotificationCubit.get(context);
          return Scaffold(


            body: SingleChildScrollView(
              child: Column(

                children: [
                Container(
                height: 139.h,
                margin: EdgeInsetsDirectional.only(bottom: 20.r),
                decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r)),
                ),
                child: Row(

                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: EdgeInsetsDirectional.only(start: 80.r),
                        child: MyText(text: 'Notification'.tr(),color: Colors.white,)),

                    Spacer(),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.only(top: 50.r,end: 20.r),
                          child: IconButton(
                              onPressed: () {

                                cubit.showList();
                              },
                              icon: Icon(
                                Icons.more_vert_sharp,
                                color: Colors.white,
                              )
                          ),
                        ),


                        if(cubit.isShow)
                          GestureDetector(
                            onTap: (){
                              navigateTo(context, ErrorView());
                            },
                            child: Container(
                              height: 38.h,width: 80.w,

                              margin: EdgeInsetsDirectional.only(end: 15.r),
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
                              child: Padding(
                                padding:  EdgeInsets.all(5.0.r),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: MyText(

                                        text:'Delete all'.tr(),
                                      color: red,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Image.asset(AppAssets.trash,color: red,))
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    )


                  ],
                ),
              ),
                  // DefaultAppBar(text: 'Notification'.tr(),isShowMore: true,),

                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 30.0.r),
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context,
                            index) => const NotificationItem(),
                        itemCount: 1),
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
