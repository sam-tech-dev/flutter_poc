import 'package:flutter_poc/models/LocationFact.dart';

class Location{

  int id;
  String name;
  String imagePath;
  List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);



  static Location locationById(int id){
    List<Location> locations = fetchAll();
    for(var i= 0; i<locations.length; i++){
      if(locations[i].id== id){
        return locations[i];
      }
    }
    return null;
  }


  static List<Location> fetchAll(){
    return [
      Location(1,"Arashiyama Bamboo Grove","assets/images/demo_image.jpg",
      [LocationFact('Summary',
          'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),

      Location(2,"Mount Fuji","assets/images/demo_image.jpg",
          [LocationFact('Summary',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),

      Location(3,"Arashiyama Bamboo Grove","assets/images/demo_image.jpg",
          [LocationFact('Summary',
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }
}