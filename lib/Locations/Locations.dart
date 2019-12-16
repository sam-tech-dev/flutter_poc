
import 'package:flutter/material.dart';
import 'package:flutter_poc/main.dart';
import 'package:flutter_poc/models/Location.dart';

class Locations extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(child: Text(location.name),
            onTap:()=> _onTapLocation(context, location.id) ,
        ))
            .toList(),
      ),
    );
  }



  _onTapLocation(BuildContext context, int locationId){
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id':locationId});
  }

}