import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/entrance/login.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // C:\Dart SDK\dartsdk-windows-x64-release\dart-sdk
  // This widget is the root of your application. Lwandile Ganyile
  @override
  Widget build(BuildContext context) {

    /*
     pub global run rename --bundleId com.onatcipli.networkUpp
     pub global run rename --appname "Network Upp"
     */

    //   keytool -genkey -v -keystore c:\Users\Test\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload


    return MaterialApp(
      title: 'Manikhwe Herbs', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: Login(),  
        
    );
  }

  
}

