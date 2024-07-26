import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/app_assets.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_button.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';
import 'package:easy_localization/easy_localization.dart';

 class CarInsuranceItem extends StatelessWidget {
   const CarInsuranceItem({super.key});

   @override
   Widget build(BuildContext context) {
     return         GestureDetector(
       onTap: (){
       },
       child: Container(
         margin: EdgeInsetsDirectional.only(top: 10.r),
         padding: EdgeInsetsDirectional.all(10.r),
         width: 338.w,
         height: 100.h,
         decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(16.r),
             boxShadow: const [
               BoxShadow(
                 color: Colors.black12,
                 spreadRadius: 4,
                 blurRadius: 5,
                 offset: Offset(0, 3),
               )
             ]
         ),

         child: Row(
           children: [
             StreamBuilder<Object>(
               stream: null,
               builder: (context, snapshot) {
                 return Expanded(
                   child: Padding(
                     padding:  EdgeInsetsDirectional.only(start:10.0.r),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         MyText(text: 'Mercedes  63',maxLine: 2,),
                         Expanded(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Container(

                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.black
                                 ),
                                 width: 15.w,
                                 height: 15.h,
                               ),
                               MyText(text: 'Black'.tr(),color: Colors.grey,),
                               MyText(text: 'A 61026',color: Colors.grey,),
                               MyText(text: 'Black'.tr(),color: Colors.grey,),
                             ],
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             MyButton(
                                 onPressed: (){},
                               isImage: false,
                               title: 'Update'.tr(),
                               image: AppAssets.edit,
                               background: myColor.withOpacity(0.2),
                               borderRadius: BorderRadius.circular(5.r),
                               border: Border.all(color: myColor),
                               width: 90.w,
                               height: 23.h,
                               titleColor: myColor,
                                 ),
                             MyButton(
                                 onPressed: (){},
                               isImage: false,
                               title: 'Delete'.tr(),
                               image: AppAssets.trash,
                               background: Colors.red.withOpacity(0.2),
                               borderRadius: BorderRadius.circular(5.r),
                               border: Border.all(color: red),
                               width: 90.w,
                               height: 23.h,
                               colorImage: red,
                               titleColor: red,
                                 )
                           ],
                         )
                       ],
                     ),
                   ),
                 );
               }
             ),
             Image.asset(AppAssets.car)
           ],
         ),
       ),
     );
   }
 }
