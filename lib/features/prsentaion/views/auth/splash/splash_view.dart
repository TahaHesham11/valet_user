import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/navigate.dart';

import '../../on_boarding/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
startDelayedAction();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                AppAssets.splashUp,

                fit: BoxFit.cover,

              ),
            ),
            Center(
              child: Image.asset(AppAssets.logo),
            ),
            SizedBox(height: 100.h,),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Image.asset(
                AppAssets.splashDown,

                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startDelayedAction() {
    Future.delayed(const Duration(seconds: 5), () {
      navigateAndFinish(context,  OnBoardingView());
    });
  }
}
