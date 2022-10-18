import 'package:doctor_plus_app/views/content/components/header_local_component.dart';
import 'package:doctor_plus_app/views/content/login_screen.dart';
import 'package:flutter/material.dart';

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
      children: [
        HeaderLocationComponent(
          location: 'Rua Epitácio Pessoa, 10',
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
      padding: EdgeInsets.all(150),
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
