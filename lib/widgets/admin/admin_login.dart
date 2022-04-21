import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/admin/order_view.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';


class AdminLogin extends StatefulWidget {
  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {

  String countryCode = '+27';

  @override
  Widget build(BuildContext context) {
    
    //final _formKey = GlobalKey<FormState>();
    TextEditingController _passwordNumberController = TextEditingController();


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
                
                Padding(
                  
                  padding: const EdgeInsets.only(
                    top:0,
                    right:50,
                    left: 50,
                  ),   
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: _passwordNumberController,
                    onSaved: (value){
                      _passwordNumberController.text= value!;
                    },
                    
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    
                    
                    textInputAction: TextInputAction.done,
                    cursorColor: Colors.blue,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: 'Enter Your Password',
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
                    if(OrderView.isMember(_passwordNumberController.text)){
                      Navigator.of(context).pop();
                
                      Navigator.of(context).push(
                        CustomPageRoute(child: OrderView(password: _passwordNumberController.text)
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