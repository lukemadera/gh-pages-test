import 'dart:async';
import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 250), () {
      Navigator.pushNamed(context, '/beast-search');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('Home'),
        ]
      )
    );
  }
}
