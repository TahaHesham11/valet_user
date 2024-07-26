import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/evaluation/components/star_rating_item.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/evaluation/cubit/evaluation_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

import 'components/service_evaluation_item.dart';

class EvaluationScreen extends StatelessWidget {

  EvaluationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EvaluationCubit(),
      child: BlocConsumer<EvaluationCubit, EvaluationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = EvaluationCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(text: 'Evaluation'.tr()),

                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: 'Service evaluation'.tr()),

                        StartRatingItem(),
                        ServiceEvaluationItem(
                          controller: cubit.serviceEvaluationController,),
                        MyText(text: 'Employee evaluation'.tr(),
                          margin: EdgeInsetsDirectional.only(top: 20.r),),
                        StartRatingItem(),

                        ServiceEvaluationItem(
                          controller: cubit.employeeEvaluationController,),

                        StartRatingItem(isShow: false,),


                        Align(
                            alignment: AlignmentDirectional.center,
                            child: MyButton(
                              onPressed: () {}, text: 'Send'.tr(),))
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
