import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
        title: Text('Calend'),
      ),
      body: Center(child: Text('Calend', style: TextStyle(fontSize: 60))),
    );
  }
}
