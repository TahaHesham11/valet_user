import 'package:flutter_bloc/flutter_bloc.dart';
part 'verified_state.dart';

class VerifiedCubit extends Cubit<VerifiedState> {
  VerifiedCubit() : super(VerifiedInitial());

  static VerifiedCubit get(context) => BlocProvider.of(context);
}
