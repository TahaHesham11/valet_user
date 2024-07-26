import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());

  static VerificationCubit get(context)=>BlocProvider.of(context);

  final TextEditingController verificationNumber = TextEditingController();
  final formKey = GlobalKey<FormState>();

}
