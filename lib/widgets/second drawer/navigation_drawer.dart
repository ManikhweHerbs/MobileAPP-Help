import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manikhwe_herbs/widgets/second%20drawer/dream.dart';
import 'package:manikhwe_herbs/widgets/second%20drawer/languages.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';

import '../../marketing_department/sales_person_widget.dart';

class NavigationDrawerWidger extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal:20);
  final languageIndex;

  NavigationDrawerWidger(this.languageIndex);

  @override
  Widget build(BuildContext context){
    return Drawer(
      
      child: Material(
        color: const Color.fromRGBO(50,75,180,1),
        child: ListView(
          padding: padding,
          children: [
            const SizedBox(height: 8),
            buildMenuItem(
              text: Languages.amaphupho[languageIndex],
              icon: FontAwesomeIcons.bed,
              onClick: ()=>selectedItem(context, 0),
            ),
            const SizedBox(height: 8),
            buildMenuItem(
              text: 'Promotions',
              icon: FontAwesomeIcons.bullhorn,
              onClick: ()=>selectedItem(context, 2),
            ),


            const SizedBox(height: 8),
            const Divider(color: Colors.white70),
            
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout,
              onClick: ()=>selectedItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    {
      required String text,
      required IconData icon,
      VoidCallback ? onClick,
    }
  ){
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,style:TextStyle(color: color)),
      hoverColor: Colors.white70,
      onTap: onClick,
    );
  }

  void selectedItem(BuildContext context, int itemIndex){
    Navigator.of(context).pop();
    switch(itemIndex){
      case 0: Navigator.of(context).push(CustomPageRoute(child: Dream(languageIndex)),);break;
      case 1: Navigator.of(context).push(CustomPageRoute(child: SalesPersonWidget(languageIndex:languageIndex)),);break;  
    }
  }
  
}