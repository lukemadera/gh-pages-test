import 'package:flutter/material.dart';

import './beast_data_service.dart';
import './beast_class.dart';

class BeastSearch extends StatefulWidget {

  @override
  _BeastSearchState createState() => _BeastSearchState();
}

class _BeastSearchState extends State<BeastSearch> {
  BeastDataService _beastDataService = BeastDataService();

  List<BeastClass> _beasts = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                width: 400,
                child: TextFormField(
                  //key: fieldKey,
                  //initialValue: (formVals.containsKey(formValsKey)) ? formVals[formValsKey] : '',
                  //onSaved: (String value) { formVals[formValsKey] = value; },
                  onChanged: (String value) {
                    getBeasts(value);
                  },
                  decoration: InputDecoration(
                    //labelText: label,
                    hintText: 'Type beast name here..',
                  ),
                ),
              ),
              Spacer(),
            ]
          ),
          _buildBeasts(context),
        ]
      )
    );
  }

  Widget _buildBeasts(var context) {
    if (_beasts.length < 1) {
      return SizedBox.shrink();
    }
    return Container(
      padding: EdgeInsets.all(20),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          //SizedBox(height: 10),
          ..._beasts.map((beast) => _buildBeast(beast, context) ).toList(),
        ]
      )
    );
  }

  Widget _buildBeast(BeastClass beast, var context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 250,
          child: Image.network(beast.imageUrl),
        ),
        SizedBox(height: 10),
        Text(beast.name),
      ]
    );
  }

  void getBeasts(String name) {
    setState(() {
      _beasts = _beastDataService.getBeasts(name: name);
    });
  }
}
