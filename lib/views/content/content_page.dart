import 'package:doctor_plus_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:doctor_plus_app/views/content/profile_page.dart';
import 'package:doctor_plus_app/views/content/search_page.dart';
import 'package:doctor_plus_app/views/content/calendar_page.dart';

class ContentPage extends StatefulWidget {
  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      switch (currentIndex) {
        case 1:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(),
            ),
            (route) => false,
          );

          break;
        case 2:
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => CalendarPage(),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Agende sua consulta',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: kBoxDecorationStyle,
            margin: const EdgeInsets.only(bottom: 30.0),
            width: 375,
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
                hintText: 'Em qual cidade você está?',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Image.asset(
                    'assets/icons/contentPage/general-practitioner.png'),
                iconSize: 110,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/icons/contentPage/cardiologist.png'),
                iconSize: 110,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/icons/contentPage/dermatologist.png'),
                iconSize: 110,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Image.asset('assets/icons/contentPage/orthopedist.png'),
                iconSize: 110,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/icons/contentPage/pediatrician.png'),
                iconSize: 110,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/icons/contentPage/gynecologist.png'),
                iconSize: 110,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Image.asset('assets/icons/contentPage/orthodontics.png'),
                iconSize: 110,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/icons/contentPage/nutrition.png'),
                iconSize: 110,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/icons/contentPage/infectologist.png'),
                iconSize: 110,
                onPressed: () {},
              ),
            ],
          ),
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
