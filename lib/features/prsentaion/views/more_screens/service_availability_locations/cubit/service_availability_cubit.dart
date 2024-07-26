import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'service_availability_state.dart';

class ServiceAvailabilityCubit extends Cubit<ServiceAvailabilityState> {
  ServiceAvailabilityCubit() : super(ServiceAvailabilityInitial());

  static ServiceAvailabilityCubit get(context)=>BlocProvider.of(context);


  final searchController = TextEditingController();

}
