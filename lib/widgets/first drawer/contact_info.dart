import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final padding = EdgeInsets.symmetric(horizontal:20);
  
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact Details',),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Center(
      child: ListView(
          padding: padding,
          children: [
            const SizedBox(height: 48),
            const SizedBox(height: 4),
            buildMenuItem(
              text: 'Address : xxxxxxxxxxxxxxxxxxxxx',
              icon: Icons.location_on,
              
            ),

            buildMenuItem(
              text: 'WhatsApp Sales Representative - [0656061459\0711494472]',
              icon: Icons.whatsapp_sharp,
              
            ),

            buildMenuItem(
              text: 'Facebook Sales Representative - [Lwandile Ganyile]',
              icon: Icons.facebook_sharp,
              
            ),
            
            /*buildMenuItem(
              text: 'Book A Consultant For Free - [0312323212]',
              icon: Icons.people,
              
            ),*/
            
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    {
      required String text,
      required IconData icon,
      
    }
  ){
    final color = Colors.blue;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,style:TextStyle(color: color)),
      hoverColor: Colors.white70,
      
    );
  }
  
}