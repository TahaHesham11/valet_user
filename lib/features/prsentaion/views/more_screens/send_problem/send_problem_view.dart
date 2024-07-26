import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

class SendProblemScreen extends StatelessWidget {
  const SendProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            color: Colors.black,
          ),
          Padding(
            padding:  EdgeInsetsDirectional.only(top: 140.0.r),
            child: Image.asset(AppAssets.paymentSuccess),
          ),
          MyText(
            text: 'The complaint has been sent successfully'.tr(),
            margin: EdgeInsetsDirectional.only(top: 20.r,bottom: 50.r),
          ),
          MyButton(onPressed: () {
            navigateTo(context, LayoutScreen());
          }, text: 'Return to the home page'.tr())
        ],
      ),
    );
  }
}
