import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/bloc/cubit.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/bloc/states.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../widgets/custom_title_text.dart';
import '../../../widgets/my_button.dart';

class LayoutScreen extends StatefulWidget {
  final bool showDialogOnLoad;

  const LayoutScreen({super.key,this.showDialogOnLoad = true});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.showDialogOnLoad) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
       startDelayedAction(context);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>LayoutCubit(),
      child: BlocConsumer<LayoutCubit,LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreen[cubit.current],
            bottomNavigationBar: SizedBox(
              height: 76.h,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),

                ),
                child: BottomNavigationBar(
                  currentIndex: cubit.current,
                  selectedItemColor: myColor,
                  backgroundColor: Colors.black,
                  type: BottomNavigationBarType.fixed,

                  elevation: 0.0,

                  onTap: (index) {
                    cubit.changeBottom(index, context);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: cubit.current == 0 ? Column(
                        children: [
                          Image.asset(
                            AppAssets.home,
                            color: myColor,
                            width: 25.w,
                            height: 25.h,
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(top: 5.r),
                            width: 5.w,
                            height: 5.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: myColor,

                            ),
                          )
                        ],
                      ) : Image.asset(
                        AppAssets.home,
                        color: Colors.white,
                        width: 25.w,
                        height: 25.h,
                      ),
                      label: '',
                    ),

                    BottomNavigationBarItem(
                      icon: cubit.current == 1
                          ? Column(
                            children: [
                              Image.asset(
                                AppAssets.booking,
                                color: myColor,
                                width: 33.w,
                                height: 33.h,
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(top: 5.r),
                                width: 5.w,
                                height: 5.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: myColor,

                                ),
                              )

                            ],
                          )
                          : Image.asset(
                        AppAssets.booking,
                        color: Colors.white,
                        width: 25.w,
                        height: 25.h,
                      ),
                      label: '',
                    ),

                    BottomNavigationBarItem(
                      icon: cubit.current == 2
                          ? Column(
                            children: [
                              Image.asset(
                                                      AppAssets.insurance,
                                                      color: myColor,
                                width: 33.w,
                                height: 33.h,
                                                    ),
                              Container(
                                margin: EdgeInsetsDirectional.only(top: 5.r),
                                width: 5.w,
                                height: 5.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: myColor,

                                ),
                              )

                            ],
                          )
                          : Image.asset(
                        AppAssets.insurance,
                         color: Colors.white,
                        width: 25.w,
                        height: 25.h,
                      ),
                      label: '',
                    ),

                    BottomNavigationBarItem(
                      icon: cubit.current == 3
                          ? Column(
                            children: [
                              Image.asset(
                                AppAssets.profile,
                                color: myColor,
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(top: 5.r),
                                width: 5.w,
                                height: 5.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: myColor,

                                ),
                              )

                            ],
                          )
                          :                               Image.asset(
                        AppAssets.profile,
                        color: Colors.white,
                      ),

                      label: '',
                    ),

                    BottomNavigationBarItem(
                      icon: cubit.current == 4
                          ? Column(
                            children: [
                              Image.asset(
                                AppAssets.more,
                                color: myColor,
                                width: 33.w,
                                height: 33.h,
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(top: 5.r),
                                width: 5.w,
                                height: 5.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: myColor,

                                ),
                              )

                            ],
                          )
                          :     Image.asset(
                        AppAssets.more,
                        width: 35.w,
                        height: 35.h,
                        color: Colors.white,
                      ),
                      label: '',
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

  void startDelayedAction(BuildContext context,) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 400.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(AppAssets.imageDialog),
                    CustomTitleText(
                      text: 'Notification'.tr(),
                      color: Colors.black,
                      fontSize: 20.sp,
                      margin:
                      EdgeInsetsDirectional.only(top: 20.r, bottom: 30.r),
                    ),
                    MyText(
                      text:
                      'Allow notifications to be sent to receive all new updates'
                          .tr(),
                      color: Colors.black,
                      fontSize: 10.sp,
                      textAlign: TextAlign.center,
                    ),
                    MyButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      margin:
                      EdgeInsetsDirectional.only(top: 50.r, bottom: 20.r),
                      text: 'Allow'.tr(),
                      textColor: Colors.white,
                      background: myColor,
                      width: 240.w,
                      height: 50.h,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    MyButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: 'Skip'.tr(),
                      textColor: myColor,
                      background: Colors.white,
                      width: 240.w,
                      height: 50.h,
                      border: Border.all(color: myColor),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }

}
