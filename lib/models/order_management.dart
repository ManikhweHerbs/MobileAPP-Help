import 'dart:developer';

import 'package:manikhwe_herbs/models/customer_management.dart';
import 'package:manikhwe_herbs/models/product_management.dart';

class Order{

  static int numberOfOrders = 0;
  static int numbeOfFailedOrders = 0;

  final DateTime requestDate = DateTime.now();
  final List<Product> products;
  final DateTime deliveryDate;
  final String address;
  final Customer customer;
  bool isDelivered = false;
  bool isPaid = false;
  final double totalAmount;

  // Version 2
  //static int orderID = 0; // Suppose to be a generated value.
  
  Order(
  {
    required this.totalAmount,
    required this.products,
    required this.address,
    required this.deliveryDate,
    required this.customer
  }){
    numberOfOrders++;
  }

  /*Order.fromJason(Map<String,dynamic> json){

  }*/

  Map<String, dynamic> toJson() {
    return {
      'request_date': requestDate.day.toString() + '-' + requestDate.month.toString() + '-' + requestDate.year.toString(),
      'delivery_date': deliveryDate.day.toString() + '-' + deliveryDate.month.toString() + '-' + deliveryDate.year.toString(),
      'total_amount': totalAmount,
      //'products': products[0].toMap(),
      'delivery_address': address,
      'customer': customer.toMap(),
      'is_paid': isPaid,
      'is_delivered': isDelivered
      //'order_id': ++orderID
    };
  }

  @override
  String toString(){
    return deliveryDate.toString() + ' ' + products.toString();
  }

  // App version 2
  Map<String, dynamic> ConvertProductToMap() {

    Map<String, dynamic> map = new Map(); 

    for (var product in products) { 
      map.addAll(product.toJson());
    } 
    return map;
  }

  

  void setIsDelivered(bool isDelivered){
    this.isDelivered = isDelivered;
  }

  double orderTotalPrice(){

    double sum = 0;

    for(int itemIndex = 0; itemIndex < products.length;itemIndex++){
      sum += products[itemIndex].price;
    }

    return sum;
  }
}