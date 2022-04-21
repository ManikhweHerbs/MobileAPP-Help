import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/widgets/orders/bought_list_item.dart';
import 'package:manikhwe_herbs/widgets/orders/date_picker.dart';
import 'package:manikhwe_herbs/widgets/orders/pick_up_location.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';
import 'package:manikhwe_herbs/widgets/orders/payment.dart';

class BoughtList extends StatefulWidget {
  BoughtList({required this.orderList,required this.languageIndex,required this.phoneNumber, Key? key}) : super(key: key);

  final List<Product> orderList;
  final int languageIndex;
  final String phoneNumber;
  final DatePicker datePicker =  DatePicker();
  

  // The framework calls createState the first time
  // a widget appears at a given location in the tree.
  // If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework re-uses
  // the State object instead of creating a new State object.

  @override
  _BoughtListState createState() => _BoughtListState();
}

class _BoughtListState extends State<BoughtList> {
  
  @override
  void initState() {
    // This method execute only when this state is created for the first time.
    // It get executed befor the build method.
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BoughtList oldWidget) {
    // This method will get executed whenever SeekedProduct get external data.
    // This method is called before the build method.
    super.didUpdateWidget(oldWidget);
  }
  
  void _removeProduct(Product product) {
    setState(() {

      widget.orderList.remove(product);
      
    });
  }

  double _getCost(){
    double sum = 0;

    for(int index = 0;index < widget.orderList.length;index++){
      sum += widget.orderList[index].price;
    }

    return sum;
  }

  @override
  Widget build(BuildContext context) {

    _displayDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: const Center(child: Text('Isaziso')),
            content: Text(Languages.alertDialog[widget.languageIndex]),
            backgroundColor: Colors.blue,
            titleTextStyle: const TextStyle(
              color:Colors.red, 
              fontSize: 20, 
              fontWeight: FontWeight.bold,
            ),
            contentTextStyle: const TextStyle(
              color:Colors.white, 
              fontSize: 14, 
              fontWeight: FontWeight.bold,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK', style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        );
      },
    );
  }

    return Scaffold(
      appBar: AppBar(
        title: 
        Center(
          child: Text('Pay R${_getCost()}'),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: (){
              if(widget.datePicker.text != 'Pick Delivery Date' && widget.orderList.isNotEmpty){
                Navigator.of(context).push(
                  
                  CustomPageRoute(
                    child: PickUpLocation(totalAmount: _getCost(),
                      languageIndex: widget.languageIndex,
                      phoneNumber: widget.phoneNumber,
                      products: widget.orderList,
                      deliveryDate: widget.datePicker.deliveryDate,)
                  )
                
                );
              }
              else{
                _displayDialog(context);
              }
              
            },
            tooltip: 'Khokha',
            icon: const Icon(Icons.arrow_forward),
            iconSize: 30.0,
            color:Colors.white
          ),
        ],      
      ),
      body: 
        Column(children: [
          Expanded(
          child:ListView(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            children: widget.orderList.map((Product product) {
              return BoughtListItem(
                product: product,
                productIndex: widget.orderList.indexOf(product)+1,
                onOrderChanged: _removeProduct,
              );
            }).toList(),
          ),
        ),
        widget.datePicker,
        ],
        )
        
        
    );
  }
}

class Languages{

  static final alertDialog = [
    'Akube Nemithi/Neziwasho Ozikhethile Kanye Nosuku Esizokulethela Ngalo Impahla Yakho.'
  ];
}