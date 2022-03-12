import 'package:flutter/material.dart';
import 'package:inno_commute/future/model/cubit/new_trip_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TypeOfTripSelector extends StatelessWidget {
  const TypeOfTripSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewTripCubit, NewTripState>(
      builder: (context, state) {
        return Container();
      },
    );
  }
}

/*class TypeOfTripSelector extends StatefulWidget {
  const TypeOfTripSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<TypeOfTripSelector> createState() => _TypeOfTripSelectorState();
}

class _TypeOfTripSelectorState extends State<TypeOfTripSelector> {
  bool _isPassenger = true;
  final ButtonStyle _activeButton = ElevatedButton.styleFrom(
    primary: Colors.cyan,
  );
  final ButtonStyle _notActiveButton = ElevatedButton.styleFrom(
    primary: Colors.white,
    side: const BorderSide(
      color: Colors.cyan,
      width: 1,
    ),
  );
  final TextStyle _unselectedTextStyle = const TextStyle(color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              _isPassenger = true;
            });
          },
          icon: Icon(
            Icons.emoji_people,
            color: _isPassenger ? Colors.white : Colors.cyan,
          ),
          label: Text(
            'Я пассажир',
            style: !_isPassenger ? _unselectedTextStyle : null,
          ),
          style: _isPassenger ? _activeButton : _notActiveButton,
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              _isPassenger = false;
            });
          },
          icon: Icon(
            Icons.drive_eta_sharp,
            color: !_isPassenger ? Colors.white : Colors.cyan,
          ),
          label: Text(
            'Я водитель',
            style: _isPassenger ? _unselectedTextStyle : null,
          ),
          style: !_isPassenger ? _activeButton : _notActiveButton,
        ),
      ],
    );
  }
}
*/