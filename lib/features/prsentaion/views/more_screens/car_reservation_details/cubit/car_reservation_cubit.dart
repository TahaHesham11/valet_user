import 'package:flutter_bloc/flutter_bloc.dart';
part 'car_reservation_state.dart';

class CarReservationCubit extends Cubit<CarReservationState> {
  CarReservationCubit() : super(CarReservationInitial());

  static CarReservationCubit get(context)=>BlocProvider.of(context);
}
