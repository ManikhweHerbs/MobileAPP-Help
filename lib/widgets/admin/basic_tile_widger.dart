import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/basic_tile.dart';

class BasicTileWidget extends StatelessWidget{
  final BasicTile tile;
  const BasicTileWidget({
    required this.tile,
  });

  @override 
  Widget build(BuildContext context){
    final title = tile.title;
    final tiles = tile.tiles;

    if(tiles.isEmpty){
      return ListTile(
        title:Text(title),
        onTap:()=> {

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
          children: tiles.map((tile)=>BasicTileWidget(tile:tile)).toList(),
        ),
      );
    }

    
  }

  
}