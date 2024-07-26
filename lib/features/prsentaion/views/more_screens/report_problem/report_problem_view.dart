import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/send_problem/send_problem_view.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_list.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/core/constants/navigate.dart';

import 'cubit/report_problem_cubit.dart';

class ReportProblemScreen extends StatelessWidget {
  ReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportProblemCubit(),
      child: BlocConsumer<ReportProblemCubit, ReportProblemState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          final cubit = ReportProblemCubit.get(context);

          return Scaffold(

            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(text: 'Report a problem'.tr()),

                  CustomList(
                    text: 'Type of problem'.tr(),
                    background: myColor, fontColor: Colors.white,
                    iconColor: Colors.white,


                  ),
                  CustomDefaultField(
                    controller: cubit.messageContactController,
                    type: TextInputType.text,
                    backGround: Colors.white,
                    height: 100.h,
                    maxLines: 3,
                    borderColor: Colors.black,
                    showBorder: true,
                    label: 'Write your message here..'.tr(),
                  ),

                  MyButton(onPressed: () {
                    navigateTo(context, SendProblemScreen());
                  },
                    text: 'Send'.tr(),
                    margin: EdgeInsetsDirectional.only(top: 20.r),)

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
