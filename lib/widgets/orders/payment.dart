import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/customer_management.dart';

import 'package:manikhwe_herbs/models/order_management.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';
import 'package:manikhwe_herbs/widgets/orders/welcome_page.dart';
import 'package:firebase_database/firebase_database.dart';


String backendUrl = 'https://github.com/ManikhweSchool';
// Set this to a public key that matches the secret key you supplied while creating the heroku instance
String paystackPublicKey = 'pk_live_75bfd351fbf8a576ae20d99413ba999391f65f49';
const String appName = 'Help';


class PaymentScreen extends StatefulWidget {
  final String phoneNumber;
  final List<Product> products;
  final int languageIndex;
  final double totalAmount;
  final DateTime deliveryDate;
  final String address;

  const PaymentScreen({
    Key? key,
    required this.languageIndex,
    required this.phoneNumber,
    required this.products,
    required this.totalAmount,
    required this.deliveryDate,
    required this.address,
  }) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _verticalSizeBox = const SizedBox(height: 20.0);
  final _horizontalSizeBox = const SizedBox(width: 10.0);

  bool _inProgress = false;
  String? _cardNumber;
  String? _cvv;
  int? _expiryMonth;
  int? _expiryYear;

  final database = FirebaseDatabase.instance.ref();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width / 1.2;
    double buttonBorderRadius = 30;

    //GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final ordersReference = database.child('/orders');
    final productsReference = database.child('/products');

    bool _isLoading = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Collection Address'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: (MediaQuery.of(context).size.width - buttonWidth) / 2,
              right: (MediaQuery.of(context).size.width - buttonWidth) / 2,
              bottom: 10,
              top: (MediaQuery.of(context).size.width - buttonWidth) / 2,
            ),
            child: Image.asset('assets/pep2.jpg', fit: BoxFit.contain),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: (MediaQuery.of(context).size.width - buttonWidth) / 2,
              right: (MediaQuery.of(context).size.width - buttonWidth) / 2,
              bottom: 10,
            ),
            child: Text(
              widget.address,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: (MediaQuery.of(context).size.width - buttonWidth) / 2,
              right: (MediaQuery.of(context).size.width - buttonWidth) / 2,
              bottom: 10,
            ),
            child: Text(
              Languages.chargeAlert1[widget.languageIndex] +
                  'R${widget.totalAmount} ' +
                  Languages.chargeAlert2[widget.languageIndex],
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
              width: buttonWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(buttonBorderRadius),
                color: Colors.white,
              ),
              child:

                Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () async {
                      setState((){
                        _isLoading = true;
                      });

                      Future.delayed(Duration(seconds: 5),(){
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          CustomPageRoute(
                            child: WelcomeScreen(
                             
                              languageIndex: widget.languageIndex,
                            ),
                          ),
                        );

                      });
                      
                      Customer customer =
                          Customer(widget.phoneNumber, widget.languageIndex);
                      Order order = Order(
                        totalAmount: widget.totalAmount,
                        address: widget.address,
                        customer: customer,
                        products: widget.products,
                        deliveryDate: widget.deliveryDate,
                      );

                      customer.addOrder(order);

                      try {
                        DatabaseReference orderReference =
                            ordersReference.push();
                        String? productsId = orderReference.key;

                        // If the app is offline this await call won't finish until the right is confirmed by the server.
                        await orderReference.set(order.toJson());
                        //.then((_)=>log('Real Time 1 ' + order.orderTotalPrice().toString() + ' ' + order.products.toString()));

                        await productsReference
                            .child(productsId.toString())
                            .push()
                            .set(jsonEncode(order.products));
                        //.then((_)=>log('Real Time 2' + order.products.asMap().toString()));
                      } catch (error) {
                        log('Order Couldn\'t Be Saved. $error');
                      }
                    },
                    child: _isLoading?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Saving Order...'),
                        CircularProgressIndicator(color:Colors.white,)
                      ],
                    ):const Text('Request Delivery'),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  _displayDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(
                child: Text(
                    Languages.unsuccessfulAlertTitle[widget.languageIndex])),
            content:
                Text(Languages.unsuccessfulAlertContent[widget.languageIndex]),
            backgroundColor: Colors.blue,
            titleTextStyle: const TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            contentTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}

class Languages {
  static final unsuccessfulAlertTitle = ['Qaphela'];
  static final unsuccessfulAlertContent = [
    'Shiya I-Address Yalapho Ofuna Ukulethelwa Khona Impahla Yakho.'
  ];

  static final chargeAlert1 = ['Ukuze Sikulethele Iorder Lakho, Fanele Uyolikhokhela U-('];

  static final chargeAlert2 = [
    ' + R60 Wokudiliva) E-FNB Kule Account Number 62939296423 Kungaze Kudlule Usuku Olikhethile.'
  ];

}
