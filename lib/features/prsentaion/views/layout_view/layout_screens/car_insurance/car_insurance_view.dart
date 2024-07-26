import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/car_insurance/components/car_insurance_item.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/car_insurance/cubit/car_insurance_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';

import '../components/tab_bar_item.dart';

class carInsuranceScreen extends StatelessWidget {
  const carInsuranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarInsuranceCubit(),
      child: BlocConsumer<CarInsuranceCubit, CarInsuramceState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          //final cubit = CarInsuranceCubit.get(context);
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: Column(
                children: [
                  DefaultAppBar(
                    text: 'My cars'.tr(),
                    isShow: false,
                    isSpace: true,
                  ),
                  TabBarItem(
                    text: 'Available'.tr(),
                    title: 'Deleted'.tr(),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.symmetric(horizontal: 12.0.r),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return const CarInsuranceItem();
                            },
                            itemCount: 5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0.r),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return const CarInsuranceItem();
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
