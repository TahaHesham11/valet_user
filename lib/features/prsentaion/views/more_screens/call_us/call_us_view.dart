import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/views/more_screens/call_us/cubit/call_us_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:valet_user/features/prsentaion/widgets/custom_list.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class CallUsScreen extends StatelessWidget {
   CallUsScreen({
     super.key,
   });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => CallUsCubit(),
  child: BlocConsumer<CallUsCubit, CallUsState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    final cubit = CallUsCubit.get(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            DefaultAppBar(text: 'Call Us'.tr()),
        
            Container(
              padding: EdgeInsetsDirectional.all(10.r),
              margin: EdgeInsetsDirectional.only(bottom: 20.r),
              width: 319.w,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: myGrey,width: 1),
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(AppAssets.map),
                      MyText(text: 'Riyadh, Eastern Province',color: myGrey,margin: EdgeInsetsDirectional.only(start: 10.r),)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AppAssets.email),
                      MyText(text: 'Nour@gmail',color: myGrey,margin: EdgeInsetsDirectional.only(start: 10.r))
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AppAssets.telephone),
                      MyText(text: '0102525',color: myGrey,margin: EdgeInsetsDirectional.only(start: 10.r))
                    ],
                  ),
                ],
              ),
            ),
        
            CustomList(
              fontColor: Colors.white,
              iconColor: Colors.white,
              background: myColor,
              text: 'Type of complaint'.tr(),
            ),
        
            CustomDefaultField(
              showBorder: true,
                controller: cubit.addressMessage,
                type: TextInputType.text,
            label: 'Address Message'.tr(),
            ),
            CustomDefaultField(
              showBorder: true,
                maxLines: 3,
                height: 100.h,
                controller: cubit.addressMessage,
                type: TextInputType.text,
            label: 'Write your message here..'.tr(),
            ),
            MyButton(onPressed: (){},text: 'Send'.tr(),margin: EdgeInsetsDirectional.only(top: 20.r),)
          ],
        ),
      ),
    );
  },
),
);
  }
}
