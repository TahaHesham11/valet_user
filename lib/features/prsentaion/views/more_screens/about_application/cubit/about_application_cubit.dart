import 'package:bloc/bloc.dart';
part 'about_application_state.dart';

class AboutApplicationCubit extends Cubit<AboutApplicationState> {
  AboutApplicationCubit() : super(AboutApplicationInitial());
}
