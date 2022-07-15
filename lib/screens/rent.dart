import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("상시사업 현황(앰프)"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SfCalendar(
              view: CalendarView.timelineMonth,
              dataSource: MeetingDataSource(_getDataSource()),
              todayHighlightColor: Colors.transparent,
              todayTextStyle: const TextStyle(
                color: Colors.black,
              ),
              monthViewSettings: const MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime startTime = DateTime(2022, 7, 15);
  final DateTime endTime = DateTime(2022, 7, 17);

  meetings.add(Meeting('', startTime, endTime, const Color(0xFF0F8644), true));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
