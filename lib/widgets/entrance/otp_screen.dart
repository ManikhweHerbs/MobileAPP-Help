import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'languages.dart';

class OTPScreen extends StatefulWidget{

  final String phoneNumber;
  final String countryCode;

  const OTPScreen({Key? key, required this.phoneNumber,required this.countryCode}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
  

}

class _OTPScreenState extends State<OTPScreen>{

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  String? verificationCode;

  @override
  void initState(){
    
    super.initState();
    verifyPhoneNumber();
  }

  verifyPhoneNumber() async{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${widget.countryCode}${widget.phoneNumber.substring(1)}', 
      verificationCompleted: (PhoneAuthCredential credential) async{
        await FirebaseAuth.instance.signInWithCredential(credential)
        .then((value){
          if(value.user != null){
            Navigator.of(context).pop();
            Navigator.of(context).push(
              CustomPageRoute(child: LanguagesPage(phoneNumber: '${widget.countryCode}${widget.phoneNumber.substring(1)}')),
            );
          }
        });
      }, 
      verificationFailed: (FirebaseAuthException e){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message.toString()),
            duration: const Duration(seconds: 5),
          )
        );
      }, 
      codeSent: (String verificationId, int? refreshToken){
        setState(() {
          verificationCode = verificationId;
        });
      }, 
      codeAutoRetrievalTimeout: (String verificationId){
        setState(() {
          verificationCode = verificationId;
        });
      }, 
      timeout: const Duration(seconds:5),
    );
  }

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.amber,
      )
    );

  @override
  Widget build(BuildContext context) {

    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: const Color.fromRGBO(0, 0, 200, 0.5)/*Color.fromRGBO(235, 236, 237, 1)*/,
      borderRadius: BorderRadius.circular(5.0), 
    );
    
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('OTP Verification'),
      ),
      body:Column(
        children: [
          Container(
            
            margin: const EdgeInsets.only(top:20),
            child: Center(
              child: Text(
                  'Verifying : ${widget.countryCode}${widget.phoneNumber.substring(1)}',
                  style: const TextStyle(
                    color: Colors.blue, 
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: PinPut(
              //autofocus: true,
              fieldsCount: 6,
              withCursor: true,
              textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
              eachFieldWidth: 35.0,
              eachFieldHeight: 55.0,
              onSubmit: (pin) async{
                try{
                  
                  await FirebaseAuth.instance.signInWithCredential(
                    PhoneAuthProvider.credential(
                      verificationId: verificationCode!, smsCode: pin))
                      .then((value) => {
                        
                        if(value.user != null){
                          
                          Navigator.of(context).push(
                            CustomPageRoute(child: LanguagesPage(phoneNumber: '${widget.countryCode}${widget.phoneNumber.substring(1)}',)),
                          )
                        }
                      });
                  
                }catch(e){
                  FocusScope.of(context).unfocus();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid OTP'),
                      duration: Duration(seconds: 30),
                    )
                  );
                }
              },
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration,
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.fade, // Try rotation too
            ),
          ),
        ],
      )
    );
  }
  
}