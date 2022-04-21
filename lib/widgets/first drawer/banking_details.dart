import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BankingDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final padding = EdgeInsets.symmetric(horizontal:20);
  
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Banking Details',),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Center(
      child: ListView(
          padding: padding,
          children: [
            const SizedBox(height: 48),
            const SizedBox(height: 4),
            buildMenuItem(
              text: 'Bank Name : First National Bank(FNB)',
              icon: FontAwesomeIcons.handshake,
              
            ),

            buildMenuItem(
              text: 'Account Holder : Manikhwe Herbs (PTY) LTD',
              icon: Icons.account_circle_sharp, 
              
            ),
            
            buildMenuItem(
              text: 'Account Number : 62939296423',
              icon: FontAwesomeIcons.moneyCheckDollar,
              
            ),
            

            buildMenuItem(
              text: 'Send Proof Of Payment Via WhatsApp To 0656061459/0711494472',
              icon: Icons.whatsapp,
              
            ),

            buildMenuItem(
              text: 'Send Proof Of Payment Via Facebook To Lwandile Ganyile',
              icon: Icons.facebook,
              
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