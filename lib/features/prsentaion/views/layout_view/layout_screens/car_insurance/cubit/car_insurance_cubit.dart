import 'package:flutter_bloc/flutter_bloc.dart';
part 'car_insuramce_state.dart';

class CarInsuranceCubit extends Cubit<CarInsuramceState> {
  CarInsuranceCubit() : super(CarInsuramceInitial());

  static CarInsuranceCubit get(context)=>BlocProvider.of(context);
}
