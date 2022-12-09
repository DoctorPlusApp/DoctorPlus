import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_plus_app/views/content/content_page.dart';
import 'package:doctor_plus_app/views/content/profile_page.dart';
import 'package:doctor_plus_app/views/content/search_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/scheduler.dart';

// Ainda sendo desenvolvido... dados mockados

class ReservationsPage extends StatefulWidget {
  _ReservationsPage createState() => _ReservationsPage();
}

class _ReservationsPage extends State<ReservationsPage> {
  int currentIndex = 2;
  Future<QuerySnapshot<Map<String, dynamic>>> consultasFuture;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance.collection('consultas').get().then(
      (value) {
        setState(() {
          consultasFuture = Future.value(value);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      switch (currentIndex) {
        case 0:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => ContentPage(),
            ),
            (route) => false,
          );

          break;
        case 1:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(),
            ),
            (route) => false,
          );
          break;
        case 3:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ),
            (route) => false,
          );
          break;
      }
    });

    double baseWidth = 375.0020751953;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Minhas Reservas',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
        ),
        body: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
          future: consultasFuture,
          builder: (context, consultasStream) {
            if (consultasStream.hasData) {
              return ListView(
                children: consultasStream.data.docs
                    .map(
                      (consulta) => Column(
                        children: [],
                      ),
                    )
                    .toList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              //icon color black
              icon: Icon(Icons.home, color: Colors.grey[600]),
              // label color black
              label: 'ContentPage',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey[600]),
              label: 'Search',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.grey[600]),
              label: 'Calendar',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey[600]),
              label: 'Profile',
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
