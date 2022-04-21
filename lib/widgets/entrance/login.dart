import 'dart:ui';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/entrance/otp_screen.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';

import 'languages.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String countryCode = '+27';

  @override
  Widget build(BuildContext context) {
    
    //final _formKey = GlobalKey<FormState>();
    TextEditingController _phoneNumberController = TextEditingController();


    double buttonWidth = MediaQuery.of(context).size.width/1.2;
    double buttonBorderRadius = 30;

    

    return 
      Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                
                Padding(
                  
                  padding: const EdgeInsets.only(
                    bottom:0,
                    right:50,
                    left: 50,
                    top: 5, // version 2 changes
                  ),   
                  child:
                    SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    height: 150,
                    child: 
                      Column(
                        //mainAxisSize: MainAxisSize.min, version 2 changes
                        children: [
                          const Text(
                            'Manikhwe Herbs',
                             style: 
                              TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            textAlign: TextAlign.end,
                          ),
                          Image.asset('assets/logo.jpg'/*,fit:BoxFit.contain*/),
                      ],
                    ) 
                  ),
                ),
                SizedBox( 
                width:400,
                height:60,
                child:
                CountryCodePicker(
                  enabled: false,
                  onChanged: (country){
                    setState(){
                      countryCode = country.dialCode!;
                    }
                  },
                  initialSelection: "ZA",
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  favorite:const ["+27","ZA"],

                ),
              ),
                
                Padding(
                  
                  padding: const EdgeInsets.only(
                    top:0,
                    right:50,
                    left: 50,
                  ),   
                  child: TextFormField(
                    autofocus: true,
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    controller: _phoneNumberController,
                    onSaved: (value){
                      _phoneNumberController.text= value!;
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return ("Please Enter Your Phone Number.");
                      }

                      //String pattern = r'^([0][6|7|8][0-9]){10}$';
                      //RegExp regExp = RegExp(pattern);

                      if(value.length!=10 || (!value.startsWith('06') && !value.startsWith('07') && !value.startsWith('08'))){
                        return ("Invalid Phone Number.");
                      }
                      

                    },
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    
                    
                    textInputAction: TextInputAction.done,
                    cursorColor: Colors.blue,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Enter Your Cell Number',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        ),
                      ),
                    ),
                  ),
                ),
              
              Container(
                width:buttonWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(buttonBorderRadius),
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  
                  onPressed: (){
                    if(_phoneNumberController.text.length==10 && 
                     (_phoneNumberController.text.startsWith('06') ||
                     _phoneNumberController.text.startsWith('07') ||
                     _phoneNumberController.text.startsWith('08'))){
                      Navigator.of(context).pop();
                      /*Navigator.of(context).push(
                          CustomPageRoute(
                            child: OTPScreen(phoneNumber: _phoneNumberController.text,countryCode: countryCode,)
                          ),
                      );*/
                      
                      Navigator.of(context).push(
                        CustomPageRoute(child: LanguagesPage(phoneNumber: _phoneNumberController.text)
                        ),
                      );
                    }
                    
                  }, 
                  child: const Text('Next'),
                ),
              ),

              
              ],
            ),
          ),
        ),
      );   
    
  }

  
}