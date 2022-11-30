import 'package:doctor_plus_app/views/content/content_page.dart';
import 'package:doctor_plus_app/views/content/search_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/scheduler.dart';

// Ainda sendo desenvolvido... dados mockados

class ReservationsPage extends StatefulWidget{
  _ReservationsPage createState ()=> _ReservationsPage();
}

class _ReservationsPage extends State<ReservationsPage> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      switch (currentIndex) {
        case 0:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContentPage()));
          break;
        case 1:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SearchPage()));
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
        body: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 667 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(14 * fem),
            ),
            child: Stack(
              children: [
                Positioned(
                  // line189X (1:493)
                  left: 0 * fem,
                  top: 604.5 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 375 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffebebeb),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0007324219 * fem,
                  top: 58 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 375 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffebebeb),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 16.0007324219 * fem,
                  top: 68 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 216 * fem,
                      height: 22 * fem,
                      child: Text(
                        'Consulta Dr. Alberto Souza',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xff717f7f),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 16.0007324219 * fem,
                  top: 94 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 140 * fem,
                      height: 19 * fem,
                      child: Text(
                        'Clínica Amor Saúde',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xffa0a0a0),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 14.0007324219 * fem,
                  top: 124 * fem,
                  child: Container(
                    width: 271 * fem,
                    height: 32 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 6 * fem, 0 * fem),
                          width: 32 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/icons/reservationPage/calendar.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 3 * fem, 60 * fem, 0 * fem),
                          child: Text(
                            '18/10/2022',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffa0a0a0),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 6 * fem, 0 * fem),
                          width: 32 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/icons/reservationPage/watch.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 3 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '09:30h',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffa0a0a0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 14.0007324219 * fem,
                  top: 163 * fem,
                  child: Container(
                    width: 109 * fem,
                    height: 32 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // calendar4GPT (1:500)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 6 * fem, 0 * fem),
                          width: 32 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/icons/reservationPage/money.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // r35000Ybs (1:499)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'R\$ 350,00',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffa0a0a0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 14.0007324219 * fem,
                  top: 204 * fem,
                  child: Container(
                    width: 202 * fem,
                    height: 63 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 6 * fem, 0 * fem),
                          width: 32 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/visualizao-de-mdicos/images/location.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 6 * fem, 0 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 164 * fem,
                          ),
                          child: Text(
                            'Av. Getúlio Vargas, 899\nCentro, Jaraguá do Sul\n(47) 3271-4252',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffa0a0a0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
