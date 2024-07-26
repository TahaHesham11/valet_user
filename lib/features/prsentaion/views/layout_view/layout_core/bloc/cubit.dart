import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_core/bloc/states.dart';
import 'package:valet_user/features/prsentaion/views/layout_view/layout_screens/profile/profile_view.dart';
import '../../layout_screens/booking/booking_view.dart';
import '../../layout_screens/car_insurance/car_insurance_view.dart';
import '../../layout_screens/home/home_view.dart';
import '../../layout_screens/more/more_view.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int current = 0;

  List<Widget> bottomScreen = [
    const HomeScreen(),
    BookingScreen(),
    const carInsuranceScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ];

  void changeBottom(index, context) {
    current = index;

    emit(LayoutShopChangeNavBarStateState());
  }
}
