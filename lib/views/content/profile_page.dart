import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nome',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Futura',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Marco',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Futura',
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Futura',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'marco.feliponi@doctorplus.com',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Futura',
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Idade',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Futura',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '19',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Futura',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Peso',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Futura',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '97 kg',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Futura',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Sexo',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Futura',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Masculino',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Futura',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
