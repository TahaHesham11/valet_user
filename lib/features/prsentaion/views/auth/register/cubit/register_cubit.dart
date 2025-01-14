import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegInitial());
  static RegisterCubit get(context) =>BlocProvider.of(context);


  final firstName = TextEditingController();
  final lastName = TextEditingController();

  final formKey = GlobalKey<FormState>();
}
