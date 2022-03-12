import 'package:flutter/material.dart';
import 'package:inno_commute/future/model/directions.dart';
import 'package:select_dialog/select_dialog.dart';

class SelectDirectionWidget extends StatefulWidget {
  SelectDirectionWidget({Key? key}) : super(key: key);
  String fromDirection = Direction.innopolis.cityToString();
  String toDirection = Direction.kazan.cityToString();

  @override
  State<SelectDirectionWidget> createState() => _SelectDirectionWidgetState();
}

class _SelectDirectionWidgetState extends State<SelectDirectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Город выезда:'),
              TextButton(
                onPressed: () {
                  String ex1 = "No value selected";
                  SelectDialog.showModal<String>(
                    context,
                    label: "Город выезда",
                    selectedValue: ex1,
                    items:
                        Direction.values.map((e) => e.cityToString()).toList(),
                    onChange: (String selected) {
                      setState(() {
                        widget.fromDirection = selected;
                      });
                    },
                  );
                },
                child: Text(widget.fromDirection),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Город назначения:'),
              TextButton(
                onPressed: () {
                  String ex1 = "No value selected";
                  SelectDialog.showModal<String>(
                    context,
                    label: "Город выезда",
                    selectedValue: ex1,
                    items:
                        Direction.values.map((e) => e.cityToString()).toList(),
                    onChange: (String selected) {
                      setState(() {
                        widget.toDirection = selected;
                      });
                    },
                  );
                },
                child: Text(widget.toDirection),
              )
            ],
          ),
        ],
      ),
    );
  }
}
