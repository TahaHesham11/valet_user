import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class PaymentOptionItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;
  final String image;
   PaymentOptionItem({super.key, required this.title, required this.isSelected, required this.onPressed, required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 344,
      margin: EdgeInsets.symmetric(vertical: 20.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          Checkbox(
            activeColor: isSelected ? myColor : Colors.transparent,
            value: isSelected,
            checkColor: myColor,
            shape: const CircleBorder(),
            onChanged: (value) {
              onPressed();
            },
          ),
          MyText(
            text: title,
            fontWeight: FontWeight.bold,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.only(end: 10.0.r),
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
