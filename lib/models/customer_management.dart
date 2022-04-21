import 'order_management.dart';

class Customer{
  final String phoneNumber;
  
  final List<Order> _orders = [];
  final int languageIndex;

  Customer(this.phoneNumber,this.languageIndex);

  void addOrder(Order order){_orders.add(order);}

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
      'languageIndex': languageIndex,
    };
  }
}