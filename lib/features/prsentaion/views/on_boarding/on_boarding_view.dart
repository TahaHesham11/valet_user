import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/auth/login/login_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_floating.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_text_button.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

class OnBoardingModel{

  final String image;
  final String title;

  OnBoardingModel({
    required this.image,
    required this.title,
  });

}

class OnBoardingView extends StatefulWidget {
   OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<OnBoardingModel> boarding =[
    OnBoardingModel(
        image: AppAssets.onBoarding1,
        title: 'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة هذا النص هو مثال لنص يمكن تغييره في نقس المساحة'
    ),
    OnBoardingModel(
        image: AppAssets.onBoarding2,
        title: 'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة هذا النص هو مثال لنص يمكن تغييره في نقس المساحةe'
    ),
    OnBoardingModel(
        image: AppAssets.onBoarding3,
        title: 'هذا النص هو مثال لنص يمكن تغييره في نفس المساحة هذا النص هو مثال لنص يمكن تغييره في نقس المساحة'
    )
  ];

  final boardController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding:  EdgeInsets.all(12.0.r),
        child: Column(
          children: [

            Expanded(
              child: PageView.builder(
                controller: boardController,
                onPageChanged: (index) {
                setState(() {
                  if (index == boarding.length - 1) {
                    isLast = true;
                  } else {
                    isLast = false;
                  }
                });

                },
                itemBuilder: (context, index) {
                  return onBoardingItem(boarding[index]);
                },
                itemCount: boarding.length,
              ),
            ),
            Row(
              children: [
                if (!isLast)
                Visibility(
                  visible: !isLast,
                  child: CustomTextButton(
                    text: 'Skip'.tr(),
                    fontSize: 14.sp,
                    onPressed: () {
                      navigateAndFinish(context,  LoginScreen());
                    },
                    color: Colors.black,
                  ),
                ),

                Spacer(),

                if (!isLast)
                  Visibility(
                    visible: !isLast,
                    child: CustomFloating(onPressed: (){
                      boardController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.bounceInOut,
                      );},),
                  ),


                if (isLast)
                  CustomTextButton(
                    text: 'Login'.tr(),
                    color: myColor,
                    fontSize: 14.sp,
                    onPressed: () {
                      navigateTo(context,  LoginScreen());
                    },
                  ),
              ],
            ),




          ],
        ),
      ),
    );
  }

  Widget onBoardingItem(OnBoardingModel onBoardingModel){
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding:  EdgeInsetsDirectional.only(top:80.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CustomTitleText(
                  text: 'Excellent valet parking service'.tr(),color: Colors.black,),
              MyText(
                  text:   onBoardingModel.title,
                  textAlign: TextAlign.center,
                  fontSize: 12.0.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),

              Padding(
                padding:  EdgeInsetsDirectional.symmetric(vertical: 15.0.r),
                child: SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect:   SlideEffect(
                      dotColor: Colors.black,
                      activeDotColor: myColor,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 5.0,


                  ),
                ),
              ),

              Image.asset(onBoardingModel.image),





            ],
          ),
        ),
      ),
    );
  }
}
