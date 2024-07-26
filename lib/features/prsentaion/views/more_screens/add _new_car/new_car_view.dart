import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/add%20_new_car/cubit/newcar_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

class NewCarScreen extends StatelessWidget {
  NewCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCarCubit(),
      child: BlocConsumer<NewCarCubit, NewCarState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = NewCarCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(
                    text: 'Create a reservation'.tr(),
                  ),
                  MyText(
                    text: 'Add a new car'.tr(),
                    color: myColor,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Brand'.tr(),
                          color: myGrey,
                          margin:
                              EdgeInsetsDirectional.only(top: 10.r, start: 10),
                        ),
                        CustomDefaultField(
                            controller: cubit.carBrand,
                            width: 338.w,
                            label: 'Car brand'.tr(),
                            type: TextInputType.text),
                        MyText(
                          text: 'Model'.tr(),
                          color: myGrey,
                          margin:
                              EdgeInsetsDirectional.only(top: 10.r, start: 10),
                        ),
                        CustomDefaultField(
                            controller: cubit.carModel,
                            width: 338.w,
                            label: 'Car model'.tr(),
                            type: TextInputType.text),
                        MyText(
                          text: 'The color'.tr(),
                          color: myGrey,
                          margin:
                              EdgeInsetsDirectional.only(top: 10.r, start: 10),
                        ),
                        CustomDefaultField(
                            controller: cubit.carColor,
                            width: 338.w,
                            label: 'Car color'.tr(),
                            type: TextInputType.text),
                        MyText(
                          text: 'Painting letters'.tr(),
                          color: myGrey,
                          margin:
                              EdgeInsetsDirectional.only(top: 10.r, start: 10),
                        ),
                        CustomDefaultField(
                            controller: cubit.carLetters,
                            width: 338.w,
                            label: 'Painting letters'.tr(),
                            type: TextInputType.text),
                        Center(
                            child: MyButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: 'Follow-up'.tr(),
                          margin: EdgeInsetsDirectional.only(top: 25.r),
                        )),
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
