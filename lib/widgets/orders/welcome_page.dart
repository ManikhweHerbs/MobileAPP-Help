import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/entrance/login.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';

class WelcomeScreen extends StatelessWidget{

  final int languageIndex;

  const WelcomeScreen({Key? key, required this.languageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:Text(Languages.appBarTitle[languageIndex]),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child:Center(
          child:Padding(
            padding: const EdgeInsets.all(20),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    Languages.successReport[languageIndex],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18, 
                      overflow: TextOverflow.clip,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: Image.asset("assets/logo.jpg",fit: BoxFit.contain,),
                ),
                
                
                const SizedBox(
                  height: 10,
                ),
                ActionChip(
                  backgroundColor: Colors.blue,
                  
                  avatar: const CircleAvatar(

                    child: Icon(Icons.logout,),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  label:const Text(
                    "Logout", 
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      CustomPageRoute(
                        child: Login(),
                      )
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}

class Languages{

  static const appBarTitle = [
    'Sekuphelile'
  ];

  static const successReport = [
    'Siyakubongela Silitholile I-Order Lakho, Sizobuyela Kuwe.',
  ];
}