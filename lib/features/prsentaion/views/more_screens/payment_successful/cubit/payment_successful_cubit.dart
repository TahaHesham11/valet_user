import 'package:bloc/bloc.dart';
part 'payment_successful_state.dart';

class PaymentSuccessfulCubit extends Cubit<PaymentSuccessfulState> {
  PaymentSuccessfulCubit() : super(PaymentSuccessfulInitial());
}
