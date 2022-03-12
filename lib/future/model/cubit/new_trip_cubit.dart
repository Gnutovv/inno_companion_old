import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_trip_state.dart';

class NewTripCubit extends Cubit<NewTripState> {
  NewTripCubit() : super(NewTripInitial());
}
