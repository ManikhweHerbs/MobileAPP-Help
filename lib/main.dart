import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:manikhwe_herbs/widgets/entrance/login.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  Stripe.publishableKey = 'pk_test_51Kdw2rHBLGVjKD12zzNrEYgoZoojCS0uRh2s3Jy5nbMxYaFNx9S2icJh1X4ZUp6llnJTHXeDZHVbmrBrnIIrUg8G00MkDjU2m5';
  Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
  Stripe.urlScheme = 'flutterstripe';
  await Stripe.instance.applySettings();

  runApp(const MyApp());
}

// payment_screen.dart
class PaymentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CardField(
            onCardChanged: (card) {
              print(card);
            },
          ),
          TextButton(
            onPressed: () async {
              // create payment method
              final paymentMethod =
                  await Stripe.instance.createPaymentMethod(PaymentMethodParams.card());
            },
            child: Text('pay'),
          )
        ],
      ),
    );
  }
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
      home: /*PaymentScreen()*/Login(),  
        
    );
  }

  
}

