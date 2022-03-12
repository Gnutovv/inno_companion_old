import 'package:flutter/material.dart';
import 'package:inno_commute/future/presenter/res/widgets/create_trip_page_widgets/date_time_picker.dart';
import 'package:inno_commute/future/presenter/res/widgets/create_trip_page_widgets/direction_picker.dart';
import 'package:inno_commute/future/presenter/res/widgets/create_trip_page_widgets/selector.dart';

class CreateTripPage extends StatelessWidget {
  const CreateTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TypeOfTripSelector(),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Укажите дату и время окончания активности поездки',
            textAlign: TextAlign.center,
          ),
        ),
        TripDateTimePicker(),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Text('Укажите город выезда и назначения'),
        ),
        SelectDirectionWidget(),
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
            OutlinedButton(onPressed: () {}, child: const Text('Комментарий')),
            ElevatedButton(
              onPressed: () {},
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
