import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/profile/components/my_profile_item.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/profile/cubit/profile_cubit.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import '../../../../../../core/constants/color.dart';
import '../../../../widgets/app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  DefaultAppBar(
                    text: 'My profile'.tr(),
                    isShow: false,
                    isSpace: true,
                  ),
                  Image.asset(
                    AppAssets.profileWoman,
                    width: 94.w,
                    height: 94.h,
                  ),
                  const MyText(text: 'Nour mohamed'),
                  MyProfileITem(text: 'First Name_en'.tr(), title: 'Nour'),
                  MyProfileITem(text: 'Last name_en'.tr(), title: 'Mohamed'),
                  MyProfileITem(
                    text: 'Account_en'.tr(),
                    title: 'active',
                    isEdit: false,
                  ),
                  MyProfileITem(
                    text: 'AccountId'.tr(),
                    title: '123',
                    isEdit: false,
                  ),
                  MyProfileITem(
                    text: 'Mobile number : '.tr(),
                    title: '01025202',
                  ),
                  MyText(
                    text: '*It must not be linked to any other account*'.tr(),
                    color: red,
                  ),
                  MyProfileITem(
                    text: 'E-mail : '.tr(),
                    title: 'Nour@gmail',
                  ),
                  MyProfileITem(
                    text: 'gender_en'.tr().tr(),
                    title: 'famele',
                    isEdit: false,
                  ),
                  MyProfileITem(
                    text: 'Region : '.tr(),
                    title: 'Region name',
                  ),
                  MyProfileITem(
                    text: 'city_en'.tr(),
                    title: 'Riyadh',
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
