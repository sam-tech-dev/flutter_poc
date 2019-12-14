import 'package:flutter/material.dart';



class ImageBanner extends StatelessWidget{

  final String _asset_path;

  ImageBanner(this._asset_path);

  @override
  Widget build(BuildContext context) {

    return Container(
        constraints: BoxConstraints.expand(
          height: 200.0
        ),
        decoration: BoxDecoration(
            color: Colors.grey
        ),
        child: Image.asset(
            _asset_path,
          fit: BoxFit.cover,
        )
    );
  }


}