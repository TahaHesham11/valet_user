import 'package:flutter/material.dart';
import 'package:valet_user/core/constants/app_assets.dart';

class CustomFloating extends StatelessWidget {
  final void Function()? onPressed;
  const CustomFloating({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,child: Image.asset(AppAssets.next),);
  }
}
