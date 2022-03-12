part of 'new_trip_cubit.dart';

@immutable
abstract class NewTripState {}

class NewTripInitial extends NewTripState {}

class NewTripSelectTypeOnPassenger extends NewTripState {}

class NewTripSelectTypeOnDriver extends NewTripState {}
