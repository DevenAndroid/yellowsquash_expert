import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../widgets/apptheme.dart';
import '../widgets/back_app_bar.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {

  List<Appointment> _events = [];
  @override
  void initState() {
    super.initState();
    log(DateTime.now().add(const Duration(hours: 1)).toString());
    log(DateTime.now().add(const Duration(hours: 2)).toString());
    _events = [
      Appointment(
        startTime: DateTime.parse("2024-03-16 16:00:00.000000"),
        endTime: DateTime.parse("2024-03-16 17:00:00.000000"),
        subject: 'Meeting',
        color: Colors.blue,
      ),
      Appointment(
        startTime: DateTime.parse("2024-03-16 19:00:00.000000"),
        endTime: DateTime.parse("2024-03-16 20:00:00.000000"),
        subject: 'Meeting',
        color: Colors.redAccent,
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: backAppBar(title: "My Calendar", context: context,backgroundColor: AppTheme.yellowColor),
        body: Theme(
          data: ThemeData(useMaterial3: true),
          child: SfCalendar(
            view: CalendarView.week,
            timeSlotViewSettings: const TimeSlotViewSettings(numberOfDaysInView: 3),
            allowAppointmentResize: true,
            cellBorderColor: AppTheme.primaryColor,
            dataSource: _getCalendarDataSource(),
          ),
        )
    );
  }
  _CalendarDataSource _getCalendarDataSource() {
    return _CalendarDataSource(_events);
  }
}

class _CalendarDataSource extends CalendarDataSource {
  _CalendarDataSource(List<Appointment> appointments) {
    this.appointments = appointments;
  }
}