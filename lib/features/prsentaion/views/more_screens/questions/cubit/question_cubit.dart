import 'package:flutter_bloc/flutter_bloc.dart';
part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionInitial());

  static QuestionCubit get(context)=>BlocProvider.of(context);
}
