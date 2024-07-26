import 'package:flutter_bloc/flutter_bloc.dart';
part 'booking_details_state.dart';

class BookingDetailsCubit extends Cubit<BookingDetailsState> {
  BookingDetailsCubit() : super(BookingDetailsInitial());

  static BookingDetailsCubit get(context)=>BlocProvider.of(context);

  bool paypal = false;
  bool googlePay = false;
  bool applePay = false;

  void selectPayPal() {
    paypal = true;
    googlePay = false;
    applePay = false;
    emit(BookingDetailsPaymentOptionChanged());
  }

  void selectGooglePay() {
    paypal = false;
    googlePay = true;
    applePay = false;
    emit(BookingDetailsPaymentOptionChanged());
  }

  void selectApplePay() {
    paypal = false;
    googlePay = false;
    applePay = true;
    emit(BookingDetailsPaymentOptionChanged());
  }
}
