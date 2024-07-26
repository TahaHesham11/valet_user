import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  static PaymentCubit get(context)=>BlocProvider.of(context);

  final cardNumberController = TextEditingController();
  final newCardNumberController = TextEditingController();
  final monthController = TextEditingController();
  final yearsController = TextEditingController();
  final verificationController = TextEditingController();
  final formKey = GlobalKey<FormState>();
}
