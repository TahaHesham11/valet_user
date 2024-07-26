import 'package:flutter_bloc/flutter_bloc.dart';
part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationInitial());

  static NotificationCubit get(context)=>BlocProvider.of(context);

  bool isShow = false;

  void showList(){
    isShow = !isShow;
    emit(NotificationShowList());
  }
}
