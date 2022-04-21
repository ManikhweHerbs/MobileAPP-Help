
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/second%20drawer/languages.dart';

class Dream extends StatefulWidget{

  final languageIndex;

  Dream(this.languageIndex);

  DreamState createState()=>DreamState();
}

class DreamState extends State<Dream>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Izincazelo Zamaphupho'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: createDream(),
        ),
      ),
      
      
          
    );
    
    

  
  }


List<Widget> createDream(){
  List<Widget> list = [];

  for(int i = 0; i < Languages.iphuphoDescription.length;i++)
    list.add(buildExpansionTiles(i));

  return list;
}

Widget buildExpansionTiles(int index)=> ExpansionTile(
  childrenPadding: EdgeInsets.only(left:30,right:30),
  title: Text(
    Languages.iphuphoDescription[index][widget.languageIndex],
    style: TextStyle(
      color: Colors.blue,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [ 
    Text(
      Languages.iphuphoMeaning[index][widget.languageIndex],
      style: TextStyle(
        color: Colors.orange,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],

  onExpansionChanged: (isExpanded){

  },
);
  
}

