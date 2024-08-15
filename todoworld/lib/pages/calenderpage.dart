import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todoworld/Utilities/calendertile.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  var _selectedDate = 0;
  @override
  Widget build(BuildContext context) {
    var current_day = DateTime.now();

    final day = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "${DateFormat("MMMM").format(day)}" +
                " ${DateFormat("dd").format(day)}," +
                "${DateFormat(" yyyy").format(day)}",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Calendertile(
                    week: DateFormat("EEE").format(day),
                    date: day.day,
                    currentindex: 0,
                  ),
                  Calendertile(
                      week:
                          DateFormat("EEE").format(day.add(Duration(days: 1))),
                      date: day.day + 1,
                      currentindex: 1),
                  Calendertile(
                      week:
                          DateFormat("EEE").format(day.add(Duration(days: 2))),
                      date: day.day + 2,
                      currentindex: 3),
                  Calendertile(
                      week:
                          DateFormat("EEE").format(day.add(Duration(days: 3))),
                      date: day.day + 3,
                      currentindex: 4),
                  Calendertile(
                      week:
                          DateFormat("EEE").format(day.add(Duration(days: 4))),
                      date: day.day + 4,
                      currentindex: 5),
                  Calendertile(
                      week:
                          DateFormat("EEE").format(day.add(Duration(days: 5))),
                      date: day.day + 5,
                      currentindex: 6),
                ],
              ),
            ),
          ],
        ));
  }
}
