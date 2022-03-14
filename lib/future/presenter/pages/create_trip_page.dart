import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_commute/future/model/cubit/new_trip_cubit.dart';
import 'package:inno_commute/future/model/repository/trips_repository.dart';
import 'package:inno_commute/future/presenter/res/widgets/create_trip_page_widgets/date_time_picker.dart';
import 'package:inno_commute/future/presenter/res/widgets/create_trip_page_widgets/direction_picker.dart';
import 'package:inno_commute/future/presenter/res/widgets/create_trip_page_widgets/selector.dart';

class CreateTripPage extends StatelessWidget {
  const CreateTripPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TypeOfTripSelector(),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Укажите дату и время окончания активности поездки',
            textAlign: TextAlign.center,
          ),
        ),
        const TripDateTimePicker(),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Text('Укажите город выезда и назначения'),
        ),
        const SelectDirectionWidget(),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Добавить комментарий к поездке и завершить создание',
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                if (TripsRepository(
                        context.read<NewTripCubit>().state.repository.trip)
                    .createTrip()) {
                  const snackBar = SnackBar(
                    duration: Duration(seconds: 2),
                    content: Text('Поездка создана'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  const snackBar = SnackBar(
                    duration: Duration(seconds: 2),
                    content: Text(
                        'Ошибка. Проверьте, все ли данные корректно заполнены.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: const Text('Создать'),
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
