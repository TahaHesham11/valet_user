import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class AboutApplicationView extends StatelessWidget {
  const AboutApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultAppBar(text: 'About the application'.tr(),isSpace: false,isSpaceStart: true,),
            Image.asset(AppAssets.carsAboutApplication),
        
            Container(
              width: 327.w,
              height: 280.h,
              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
              padding: EdgeInsetsDirectional.all(10.r),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    )
                  ]
        
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: MyText(
                  overflow: TextOverflow.ellipsis,
                  color: myGrey,
                  textAlign: TextAlign.center,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  text: 'ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن النص لن ',
                
                
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
