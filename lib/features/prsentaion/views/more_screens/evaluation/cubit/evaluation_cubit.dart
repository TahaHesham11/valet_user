import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'evaluation_state.dart';

class EvaluationCubit extends Cubit<EvaluationState> {
  EvaluationCubit() : super(EvaluationInitial());

  static EvaluationCubit get(context)=>BlocProvider.of(context);

  final serviceEvaluationController = TextEditingController();
  final employeeEvaluationController = TextEditingController();
}
