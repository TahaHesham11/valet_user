import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'newcar_state.dart';

class NewCarCubit extends Cubit<NewCarState> {
  NewCarCubit() : super(NewCarInitial());

  static NewCarCubit get(context)=>BlocProvider.of(context);

  final carBrand = TextEditingController();
  final carModel = TextEditingController();
  final carColor = TextEditingController();
  final carLetters = TextEditingController();
}
