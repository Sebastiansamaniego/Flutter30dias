import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: Center(
        child: TableCalendar(
          calendarController: _controller,
          availableGestures: AvailableGestures.horizontalSwipe,
          calendarStyle: CalendarStyle(
              weekdayStyle: TextStyle(color: Colors.blue),
              weekendStyle: TextStyle(color: Colors.green),
              outsideDaysVisible: false),
        ),
      ),
    );
  }
}
