import 'package:flutter/material.dart';

class BeastInventory extends StatefulWidget {

  @override
  _BeastInventoryState createState() => _BeastInventoryState();
}

class _BeastInventoryState extends State<BeastInventory> {
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