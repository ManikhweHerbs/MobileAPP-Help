import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/product_management.dart';

typedef OrderChangedCallback = Function(Product product);

class BoughtListItem extends StatelessWidget {
  
  final Product product;
  final int productIndex;
  final OrderChangedCallback onOrderChanged;
  
  BoughtListItem({
    required this.onOrderChanged,
    required this.product,
    required this.productIndex,
    
  }) : super(key: ObjectKey(product));

  @override
  Widget build(BuildContext context) {
    return 
      ListTile(
          onTap: () {
            onOrderChanged(product);
          },
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: Text('R${product.price.toInt()}'),
          ),
          title: 
            Text(
              product.name +  ' [${product.type}]',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          subtitle: 
            Text(
              product.findPurpose().toString() + ' '  + product.howToUse(),
              overflow:TextOverflow.visible,
              textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.justify,
              softWrap: true,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            
          dense: false,
          trailing: const Icon(
            Icons.delete,
            color: Colors.red,
            size: 24.0,
            semanticLabel: 'Remove Item',
          ),
        );
      
  }
}
