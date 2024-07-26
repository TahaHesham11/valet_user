part of 'create_reservation_cubit.dart';

abstract class CreateReservationState {}

class CreateReservationInitial extends CreateReservationState {}
class CreateReservationChangeTerms extends CreateReservationState {}
class CreateReservationChangeSubscribe extends CreateReservationState {}
class CreateReservationChangeClick extends CreateReservationState {}

