import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DefaultAppBar(text: 'Notification'.tr()),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.error),
                  MyText(
                    text: 'There are no notifications at the moment'.tr(),
                    margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                  ),
                  MyText(
                    text: 'We will notify you if new notifications become available'.tr(),
                    color: myGrey,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
