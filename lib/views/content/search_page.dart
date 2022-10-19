import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(child: Text('Search', style: TextStyle(fontSize: 60))),
    );
  }
}
