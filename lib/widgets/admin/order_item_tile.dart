import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/widgets/orders/shopping_list.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';

class OrderItemTile extends StatelessWidget {
  
  final String orderProduct;
  
  const OrderItemTile({required this.orderProduct, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
          padding: 
            const EdgeInsets.only(
             bottom:1
            ),   
          child: ListTile(
            tileColor: Colors.blue,
          onTap: () {
            _proceedToCart();
          },
          title: 
            Text(
              orderProduct,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            
          dense: false,
        ),
      );
      
  }

  void _proceedToCart(){

  }


}
