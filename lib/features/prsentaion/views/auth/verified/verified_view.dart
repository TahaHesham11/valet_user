import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/auth/verified/cubit/verified_cubit.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../core/constants/navigate.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key});

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  @override
  void initState() {
    startDelayedAction(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifiedCubit(),
      child: Scaffold(
        backgroundColor: myBackground,
        body: Stack(
          children: [
            Image.asset(AppAssets.registerUp),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTitleText(text: 'Mobile number is verified'.tr())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startDelayedAction(context) {
    Future.delayed(const Duration(seconds: 5), () {
      navigateAndFinish(context, LayoutScreen());
    });
  }
}
