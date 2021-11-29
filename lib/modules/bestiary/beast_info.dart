import 'package:flutter/material.dart';

import './beast_data_service.dart';

class BeastInfo extends StatefulWidget {

  @override
  _BeastInfoState createState() => _BeastInfoState();
}

class _BeastInfoState extends State<BeastInfo> {
  BeastDataService _beastDataService = BeastDataService();

  @override
  void initState() {
    super.initState();
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