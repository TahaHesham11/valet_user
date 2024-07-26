import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'call_us_state.dart';

class CallUsCubit extends Cubit<CallUsState> {
  CallUsCubit() : super(CallUsInitial());

  static CallUsCubit get(context)=>BlocProvider.of(context);

  final addressMessage = TextEditingController();

}
