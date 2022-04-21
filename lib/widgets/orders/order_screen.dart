import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/widgets/orders/bought_list.dart';



class OrderScreen extends StatelessWidget {

  final String phoneNumber;
  final List<Product> boughtItems;
  final int languageIndex;

  const OrderScreen(
    {
      Key? key, 
      required this.languageIndex,
      required this.phoneNumber,
      required this.boughtItems
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: BoughtList(
          orderList: boughtItems,
          languageIndex:languageIndex, 
          phoneNumber: phoneNumber
        ),    
      ),
    );   
  }

  
}