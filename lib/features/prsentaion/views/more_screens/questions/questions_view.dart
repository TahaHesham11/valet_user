import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/questions/components/question_item.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DefaultAppBar(text: 'Common questions'.tr(),isSpace: false,isSpaceStart: true,),

            QuestionItem(isShowBorder: true,),
            Container(
              margin: EdgeInsetsDirectional.symmetric(vertical: 40.r),
              padding: EdgeInsetsDirectional.all(10.r),
              width: 320.w,
              height: 85.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                border: Border.all(color: myGrey,width: 1)
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: MyText(
                  textAlign: TextAlign.center,
                  fontSize: 14.sp,
                  color: myGrey,
                  text: 'This text is an example of text that can be changedThis text is an example of text that can be changedThis text is an example of text that can be changedThis text is an example of text that can be changed',
                ),
              ),
            ),
            QuestionItem(),
            QuestionItem(),
            QuestionItem(),
            QuestionItem(),
            QuestionItem(),


          ],
        ),
      ),

    );
  }
}
