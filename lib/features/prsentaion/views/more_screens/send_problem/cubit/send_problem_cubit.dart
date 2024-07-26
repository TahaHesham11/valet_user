import 'package:flutter_bloc/flutter_bloc.dart';
part 'send_problem_state.dart';

class SendProblemCubit extends Cubit<SendProblemState> {
  SendProblemCubit() : super(SendProblemInitial());


  static SendProblemCubit get(context)=>BlocProvider.of(context);
}
