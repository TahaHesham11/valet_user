import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_reservation_state.dart';

class CreateReservationCubit extends Cubit<CreateReservationState> {
  CreateReservationCubit() : super(CreateReservationInitial());

  static CreateReservationCubit get(context)=>BlocProvider.of(context);


  bool isCheckSubscribe = false;
  bool terms = false;
  bool isClick =false;

  void isChangeTerms(){
    terms = !terms;
    emit(CreateReservationChangeTerms());
  }

  void isChangeSubscribe(){
    isCheckSubscribe = !isCheckSubscribe;
    emit(CreateReservationChangeSubscribe());

  }


  void selectVale() {
    isClick = false;
    emit(CreateReservationChangeClick());
  }



  void selectSelf() {
    isClick = true;
    emit(CreateReservationChangeClick());
  }
}
