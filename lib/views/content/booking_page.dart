import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_plus_app/views/content/profile_page.dart';
import 'package:doctor_plus_app/views/content/reservations_page.dart';
import 'package:doctor_plus_app/views/content/search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui';

class BookingPage extends StatefulWidget {
  final String id;
  const BookingPage({this.id});
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: FirebaseFirestore.instance
            .collection("consultorios")
            .doc(widget.id)
            .get(),
        builder: (context, consultorio) {
          if (consultorio.hasData) {
            return Scaffold(
                body: CustomScrollView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    slivers: [
                  SliverAppBar(
                    title: Text(consultorio.data.data()["nome"]),
                    shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    stretch: true,
                    expandedHeight: 380,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: FlexibleSpaceBar(
                        background: Container(
                          color: Colors.black87,
                          child: Image.network(
                            consultorio.data.data()["imagem"] ??
                                "https://img.freepik.com/vektoren-kostenlos/404-fehler-mit-einer-landschaftskonzeptillustration_114360-7898.jpg?w=2000",
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Theme.of(context).primaryColor,
                              ),
                              Text(consultorio.data.data()["endereco"]),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone_iphone_rounded,
                                color: Theme.of(context).primaryColor,
                              ),
                              Text(consultorio.data
                                  .data()["telefone"]
                                  .toString()),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              await FirebaseFirestore.instance
                                  .collection("consultas")
                                  .add({
                                "consultorio": consultorio.data.reference,
                                "date": DateTime.now(),
                                "userId":
                                    FirebaseAuth.instance.currentUser.email
                              });
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content:
                                    Text("Agendamento realizado com sucesso."),
                              ));
                              Navigator.of(context).pop();
                            },
                            child: Text("AGENDAR"),
                          )
                        ],
                      ),
                    ),
                  )
                ]));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
