import 'package:flutter/material.dart';
import 'package:flutter_poc/style.dart';

import 'LocationDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
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
}


