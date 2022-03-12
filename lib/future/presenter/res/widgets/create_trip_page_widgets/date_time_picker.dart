import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TripDateTimePicker extends StatefulWidget {
  TripDateTimePicker({Key? key}) : super(key: key);

  DateTime selectedDate = DateTime.now();
  bool wasSelected = false;
  @override
  State<TripDateTimePicker> createState() => _TripDateTimePickerState();
}

class _TripDateTimePickerState extends State<TripDateTimePicker> {
  @override
  Widget build(BuildContext context) {
    DateTime minDate = DateTime.now();
    DateTime maxDate = DateTime(minDate.year, minDate.month, minDate.day + 2,
        minDate.hour + 23, minDate.minute + 59);
    return TextButton(
        onPressed: () {
          DatePicker.showDateTimePicker(context,
              showTitleActions: true,
              minTime: minDate,
              maxTime: maxDate, onConfirm: (date) {
            widget.selectedDate = date;
            widget.wasSelected = true;
            setState(() {});
          }, currentTime: DateTime.now(), locale: LocaleType.ru);
        },
        child: widget.wasSelected
            ? Text(widget.selectedDate.toLocal().toString().substring(0, 16))
            : const Text('Выбрать дату и время поездки'));
  }
}
