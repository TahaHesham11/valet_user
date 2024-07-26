import 'package:flutter_bloc/flutter_bloc.dart';
part 'condition_state.dart';

class ConditionCubit extends Cubit<ConditionState> {
  ConditionCubit() : super(ConditionInitial());

  static ConditionCubit get(context)=>BlocProvider.of(context);
}
