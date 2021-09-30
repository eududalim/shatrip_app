import 'dart:math';

import 'package:flutter/material.dart';
import '../elements/home_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackground(),
          Column(
            children: [
              SizedBox(height: 70),
              ListView(
                  children: [Container(height: 50, color: Colors.green[200])])
            ],
          )
        ],
      ),
    );
  }
}
