import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:valet_user/features/prsentaion/views/auth/verification/cubit/verification_cubit.dart';

import '../../../../../../core/constants/color.dart';

class CodeField extends StatelessWidget {
  const CodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.r),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final cubit = VerificationCubit.get(context);
          return FormField<String>(
            builder: (FormFieldState<String> state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  PinCodeTextField(
                    textInputAction: TextInputAction.send,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the code';
                      }
                      if (value.length < 4) {
                        return 'Code must be 4 digits';
                      }
                      return null;
                    },
                    appContext: context,
                    length: 4,
                    controller: cubit.verificationNumber,
                    autoFocus: true,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    animationType: AnimationType.scale,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5.r),
                      fieldHeight: 50.h,
                      fieldWidth: 50.w,
                      borderWidth: 1.0.w,
                      activeFillColor: Colors.grey[200],
                      activeColor: Colors.grey[200],
                      inactiveColor: Colors.grey[200],
                      inactiveFillColor: Colors.white,
                      selectedColor: Colors.grey[200],
                      selectedFillColor: Colors.white,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    onCompleted: (submitCode) {
                      // تنفيذ الإجراء عند اكتمال الإدخال
                    },
                    onChanged: (value) {
                      state.didChange(value);
                    },
                  ),
                  if (state.hasError)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        state.errorText ?? '',
                        style: TextStyle(
                            color: red), // تغيير لون النص الخاص بالأخطاء
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
