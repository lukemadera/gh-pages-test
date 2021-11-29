import 'package:flutter/material.dart';

class BeastJournal extends StatefulWidget {

  @override
  _BeastJournalState createState() => _BeastJournalState();
}

class _BeastJournalState extends State<BeastJournal> {
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