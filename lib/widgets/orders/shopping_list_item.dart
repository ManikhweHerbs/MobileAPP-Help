import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/product_management.dart';

typedef CartChangedCallback = Function(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  
  final Product product;
  final int productIndex;
  final bool inCart;
  final CartChangedCallback onCartChanged;
  
  
  ShoppingListItem({
    required this.product,
    required this.inCart,
    required this.productIndex,
    required this.onCartChanged,
  }) : super(key: ObjectKey(product));


  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different
    // parts of the tree can have different themes.
    // The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return inCart //
        ? Colors.blue
        : Theme.of(context).primaryColor;
  }

  Color _getHeartColor() {
    

    return inCart //
        ? Colors.pink
        : Colors.grey;
  }


  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  String _findCorrespondingLetter(){
    String letter;
    switch(productIndex%26 + 1){
      case 1 : letter = 'A';break;
      case 2 : letter = 'B';break;
      case 3 : letter = 'C';break;
      case 4 : letter = 'D';break;
      case 5 : letter = 'E';break;
      case 6 : letter = 'F';break;
      case 7 : letter = 'G';break;
      case 8 : letter = 'H';break;
      case 9 : letter = 'I';break;
      case 10 : letter = 'J';break;
      case 11 : letter = 'K';break;
      case 12 : letter = 'L';break;
      case 13 : letter = 'M';break;
      case 14 : letter = 'N';break;
      case 15 : letter = 'O';break;
      case 16 : letter = 'P';break;
      case 17 : letter = 'Q';break;
      case 18 : letter = 'R';break;
      case 19 : letter = 'D';break;
      case 20 : letter = 'T';break;
      case 21 : letter = 'U';break;
      case 22 : letter = 'V';break;
      case 23 : letter = 'W';break;
      case 24 : letter = 'X';break;
      case 25 : letter = 'Y';break;
      default : letter = 'Z';
    }
    return letter;
  }

  @override
  Widget build(BuildContext context) {
    return 
      ListTile(
          onTap: () {
            onCartChanged(product, inCart);
          },
          leading: CircleAvatar(
            backgroundColor: _getColor(context),
            child: Text(_findCorrespondingLetter()),
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
          trailing: Icon(
            Icons.favorite,
            color: _getHeartColor(),
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        );
      
  }
}
