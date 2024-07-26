import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'report_problem_state.dart';

class ReportProblemCubit extends Cubit<ReportProblemState> {
  ReportProblemCubit() : super(ReportProblemInitial());


  static ReportProblemCubit get(context)=>BlocProvider.of(context);

  final messageContactController = TextEditingController();

}
