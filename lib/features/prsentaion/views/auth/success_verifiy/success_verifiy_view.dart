import 'package:flutter/material.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/core/constants/navigate.dart';

class SuccessVerifyScreen extends StatefulWidget {
  const SuccessVerifyScreen({super.key});

  @override
  State<SuccessVerifyScreen> createState() => _SuccessVerifyScreenState();
}

class _SuccessVerifyScreenState extends State<SuccessVerifyScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackground,
      body: Stack(
        children: [
          Image.asset(AppAssets.loginUp),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/check-mark.png'),
                CustomTitleText(text: 'Verified'.tr(),color: Colors.white,)
              ],
            ),
          ),
        ],
      ),
    );
  }
  void startDelayedAction(context) {
    Future.delayed(const Duration(seconds: 5), () {
      navigateAndFinish(context, SuccessVerifyScreen());
    });
  }
}
