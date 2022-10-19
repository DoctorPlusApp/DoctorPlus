import 'package:doctor_plus_app/utilities/constants.dart';
import 'package:doctor_plus_app/views/content/login_screen.dart';
import 'package:flutter/material.dart';
import '/utilities/constants.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.all(10),
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
                  contentPadding: EdgeInsets.only(top: 14.0),
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
                  icon:
                      Image.asset('assets/icons/contentPage/cardiologist.png'),
                  iconSize: 110,
                  onPressed: () {},
                ),
                IconButton(
                  icon:
                      Image.asset('assets/icons/contentPage/dermatologist.png'),
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
                  icon:
                      Image.asset('assets/icons/contentPage/pediatrician.png'),
                  iconSize: 110,
                  onPressed: () {},
                ),
                IconButton(
                  icon:
                      Image.asset('assets/icons/contentPage/gynecologist.png'),
                  iconSize: 110,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon:
                      Image.asset('assets/icons/contentPage/orthodontics.png'),
                  iconSize: 110,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/icons/contentPage/nutrition.png'),
                  iconSize: 110,
                  onPressed: () {},
                ),
                IconButton(
                  icon:
                      Image.asset('assets/icons/contentPage/infectologist.png'),
                  iconSize: 110,
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  buildLoginBtn(context),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildLoginBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(110),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Text(
          'Sair',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
