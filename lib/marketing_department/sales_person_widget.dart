
import 'dart:developer' as dev;
import 'dart:math';


import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manikhwe_herbs/marketing_department/sales_person.dart';
import 'package:manikhwe_herbs/marketing_department/welcome_page.dart';

import '../widgets/page_navigation.dart';


class SalesPersonWidget extends StatefulWidget{

  int languageIndex;

  SalesPersonWidget({required this.languageIndex});

  @override
  State<StatefulWidget> createState() {
    return SalesPersonState();
  }

  
}

class SalesPersonState extends State<SalesPersonWidget>{

  final database = FirebaseDatabase.instance.ref();

  TextEditingController nameTextEditingController = TextEditingController();
  InputDecoration nameInputDecoration = const InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.user),
                      //hintText: 'Enter Your Name',
                       
                    );
  
  TextEditingController surnameTextEditingController = TextEditingController();
  InputDecoration surnameInputDecoration = InputDecoration(
    prefixIcon: Icon(FontAwesomeIcons.user),
    //hintText: 'Enter Your Surname'
  );

  TextEditingController phoneNumberTextEditingController = TextEditingController();
  InputDecoration phoneNumberInputDecoration = InputDecoration(
    prefixIcon: Icon(Icons.phone),
    //hintText: 'Enter Your Phone Number'
  );
  
  TextEditingController identityNumberTextEditingController = TextEditingController();
  InputDecoration identityNumberInputDecoration = InputDecoration(
     prefixIcon: Icon(FontAwesomeIcons.idCard),
    //hintText: 'Enter Your Identity Number'
  );
  
  TextEditingController accountNumberTextEditingController = TextEditingController();
  InputDecoration accountNumberInputDecoration = InputDecoration(
    prefixIcon: Icon(FontAwesomeIcons.creditCard),
    //hintText: 'Enter Your Account Number'
  );

  TextStyle textStyle = TextStyle(
    color: Colors.blue,
    fontSize: 16,

  );
  


  @override
  Widget build(BuildContext context) {

    final promotersReference = database.child('/promoters');


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Promotion Registration',
          style: TextStyle(
            fontSize: 16.0, 
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0.0,
         
      ),
      body: 
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
          child:Column(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
              'Manikhwe Herbs (PTY) LTD',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              
            ),
            ),
            
            Text(
              'First Name',
              style: textStyle,
              
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/8,
                right: MediaQuery.of(context).size.width/8,
                
              ),
              child: TextFormField(
                
                controller: nameTextEditingController,
                keyboardType: TextInputType.name,
                decoration: nameInputDecoration,
                textInputAction: TextInputAction.next,
                onSaved: (name){
                  nameTextEditingController.text = name!;
                },
              ),
            ),
            
            Text(
              'Last Name',
              style: textStyle,
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/8,right: MediaQuery.of(context).size.width/8),
              child:TextFormField(
                controller: surnameTextEditingController,
                keyboardType: TextInputType.name,
                decoration: surnameInputDecoration,
                textInputAction: TextInputAction.next,
                onSaved:(surname){
                  surnameTextEditingController.text = surname!;
                }
              ),
            ),

            Text(
              'Phone Number',
              style: textStyle,
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/8,right: MediaQuery.of(context).size.width/8),
              child:TextFormField(
                controller: phoneNumberTextEditingController,
                keyboardType: TextInputType.phone,
                decoration: phoneNumberInputDecoration,
                textInputAction: TextInputAction.next,
                onSaved: (phoneNumber){
                  phoneNumberTextEditingController.text = phoneNumber!;
                }
              ),
            ),
            Text(
              'Identity Number',
              style: textStyle,
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/8,right: MediaQuery.of(context).size.width/8),
              child:TextFormField(
                controller: identityNumberTextEditingController,
                keyboardType: TextInputType.number,
                decoration: identityNumberInputDecoration,
                textInputAction: TextInputAction.next,
                onSaved: (identityNumber){
                  identityNumberTextEditingController.text = identityNumber!;
                },
              ),
            ),
            Text(
              'Account Number',
              style: textStyle,
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/8,right: MediaQuery.of(context).size.width/8),
              child:TextFormField(
                controller: accountNumberTextEditingController,
                keyboardType: TextInputType.number,
                decoration: accountNumberInputDecoration,
                textInputAction: TextInputAction.done,
                onSaved:(accountNumber){
                  accountNumberTextEditingController.text = accountNumber!;
                }
              ),
            ),
            Container(
                width:MediaQuery.of(context).size.width/1.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child:ElevatedButton(
              child: Text('Register'),
              onPressed: () async {

                String name = nameTextEditingController.text;
                String surname = surnameTextEditingController.text;
                String phoneNumber = phoneNumberTextEditingController.text;
                String southAfricanIDNumber = identityNumberTextEditingController.text;
                String accountNumber = accountNumberTextEditingController.text;


                if(
                // Make Sure All Fields Are Filled.
                name.isNotEmpty && surname.isNotEmpty 
                && phoneNumber.isNotEmpty && accountNumber.isNotEmpty
                && southAfricanIDNumber.isNotEmpty
                
                // Make Sure Numbers Aren't Accepted Where They Are Not Allowed.
                && !name.contains(RegExp('r[0-9]'))
                && !surname.contains(RegExp('r[0-9]'))

                // Make Sure Alphabets Aren't Accepted Where They Are Not Allowed.
                && !phoneNumber.contains(RegExp('r[A-Z]',caseSensitive: false))
                && !southAfricanIDNumber.contains(RegExp('r[A-Z]',caseSensitive: false))
                && !accountNumber.contains(RegExp('r[A-Z]',caseSensitive: false))
                
                // Make Sure The Number Of Digits Is Correct.
                && phoneNumber.length==10
                && southAfricanIDNumber.length==13

                              
                ){
                  
                  SalesPerson salesPerson = SalesPerson(
                    name:name,
                    surname: surname,
                    phoneNumber: phoneNumber,
                    southAfricanIDNumber: southAfricanIDNumber,
                    accountNumber: accountNumber,
                    generatedRefId: _generateRefID(3),
                  );

                  try{
                    DatabaseReference promoterReference = promotersReference.push();
                    await promoterReference.set(salesPerson.toJson());

                    Navigator.of(context).pop();
                        Navigator.of(context).push(
                          CustomPageRoute(
                            child: WelcomeScreen(
                              generatedRefId: salesPerson.generatedRefId,
                              languageIndex: widget.languageIndex,
                            ),
                          ),
                        );

                  }catch(error){
                    dev.log('Order Couldn\'t Be Saved. $error');
                  }
                }

                
              }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              
            ),
            ),
          
          ]
        ),
      ),
      
    );
  }

  /* Generate 3 alphabets, check whether or not 
  there exist a sales person in the database having 
  the generated Ref ID, if yes generate another one,
  otherwise use the generated one.*/
  // Define a reusable function
String _generateRefID(int length) {
  final _random = Random();
  const _availableChars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final randomString = List.generate(length,
          (index) => _availableChars[_random.nextInt(_availableChars.length)])
      .join();

  return randomString;
}

}