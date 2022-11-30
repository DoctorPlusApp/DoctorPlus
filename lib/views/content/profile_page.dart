import 'package:doctor_plus_app/views/content/calendar_page.dart';
import 'package:doctor_plus_app/views/content/content_page.dart';
import 'package:doctor_plus_app/views/content/search_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/scheduler.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  int currentIndex = 3;
  var email = '';
  var name = '';

  @override
  void initState() {
    super.initState();

    (() async {
      await getUserData();
      setState(() {});
    })();
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      switch (currentIndex) {
        case 0:
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContentPage()));
          break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
          break;
        case 2:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CalendarPage()));
          break;
      }
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Meu Perfil',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nome',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 1,
                            width: 300,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'E-mail',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            email,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
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

  void getUserData() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final user = await auth.currentUser;
    email = user.email;
    name = user.email.substring(0, user.email.indexOf('@'));
  }
}
