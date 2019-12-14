import 'package:flutter/material.dart';



class TextSection extends StatelessWidget{

  String _title,_description;
  static const double hPad= 16.0;

  TextSection(this._title,this._description);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(hPad, 20.0, hPad, 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.title,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(hPad, 5.0, hPad, hPad),
          child: Text(_description),
        ),
      ],

    );
  }


}