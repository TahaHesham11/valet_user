import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingInitial());

  static BookingCubit get(context)=>BlocProvider.of(context);

  final searchController = TextEditingController();

 bool isShow = false;

  void showList(){
    isShow = !isShow;
    emit(BookingShowList());
  }

}
