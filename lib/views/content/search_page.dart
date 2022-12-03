import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_plus_app/utilities/constants.dart';
import 'package:doctor_plus_app/views/content/reservations_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:doctor_plus_app/views/content/profile_page.dart';
import 'package:doctor_plus_app/views/content/content_page.dart';
import 'package:doctor_plus_app/views/content/calendar_page.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int currentIndex = 1;
  String search = '';
  Future<QuerySnapshot<Map<String, dynamic>>> clinicasFuture;

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance.collection('consultorios').get().then(
      (value) {
        setState(() {
          clinicasFuture = Future.value(value);
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
        case 2:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => ReservationsPage(),
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/logos/doctorPlusLogo.png',
          fit: BoxFit.fill,
          height: 50,
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: kBoxDecorationStyle,
            margin: const EdgeInsets.only(bottom: 20.0, left: 14, right: 14),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0, left: 5),
                suffixIcon: Icon(
                  Icons.add_location_rounded,
                  color: Colors.black12,
                ),
                hintText: 'Procure uma clínica aqui?',
                hintStyle: kHintTextStyle,
              ),
              onChanged: (value) {
                setState(() {
                  search = value;
                });
              },
            ),
          ),
          FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
            future: clinicasFuture,
            builder: (context, consultoriosStream) {
              if (consultoriosStream.hasData) {
                return Column(
                  children: consultoriosStream.data.docs
                      .where((element) => element
                          .data()['nome']
                          .toString()
                          .toLowerCase()
                          .contains(search.toLowerCase()))
                      .map((consultorio) => Padding(
                            padding: const EdgeInsets.only(
                                left: 14, right: 14, top: 5, bottom: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(),
                                Text(
                                  consultorio.data()['nome'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(consultorio.data()['endereco']),
                                Text(consultorio.data()['telefone'].toString()),
                              ],
                            ),
                          ))
                      .toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
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
    );
  }
}
