import 'package:inno_companion/future/model/directions.dart';

class Trip {
  int id;
  String author;
  Direction cityFrom;
  Direction cityTo;
  DateTime time;
  String comment;
  bool active;
  Trip({
    required this.id,
    required this.author,
    required this.cityFrom,
    required this.cityTo,
    required this.time,
    required this.comment,
    required this.active,
  });
}
