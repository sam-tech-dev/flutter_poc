import 'package:flutter/material.dart';
import 'package:flutter_poc/Locations/Locations.dart';
import 'package:flutter_poc/style.dart';

import 'LocationDetail.dart';

void main() => runApp(MyApp());

const LocationRoute= '/';
const LocationDetailRoute ='/location_detail';

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme( title: AppBarTextStyle)
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: BodyTextStyle
        )
    ),
    );
  }

  RouteFactory _routes(){
    return (settings){
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

}


