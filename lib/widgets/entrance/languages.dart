
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/first drawer/navigation_drawer_widget.dart';
import 'package:manikhwe_herbs/widgets/entrance/languages_list_item.dart';

import '../../models/language_management.dart';

class LanguagesPage extends StatelessWidget{

  final String phoneNumber;

  const LanguagesPage({required this.phoneNumber,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    
    return 
    Scaffold(
      drawer: NavigationDrawerWidger(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        
        centerTitle: true,
        title: 
        const Text(
          'Select Your Language',
          style: TextStyle(
            fontSize: 16.0,
          ),
          textAlign: TextAlign.end,
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: (){
              
            },
            tooltip: 'Search Language',
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color:Colors.white
          ),
        ],
      ),
      
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: LanguagesTable.languages.map((String language) {
          return LanguagesListItem(
            context,
            language,
            LanguagesTable.languages.indexOf(language),
            phoneNumber: phoneNumber,
          );
        }).toList(),
      )
    );
    
  }
}
