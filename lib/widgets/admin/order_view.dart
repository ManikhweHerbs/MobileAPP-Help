import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/animals.dart';
import 'package:manikhwe_herbs/models/customer_management.dart';
import 'package:manikhwe_herbs/models/order_management.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/models/trees.dart';
import 'package:manikhwe_herbs/models/basic_tile.dart';
import 'package:manikhwe_herbs/widgets/admin/basic_tile_widger.dart';
import 'package:manikhwe_herbs/widgets/admin/order_item_tile.dart';

class OrderView extends StatefulWidget{

  static const String type1Admin = 'qwerty321';
  int pageIndex = 0;
  

  OrderView({required String password}){
    switch(password){
      case type1Admin: pageIndex = 1;
    }
  }

  

  static bool isMember(String password){
    return password==OrderView.type1Admin;
  }

  @override 
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView>{

  late DatabaseReference databaseReference;
  List<String> orderAsStrings = [];

  @override
  void initState(){
    super.initState();
    databaseReference = FirebaseDatabase.instance.ref();
    orderAsStrings.clear();
    _readDatabase();
    
  }

  void _readDatabase(){
    databaseReference.once().then((value){
      DataSnapshot snapshot = value.snapshot;
      // There are two children namely 'orders' and 'products'.
      List<DataSnapshot> children = snapshot.children.toList();
      List<DataSnapshot> orders = children[0].children.toList();
      List<DataSnapshot> products = children[1].children.toList();

      for(int i =0;i < orders.length;i++){ 
        orderAsStrings.add(orders[i].value.toString());
        orderAsStrings.add(products[i].value.toString());
        log(orders[i].value.toString()+'\n');
        log(products[i].value.toString()+'\n');
        
      }

    });

  }

  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title: Text('Order View'),
      centerTitle:true,
    ),
    body:
      ListView(     
        
        children: (widget.pageIndex==1)?orderAsStrings.map((orderOrProduct)=>OrderItemTile(orderProduct:orderOrProduct)).toList():[],
        /*
        ListView(      
        children: (widget.pageIndex==1)?createView().map((tile)=>BasicTileWidget(tile: tile)).toList():[],*/
    ),
  );

  List<BasicTile> createView(){

    List<BasicTile> tiles =<BasicTile>[];

    List<Order> orders = [];

    Order order1 = Order(
      totalAmount: 347.5,
      customer: Customer('0717572711',1),
      address: 'Dumsi',
      deliveryDate:DateTime.now(),
      products: <Product>[Akondle(1), Syamthanda(1),Lumbanxeba(1)]
    );

    Order order2 = Order(
      totalAmount: 2077.5,
      customer: Customer('0717576511',1),
      address: 'Dunbar',
      deliveryDate:DateTime.now(),
      products: <Product>[Vukanduku(1), MyNo1(1),Mhloniphe(1)]
    );

    orders.add(order1);
    orders.add(order2);
    

    for(int i = 0;i < orders.length;i++){ 
      BasicTile orderBasicTile = BasicTile(title: orders[i].address + ' R' + orders[i].totalAmount.toString() + ' ' + orders[i].deliveryDate.toString().substring(0,10),tiles:[]);
      for(int j = 0; j < orders[i].products.length;j++){

        BasicTile productBasicTile = BasicTile(title: orders[i].products[j].name + ' R' + orders[i].products[j].price.toString(),tiles:[]);
        

        if(orders[i].products[j].type=='Umuthi'){
         
          productBasicTile.tiles.add(BasicTile(title:'Result',tiles:[BasicTile(title:(orders[i].products[j] as Umuthi).findPurpose().toString(),tiles:[])]));
          productBasicTile.tiles.add(BasicTile(title:'How To Use',tiles:[BasicTile(title:(orders[i].products[j] as Umuthi).howToUse(),tiles:[])]));
          
          BasicTile amakhubaloIngredientHolderBasicTile = BasicTile(title: 'Trees Ingredient',tiles:[]);
          List<Tree> amakhubalo = (orders[i].products[j] as Umuthi).amakhubalo;
          for(int k = 0; k < amakhubalo.length;k++){
            BasicTile khubaloBasicTile = BasicTile(title: amakhubalo[k].name + ' ' + amakhubalo[k].part,tiles:[]);
            amakhubaloIngredientHolderBasicTile.tiles.add(khubaloBasicTile);
          }
          productBasicTile.tiles.add(amakhubaloIngredientHolderBasicTile);

          BasicTile izilwaneIngredientHolderBasicTile = BasicTile(title: 'Animals Ingredient',tiles:[]);
          Set<Animal> izilwane = (orders[i].products[j] as Umuthi).animals;
          for(Animal animal in izilwane){
            BasicTile isilwaneBasicTile = BasicTile(title: animal.zuluName,tiles:[]);
            izilwaneIngredientHolderBasicTile.tiles.add(isilwaneBasicTile);
          } 
          productBasicTile.tiles.add(izilwaneIngredientHolderBasicTile);

          BasicTile extrasIngredientHolderBasicTile = BasicTile(title: 'Extras Ingredient',tiles:[]);
          List<String> extras = (orders[i].products[j] as Umuthi).extras;
          for(int k = 0; k < extras.length;k++){
            BasicTile extraBasicTile = BasicTile(title: extras[k],tiles:[]);
            extrasIngredientHolderBasicTile.tiles.add(extraBasicTile);
            
          }
          productBasicTile.tiles.add(extrasIngredientHolderBasicTile);
        }
        else{
      
          productBasicTile.tiles.add(BasicTile(title:'Result',tiles:[BasicTile(title:(orders[i].products[j] as Isiwasho).findPurpose().toString(),tiles:[])]));
          productBasicTile.tiles.add(BasicTile(title:'How To Use',tiles:[BasicTile(title:(orders[i].products[j] as Isiwasho).howToUse(),tiles:[])]));
          List ingredients = (orders[i].products[j] as Isiwasho).indredients;
          BasicTile ingredientHolderBasicTile = BasicTile(title: 'Ingredient',tiles:[]);
          for(int i = 0; i < ingredients.length;i++){
            BasicTile ingredientBasicTile = BasicTile(title: ingredients[i],tiles:[]);
            ingredientHolderBasicTile.tiles.add(ingredientBasicTile);
          }
          productBasicTile.tiles.add(ingredientHolderBasicTile);
        }
        
        orderBasicTile.tiles.add(productBasicTile);
      }
      tiles.add(orderBasicTile);

    }
    return tiles;

  }
}

