import 'package:flutter/material.dart';
import 'package:flutter_poc/TextSection.dart';
import 'package:flutter_poc/image_banner.dart';



class LocationDetail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner("assets/images/demo_image.jpg"),
          TextSection("Title 1","hdadajcaadsdhjbvdkahdfasvbfsakhfaskf chb iuqgffa  dkasdgadb cac"),
          TextSection("Title 2","hdadajcaadsdhjbvdkahdfasvbfsakhfaskf chb iuqgffa  dkasdgadb cac"),
          TextSection("Title 3","hdadajcaadsdhjbvdkahdfasvbfsakhfaskf chb iuqgffa  dkasdgadb cac"),
        ],
      )
    );
  }


}