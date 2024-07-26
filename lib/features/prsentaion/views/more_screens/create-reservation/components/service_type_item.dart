import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';

class ServiceTypeItem extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
 final BoxBorder? border;

  const ServiceTypeItem({super.key, required this.text,required this.onPressed,this.border});

  @override
  Widget build(BuildContext context) {
    return MyButton(
      border: border,
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 4,
          blurRadius: 5,
          offset: Offset(0, 3),
        )
      ],
      background: Colors.white,
      onPressed: onPressed,
      text: text,
      textColor: Colors.grey,
      margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
    );
  }
}
