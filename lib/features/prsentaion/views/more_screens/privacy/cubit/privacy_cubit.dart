import 'package:flutter_bloc/flutter_bloc.dart';
part 'privacy_state.dart';

class PrivacyCubit extends Cubit<PrivacyState> {
  PrivacyCubit() : super(PrivacyInitial());

  static PrivacyCubit get(context)=>BlocProvider.of(context);
}
