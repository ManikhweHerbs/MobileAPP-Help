import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/basic_tile.dart';

typedef PepAddress = Function(String);

class LocationBasicTileWidget extends StatelessWidget{
  final BasicTile tile;
  final PepAddress pepAddress;
  
  const LocationBasicTileWidget({
    required this.tile,
    required this.pepAddress
  });

  @override 
  Widget build(BuildContext context){
    final title = tile.title;
    final tiles = tile.tiles;

    if(tiles.isEmpty){
      return ListTile(
        title:Text(title),
        onTap:()=> {
          pepAddress(title)
        }
      );
    }
    else{
      return Container(
        margin:EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.blue), 
        ),
        child: ExpansionTile(
          key: PageStorageKey(title), // Avoids automatic closing of a tile.
          title: Text(title),
          children: tiles.map((tile)=>LocationBasicTileWidget(tile:tile,pepAddress: pepAddress,)).toList(),
        ),
      );
    }

    
  }

  
}