import 'package:doctor_plus_app/views/content/profile_page.dart';
import 'package:doctor_plus_app/views/content/reservations_page.dart';
import 'package:doctor_plus_app/views/content/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui';

class BookingPage extends StatelessWidget {
  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      switch (currentIndex) {
        case 1:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SearchPage()));
          break;
        case 2:
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ReservationsPage()));
          break;
        case 3:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfilePage()));
          break;
      }
    });

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frmprincipalclinica6uw (222:2)
        width: double.infinity,
        height: 667 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(14 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupvdq3YX3 (XxEGpH7Wsg2LJDqnHWVDq3)
              left: 6 * fem,
              top: 9 * fem,
              child: Container(
                width: 296.5 * fem,
                height: 40 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // back2H7F (223:36)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 43.5 * fem, 0 * fem),
                      width: 40 * fem,
                      height: 40 * fem,
                      // child: Image.asset(
                      //   'assets/visualizao-de-mdicos/images/back-2.png',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    Container(
                      child: Text(
                        'Clínica Amor Saúde',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xff5cc6ba),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // line1iLy (222:4)
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
              // autogroup4mrtAyf (XxEGvmvh1U1aaRaEHx4MRT)
              left: 0 * fem,
              top: 58 * fem,
              child: Container(
                width: 444 * fem,
                height: 285 * fem,
                child: Center(
                  // amorsaude1rbb (222:35)
                  child: SizedBox(
                    width: 444 * fem,
                    height: 285 * fem,
                    // child: Image.asset(
                    //   'assets/visualizao-de-mdicos/images/amorsaude-1.png',
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogrouppnuyGQR (XxEHYg4YKFAoJMzMBTpNUy)
              left: 0 * fem,
              top: 343 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    14 * fem, 31 * fem, 23 * fem, 29.5 * fem),
                width: 375 * fem,
                height: 261.5 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouptoym1gm (XxEHArMZy1ywrCKsJuToYM)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // calendar3h3o (222:15)
                            width: 32 * fem,
                            height: 32 * fem,
                            child: Image.asset(
                              'assets/icons/reservationPage/location.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // avgetliovargas899centrojaragud (222:14)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 306 * fem,
                            ),
                            child: Text(
                              'Av. Getúlio Vargas, 899 Centro, Jaraguá do Sul\n(47) 3271-4252',
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
                    Container(
                      // autogroupswezvam (XxEHGWroGDpNCGc45uSweZ)
                      margin: EdgeInsets.fromLTRB(
                          102 * fem, 0 * fem, 92 * fem, 0 * fem),
                      width: double.infinity,
                      height: 46 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff5cc6ba),
                        borderRadius: BorderRadius.circular(11 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Agendar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
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
    );
  }
}
