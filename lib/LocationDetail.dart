import 'package:flutter/material.dart';
import 'package:flutter_poc/TextSection.dart';
import 'package:flutter_poc/image_banner.dart';
import 'package:flutter_poc/models/Location.dart';



class LocationDetail extends StatelessWidget{

    int _locationID;

    LocationDetail(this._locationID);

    @override
  Widget build(BuildContext context) {

   // final List<Location> locations= Location.fetchAll();
    final Location location=  Location.locationById(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner(location.imagePath),
        ]..addAll(textSections(location)),
      )
    );
  }


  List<Widget> textSections(Location location){
    return location.facts.map((fact)=> TextSection(fact.title,fact.text)).toList(growable: true);
  }

}