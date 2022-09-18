import 'package:doctor_plus_app/core/theme/app_colors.dart';
import 'package:doctor_plus_app/core/theme/app_icons.dart';
import 'package:doctor_plus_app/views/content/components/header_local_component.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeaderLocationComponent(
          location: 'Rua Epitácio Pessoa, 10',
        )
      ],
    ));
  }
}
