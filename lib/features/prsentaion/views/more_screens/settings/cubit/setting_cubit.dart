import 'package:flutter_bloc/flutter_bloc.dart';
part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingInitial());

  static SettingCubit get(context)=>BlocProvider.of(context);

   bool isSwitch = false;

  void changeSwitch(){
    isSwitch = !isSwitch;
    emit(SettingChangeSwitch());

}
}
