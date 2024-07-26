import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/choose_language/cubit/choose_language_cubit.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_title_text.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/core/constants/navigate.dart';
import 'package:easy_localization/easy_localization.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseLanguageCubit(),
      child: BlocConsumer<ChooseLanguageCubit, ChooseLanguageState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            //E9C678
            backgroundColor: myBackground,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Image.asset('assets/images/login_v1.png'),
                  const CustomAppBar(),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 140.0.r),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(AppAssets.chooseLanguage),

                          CustomTitleText(
                            text: 'Choose the application language'.tr(),
                            fontSize: 25.sp,

                            textAlign: TextAlign.center,
                          ),
                          MyButton(
                            margin: EdgeInsetsDirectional.symmetric(
                                vertical: 20.r),
                            onPressed: () {
                              navigateAndFinish(context, LayoutScreen());
                            },
                            text: 'Arabic'.tr(),
                            textColor: Colors.grey,

                            background: Colors.white,
                            border: Border.all(
                                color: Color(0xff926807), width: 4),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          MyButton(
                            onPressed: () {},
                            text: 'English',
                            textColor: Colors.grey,
                            background: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
