import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/basic_tile.dart';
import 'package:manikhwe_herbs/models/basic_tile.dart';
import 'package:manikhwe_herbs/models/customer_management.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/widgets/orders/location_basic_tile.dart';
import 'package:manikhwe_herbs/widgets/orders/payment.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';

class PickUpLocation extends StatefulWidget{

  final String phoneNumber;
  final List<Product> products;
  final int languageIndex;
  final double totalAmount;
  final DateTime deliveryDate;
  String pepAddress = '';

  PickUpLocation(
    {
      Key? key, 
      required this.languageIndex,
      required this.phoneNumber,
      required this.products,
      required this.totalAmount,
      required this.deliveryDate,
    }
  ) : super(key: key);

  @override 
  _PickUpLocationState createState() => _PickUpLocationState();
}

class _PickUpLocationState extends State<PickUpLocation>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      centerTitle:true,
      flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pep1.jpg'),
                  fit: BoxFit.fill
              )
          ),
        ),
      
      ),
      body:ListView(
        children: createView().map((tile)=>LocationBasicTileWidget(
          tile: tile,
          pepAddress: proceed
          )
        ).toList(),
      ),
    );

  }

  void proceed(String title){
    widget.pepAddress=title;

    Navigator.of(context).push(
      CustomPageRoute(
        child:
        PaymentScreen(
          address: widget.pepAddress,
          totalAmount: widget.totalAmount,
          languageIndex: widget.languageIndex,
          phoneNumber: widget.phoneNumber,
          products: widget.products,
          deliveryDate: widget.deliveryDate,
          ),
         
      )
    );

  }

  List<BasicTile> createView(){

    List<BasicTile> tiles = [];
    
    BasicTile kzn = BasicTile(title: 'Kwa Zulu Natal',tiles:[
      BasicTile(title: 'Amajuba District Municipality',tiles:[
        BasicTile(title: 'Dannhauser',tiles:[
          BasicTile(title: '{PEP 0346212237} SUB 1 LOT 203 Main ST, Dannhauser, 3080',tiles:[]),
        ]),
        BasicTile(title: 'Newcastle',tiles:[ 
          BasicTile(title: '{PEP STORE 0343141069} Shop 5 Boxer Centre, Newcastle, Madadeni',tiles:[]),
          BasicTile(title: '{PEP STORE 0343128623} Shop 9 Pb Centre, 32 Kirkland Drive, Newcastle',tiles:[]),
          BasicTile(title: '{PEP STORE 0136564715} Shop 2 Terminus Plaza, Corner Allen Street & Kirkland Street, Newcastle, KwaZulu-Natal, Alberton',tiles:[]),
          BasicTile(title: '{PEP STORE 0343121423} Shop 6A-B Taxi City, Corner Allen Street & Kirkland Street, 2940 Newcastle',tiles:[]),
          BasicTile(title: '{PEP STORE 0343123138} 16 Allen Street, Newcastle, KwaZulu-Natal, Manguzi',tiles:[]),
          BasicTile(title: '{PEP STORE 0343154255}  Shop 2 Corner Allen Street & Scott Street, Newcastle, KwaZulu-Natal, Matatiele',tiles:[]),
          BasicTile(title: '{PEP STORE 0343129694} Shop G02 Woolworths Centre, 2 Scott Street, Newcastle, KwaZulu-Natal, 2940 Mokopane',tiles:[]),
          BasicTile(title: '{PEP STORE 0343122712} 22 Ayliff Street, Newcastle',tiles:[]),
          BasicTile(title: '{PEP STORE 0343128946} Shop 3-4 Village Walk, 22 Ayliff Street & 28 Harding Street, 2940 Newcastle',tiles:[]),
          BasicTile(title: '{PEP STORE 0343291266} Shop 11 Madeni Shopping Centre, Madadeni, Newcastle, 2951',tiles:[]),
          BasicTile(title: '{PEP STORE 0343291266} Shop 11 Ithala Centre, Madadeni',tiles:[]),
          BasicTile(title: '{PEP STORE 0343122249} Shop 5-6 Amajuba Mall, Corner Allen Street & Victoria Street, Newcastle, KwaZulu-Natal, Mokopane',tiles:[]),
          BasicTile(title: '{PEP STORE 0343141065} Shop 1 Boxer Centre, Mad 5, Madadeni ',tiles:[]),
          BasicTile(title: '{PEP STORE 0343129027} Shop 56 Newcastle Mall, Corner Oak & Ladysmith Road, Newcastle, KwaZulu-Natal, Mokopane',tiles:[]),
        ]),
        BasicTile(title: 'Osizweni',tiles:[
          BasicTile(title: '{PEP STORE 0343741056} Shop 15 Theku Plaza, Mandeni Road, Madadeni',tiles:[]),
          BasicTile(title: '{PEP STORE 0343661551} Main Street, Main Street, Madadeni -',tiles:[]),
          BasicTile(title: '{PEP STORE 0343741016} Shop 21, Theku Plaza, Mandeni Road,',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'eThekwini Metropolitan Municipality',tiles:[
        BasicTile(title: 'Amanzimtoti',tiles:[
          BasicTile(title: '{PEP STORE 031 903 3053} Shop 17-19 Toti Mall, 16 Beach Rd, Amanzimtoti, Durban, 4126',tiles:[]),
          BasicTile(title: '{PEP STORE 0319037251} SHOP A9 & A10; SEADOONE MALL; 21 - 37 SEADOONE ROAD; AMANZIMTOTI; 4126',tiles:[]),
          BasicTile(title: '{PEP STORE 0319045215} SHOP 11; ARBOUR CROSSING; CNR OPPENHEIMER & ARBOUR ROAD; AMANZIMTOTI; 4126',tiles:[]),
          BasicTile(title: '{PEP STORE 0319043054} SHOP G49; THE GALLERIA; CNR OPPENHEIMER & MOSSKOLNIK ST; AMANZIMTOTI; 4126',tiles:[]),
        ]),
        BasicTile(title: 'Cato Ridge',tiles:[
          BasicTile(title: '{PEP STORE 031 7823088} SHOP 2; CATO RIDGE SPAR CENTRE; OLD MAIN ROAD; CATO RIDGE; 3680',tiles:[]),
        ]),
        BasicTile(title: 'Chatsworth',tiles:[
          BasicTile(title: '{PEP STORE 031 403 0517}  Shop NO 115-119, Chatsworth Centre, 4030',tiles:[]),
        ]),
        BasicTile(title: 'Durban',tiles:[
          BasicTile(title: '{PEP STORE 0313057236} 442-466 WEST STREET; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'BALLITO MALL {PEP STORE 0325860990} SHOP 627; BALLITO JUNCTION ; 1 LEONORA DRIVE ; BALLITO; 4420',tiles:[]),
          BasicTile(title: 'BLUFF PICK N PAY CENTRE {PEP STORE 0314674638} SHOP 34; BLUFF PICK \'n PAY SHOP CENTRE; 201 TARA ROAD; BLUFF; 4036',tiles:[]),
          BasicTile(title: 'BRIDGE CITY {PEP STORE 0315303099} SHOP L54; BRIDGE CITY SHOPPING CENTRE; STATION ROAD; PHOENIX INDUSTRIAL; KWAMASHU; 4360',tiles:[]),
          BasicTile(title: 'CHATSWORTH CENTRE {PEP STORE 0314030517} SHOP NO 112-117 AND 119; CHATSWORTH CENTRE; 17 JOYHURST STREET; CHATSWORTH; 4030',tiles:[]),
          BasicTile(title: 'DR PIXELY KASEME STREET {PEP STORE 0313055710} SHOP NO 1; 389 DR PIXELY KASEME STREET; DURBAN; 4000',tiles:[]),
          BasicTile(title: 'DR YUSUF DADOO STREET {PEP STORE 0313017934} SHOP NO 201b; KARA CENTRE; DR YUSUF DADOO STREET; DURBAN; 4000',tiles:[]),
          BasicTile(title: 'GLENWOOD VILLAGE {PEP STORE 0312015776} SHOP NO. 16; GLENWOOD VILLAGE ; 397 CHE GUEVARA ROAD; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'INANDA SHOPRITE {PEP STORE 0315190050} SHOP 3; INANDA SHOPRITE ; 5571 & 55575 CURMICK NDLOVU HIGHW ; DURBAN; 4310',tiles:[]),
          BasicTile(title: 'INANDA DUBE VILLAGE {PEP STORE 0315191041} SHOP 5; DUBE VILLAGE MALL; I1 IKHATHAZO CLOSE; CNR LINK & KWAMASHU HIGHWAY; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'MARIANHILL USAVE CENTRE {PEP STORE 0317061034} SHOP 5 ; MARIANHILL USAVE CENTRE ; 11 CHESTNUT STREET; MARIANNHILL; 3610',tiles:[]),
          BasicTile(title: 'MONTCLAIR {PEP STORE 0314620286} SHOP 15 - 18; MONTCLAIR MALL; 169 WOOD ROAD; MONTCLAIR; 4004',tiles:[]),
          BasicTile(title: 'NEWLANDS CITY {PEP STORE 0315777685} SHOP 20; NEWLANDS CITY; 2 MARBLE RAY DRIVE; NEWLANDS; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'PHOENIX PLAZA {PEP STORE 0315005775} SHOP 19; PHOENIX PLAZA; PHOENIX HIGHWAY; PHOENIX; DURBAN; 4068',tiles:[]),
          BasicTile(title: 'QUEEN STR {PEP STORE 0313015632} SHOP 1; 100 QUEENS STREET; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'THE RIDGE @ SHALLCROSS {PEP STORE 0314091456} SHOP 36; THE RIDGE@SHALLCROSS ; 90 SHALLCROSS ROAD; CHATSWORTH; 4030',tiles:[]),
          BasicTile(title: 'UMBILO {PEP STORE 0312058477} SHOP 16-19; QUEENSMEAD MALL; 95 TEIGNMOUTH ROAD; UMBILO; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'UMLAZI PHILANI MALL {PEP STORE 0319096995} SHOP48; PHILANI VALLEY SHOPPING CENTRE; 179 ECHEBENI AVE; Y SECTION; UMLAZI; 4066',tiles:[]),
          BasicTile(title: 'UMLAZI SHOPRITE CENTRE {PEP STORE 0319060048} SHOP NO 10; UMLAZI SHOPPING CENTRE; 02 THABO MORENA ROAD; DURBAN; 4100',tiles:[]),
          BasicTile(title: 'VICTORIA & ALBERT STREET {PEP STORE 0313064470} SHOP 10 11 & 12; QUALBERT CENTRE; CNR ALBERT VICTORIA & BRAND STR; DURBAN; 4000',tiles:[]),
          BasicTile(title: 'WEST STREET {PEP STORE 0313040771} SHOP 2; REDEFINE TOWERS; 320 PIXELY KASEME STREET; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'WESTVILLE JUNCTION {PEP STORE 0312670255} SHOP NO 8; WESTVILLE JUNCTION; WESTVILLE ROAD; WESTVILLE; 3630',tiles:[]),
          BasicTile(title: 'WESTVILLE PAVILION {PEP STORE 0312650233} SHOP 289 290 & 291; PAVILION SHOPPING CENTRE; JACK MARTENS DRIVE; WESTVILLE; 3611',tiles:[]),
          BasicTile(title: 'WESTVILLE WESTWOOD {PEP STORE 0312663383} SHOP L101; WESTWOOD SHOPPING CENTRE; 16 LINCOLN TERRACE; DURBAN; 3629',tiles:[]),
          BasicTile(title: 'BEREA {PEP STORE 0312026883} SHOP L7 ; BEREA SHOPPING CENTRE; 249 & 257 BEREA ROAD; DURBAN; 4000',tiles:[]),
          BasicTile(title: 'BLUFF {PEP STORE 0314671602} SHOP 44; BLUFF TOWERS SHOPPING CENTRE; 318 TARA ROAD; DURBAN; 4052',tiles:[]),
          BasicTile(title: 'CLAIRWOOD {PEP STORE 0314652953} SHOP 534; SOUTH COAST ROAD; CLAIRWOOD; DURBAN; 4052',tiles:[]),
          BasicTile(title: 'GAME CITY {PEP STORE 0313094458} SHOP G29 & G33; CITY VIEW SHOPPING CENTRE; 10 MATHEWS MEYIWA STREET ; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'MALVERN {PEP STORE 0314649503} SHOP NO 11 ; MALVERN PARK SC; CNR RIDLEY PARK & MAIN RD; MALVERN ; 4093',tiles:[]),
          BasicTile(title: 'MT EDGECOMBE {PEP STORE 0315391182} SHOP A2; MOUNT EDGECOMBE PLAZA; HILL HEAD ROAD; MOUNT EDGECOMBE; DURBAN; 4302',tiles:[]),
          BasicTile(title: 'SOUTHWAY MALL {PEP STORE 0314659453} SHOP 2; SOUTHWAY MALL; 27 TITREN ROAD; SEA VIEW; DURBAN; 4001',tiles:[]),
          BasicTile(title: 'THE WHEEL {PEP STORE 0313322717} SHOP 11; THE WHEEL CENTRE; 55 GILLESPIE STREET; DURBAN; 4001',tiles:[]),
        ]),
        
        BasicTile(title: 'Hillcrest',tiles:[
          BasicTile(title: '{PEP STORE 031 765 8568} Shop 23&23 Village Mall, CNR OLD Main &, Hillcrest, 3610',tiles:[]),
        ]),
        BasicTile(title: 'Isipingo',tiles:[
          BasicTile(title: '{PEP STORE 0319024981} SHOP 16; KWA FAROUK CENTRE; 10 PARDY ROAD; ISIPINGO; 4133',tiles:[]),
          BasicTile(title: '{PEP STORE  0319024165} Shop 2, 4 Khayyam Centre, 4 Thomas Ln, Isipingo, 4110',tiles:[]),
        ]),
        BasicTile(title: 'Kingsburgh',tiles:[
          BasicTile(title: '{PEP STORE 058 821 0481} Shop 1-4 DSM Mall, 10 Winklespruit Rd, Kingsburgh, 4126',tiles:[]),
          BasicTile(title: '{PEP STORE 031 916 7868} Shop 32/33 Kingsburgh Centre, Ocean View Rd, Winklespruit, Kingsburgh, 4126',tiles:[]),
        ]),
        BasicTile(title: 'KwaMashu',tiles:[
          BasicTile(title: '{PEP STORE 031 530 3207} Shop NO L14 Portion 121 OF ERF 8, Bridge City Shopping Centre, KwaMashu, 4360',tiles:[]),
        ]),
        BasicTile(title: 'Hammarsdale',tiles:[
          BasicTile(title: '{PEP STORE 031 771 0056} Shop A27, Hammarsdale Junction, Kunene Rd, Mpumalanga, 3699',tiles:[]),
          BasicTile(title: '{PEP STORE 0317710941} SHOP A21 & A22; OLD WARMBATHS RDS; GREAT NORTH ROAD; HAMMANSKRAAL; 0407',tiles:[]),
        ]),
        BasicTile(title: 'Pinetown',tiles:[
          BasicTile(title: '{PEP STORE 031 702 8904} Shop 4 Pine City Centre, 24hill Street, Pinetown, 3600',tiles:[]),
          BasicTile(title: '{PEP STORE 031 701 2189} Shop NO 20, ST Johns Centre, Pinetown, 3610',tiles:[]),
          BasicTile(title: '{PEP STORE 031 702 9399} Shop NO 306, Pine Crest Centre, Pinetown, 3610',tiles:[]),
          BasicTile(title: '{PEP STORE 031 701 3725} Shop 11 Pinewalk Centre, 22 Kings Rd, Pinetown, 3610',tiles:[]),
          BasicTile(title: '{PEP STORE 031 701 5182} shop no 05, Simunye Centre, 6 Josiah Gumede Rd, Pinetown, Durban, 3620',tiles:[]),
          BasicTile(title: '{PEP STORE 012 373 6048} Shop 317 Pinecrest Shopping Centre, 17 Kings Rd, Pinetown, 3610',tiles:[]),
        ]),
        BasicTile(title: 'Phoenix',tiles:[
          BasicTile(title: '{PEP STORE 031 500 5775} Shop NO 19, Phoenix Plaza, Durban, 4068',tiles:[]),
          BasicTile(title: '{PEP STORE 031 507 3917} Shop 93, Phoenix Plaza, 19 Parthenon Street, Durban, 4001',tiles:[]),
        ]),
        BasicTile(title: 'uMhlanga',tiles:[
          BasicTile(title: '{PEP STORE 031 537 8026} Shop U23 Cornubia Umhlanga, Durban, 4350',tiles:[]),
          BasicTile(title: '{PEP STORE 031 536 2350} G063 Gateway Theatre If Shopping, 1 Palm Blvd, Umhlanga, 4320',tiles:[]),
        ]),
        BasicTile(title: 'Umkomaas',tiles:[
          BasicTile(title: '{PEP STORE 0399730132}  Shop 1, Azania Investments Building, Brad St, Umkomaas, 4170',tiles:[]),
          BasicTile(title: '{PEP STORE 0399791006} SHOP NO. 2; MOODLEYS SPAR; 70 CALENDULA AVENUE; CRAIGIEBURN; 4170',tiles:[]),
        ]),
        BasicTile(title: 'Umlazi',tiles:[
          BasicTile(title: '{PEP STORE 031 902 1469} Shop 175 Umlazi Mega City, 50 Griffiths Mxenge Hwy, Umlazi, 4066',tiles:[]),
          BasicTile(title: '{PEP STORE 0319072134} Shop 16 Ithala Centre, Zwe Madlala Dr, Umlazi, 4031',tiles:[]),
          BasicTile(title: '{PEP STORE 0319121214} Mega City No.902, Umlazi H, Umlazi, 4066',tiles:[]),
          BasicTile(title: '{PEP STORE 0319070139} SHOP NO 325-328; KWAMNYANDU SHOPPING CENTRE ; UPPER FLOOR. MXENGE HIGHWAY; UMLAZI; DURBAN; 4031',tiles:[]),
          BasicTile(title: '{PEP STORE 0319060048} Shop No 10, 2 Thabo Morena Rd, Umlazi V, Umlazi, 4100',tiles:[]),
        ]),
        BasicTile(title: 'Verulam',tiles:[
          BasicTile(title: '{PEP STORE 032 533 0349} 69 Wick St, Verulam, 4340',tiles:[]),
        ]),
        BasicTile(title: 'Westville',tiles:[
          BasicTile(title: '{PEP STORE  0312650233} Shop No 290 Pavilion Shopping Centre, Westville, 3611',tiles:[]),
          BasicTile(title: '{PEP STORE 0312663383} shop no l101, Westwood Shopping Centre, Westville, 16 Lincoln Terrace, Durban, 3610',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Harry Gwala District Municipality',tiles:[
        BasicTile(title: 'Franklin',tiles:[
          BasicTile(title: '{PEP STORE 0392590629} Shop NO 04 Rhino Shopping Centre, Cnr Main & Franklin Road, Umzimkulu, 3297',tiles:[]),
        ]),
        BasicTile(title: 'Highflats',tiles:[
          BasicTile(title: '{PEP STORE 0398350433} SHOPS 2; HIGHFLATS SHOPPING CENTRE; MAIN STREET; HIGHFLATS; 4640',tiles:[]),
        ]),
        BasicTile(title: 'Ixopo',tiles:[
          BasicTile(title: '{PEP STORE 0398341023} Shop 1, Ixopo Centre, 15 Main Rd, Ixopo, 3276',tiles:[]),
          BasicTile(title: '{PEP STORE 0398341047} Shop 1, 18 Margaret St, Ixopo, 3276',tiles:[]),
          BasicTile(title: '{PEP STORE 0398340005} Shop 3, 15 Main Rd, Ixopo, 3276',tiles:[]),
          BasicTile(title: '{PEP STORE 0343931738} Shop 3 Glencoe Centre, de Beer Street, Ixopo',tiles:[]),
          BasicTile(title: '{PEP STORE 0398340008} Shop 3 Margaret St, Ixopo, 3276',tiles:[]),
          BasicTile(title: '{PEP STORE 0398341047} SHOP NO 1; SHOPRITE CHECKERS CENTRE; MARGARET STREET; IXOPO; 3276',tiles:[]),
          
        ]),
        BasicTile(title: 'Kokstad',tiles:[
          
          BasicTile(title: '{PEP STORE 0397272792} Shop 1, Andersons Building, 40 Main St, Kokstad, 4700',tiles:[]),
          BasicTile(title: '{PEP STORE 0397273927} Shop 17 Main Street Plaza Cnr Main Dowe &, Hope St, Kokstad, 4700',tiles:[]),
          BasicTile(title: '{PEP STORE 0397272792} Shop 7 Kokstad Shopping Centre, 80 Main St, Kokstad, 4700',tiles:[]),
          BasicTile(title: '{PEP STORE 0397271986} 11 Kokstad Regional Centre, 80 Main St, Kokstad, 4693',tiles:[]),
          BasicTile(title: '{PEP STORE 0397271209} 24 Main St, Kokstad, 4685',tiles:[]),
          BasicTile(title: '{PEP STORE 0397271836} Shop 24 Main Street Plaza, 27 Dower St, Kokstad, 4700',tiles:[]),
        ]),
        BasicTile(title: 'Umzimkulu',tiles:[
          BasicTile(title: '{PEP STORE 0392590151} 21a De Bruyn Mall, Main Street, Umzimkulu, 3297',tiles:[]),
          BasicTile(title: '{PEP STORE 0392590629} Shop NO 04 Rhino Shopping Centre, Cnr Main & Franklin Road, Umzimkulu, 3297',tiles:[]),
        ]),
        BasicTile(title: 'Underberg',tiles:[
          BasicTile(title: '{PEP STORE 0337011083} Shop 349, Main Road, Underberg, 4590',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'iLembe District Municipality',tiles:[
        BasicTile(title: 'Ballito',tiles:[
          BasicTile(title: '{PEP STORE 0325860990} Shop 627, Ballito Junction, 1 Leonora Dr, Ballito, Ethekwini, 4399',tiles:[]),
          BasicTile(title: '{PEP STORE 0325861703} Shop 628 Ballito Junction, 1 Leonora Dr, Dolphin Coast, 4399',tiles:[]),
          BasicTile(title: '{PEP STORE 0325861130} Shop 242a and Shop 628d, Leonora Dr, Ballito, Dolphin Coast, 4399',tiles:[]),
        ]),
        BasicTile(title: 'KwaDukuza',tiles:[
          BasicTile(title: '{PEP STORE 0325521543} Shop No 3, KwaDukuza Mall, 2 Elizabeth St, KwaDukuza, 4449',tiles:[]),
          BasicTile(title: '{PEP STORE 0325521135} 33 Kwadukuza Mall, 2 Elizabeth St, KwaDukuza, 4449',tiles:[]),
          BasicTile(title: '{PEP STORE 0325514217} 116 King Shaka St, Stanger Central, KwaDukuza, 4450',tiles:[]),
          BasicTile(title: '{PEP STORE 0325521543} Shop 25, Market Plaza, Cato St, KwaDukuza, 4449',tiles:[]),
          BasicTile(title: '{PEP STORE 0325522384} Shop 61 Hulett St, Stanger Central, KwaDukuza, 4449',tiles:[]),
        ]),
        BasicTile(title: 'Mandeni',tiles:[
          BasicTile(title: '{PEP STORE 0324540686} Shop NO 7 Renckens Superspar, Main Isithebe Road, Mandini, 4491',tiles:[]),
        ]),
        BasicTile(title: 'Maphumulo',tiles:[
          BasicTile(title: '{PEP STORE 0334171859} 128 Sargeaunt St, Greytown, 3250',tiles:[]),
          BasicTile(title: '{PEP STORE 0334171857} Shop, 121, Pine St, Greytown, 3250',tiles:[]),
          BasicTile(title: '{PEP STORE 0334133498} Shop 11 Bheekie Centre Cnr Bell Street & Sergeant Street, Greytown, 3250',tiles:[]),
          BasicTile(title: '{PEP STORE 0334171857} Shop 26, Mavundla Square Cnr Oakes &, Durban St, Greytown, 3250',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'King Cetshwayo District Municipality',tiles:[
        BasicTile(title: 'Empangeni',tiles:[
          BasicTile(title: '{PEP STORE 0357721621} SHOP 1 ; UNIONMAX BUILDING ; 10 UNION STREET ; EMPANGENI; 3880',tiles:[]),
          BasicTile(title: '{PEP STORE 0357723423} SHOP 1; EMPANGENI SHOPPING CENTRE; MAXWELL STREET; EMPANGENI; 3880',tiles:[]),
          BasicTile(title: '{PEP STORE 0357922759} SHOP 13 & 13A; BIYELA STREET; BIYELA CENTRE ; EMPANGENI; 3880',tiles:[]),
          BasicTile(title: '{PEP STORE 0357727571} SHOP 410 & STOREROOM ; EMPANGENI SANLAM CENTRE ; MAXWELL STREET; EMPANGENI; 3880',tiles:[]),
          BasicTile(title: '{PEP STORE 0357722390} SHOP NO E06; OK EMANGENI SHOPPING CENTRE ; CNR COMMERCIAL & BIYELA ROAD; EMPANGENI; 3880',tiles:[]),
          BasicTile(title: '{PEP STORE 0357722194} SHOP 1 & 2A; 4 WEIGHTMAN AVENUE; EMPANGENI; 3880',tiles:[]),
          BasicTile(title: '{PEP STORE 0357870361} SHOP 25; TANNER CENTRE; 67 TANNER ROAD; EMPANGENI; 3880',tiles:[]),
        ]),
        BasicTile(title: 'Eshowe',tiles:[
          BasicTile(title: '{PEP STORE 0354741381} SHOP 10; CHECKOUT CENTRE; 2-10 MAIN STREET; ESHOWE; 3815',tiles:[]),
          BasicTile(title: '{PEP STORE 0354744275} SHOP 3; ESHOWE CENTRE; 25 OSBORNE ROAD; ESHOWE; 3815',tiles:[]),
          BasicTile(title: '{PEP STORE 0354740340} SHOP NO G10-13; ISHONGWE CENTRE ; 17 MAIN STREET; ESHOWE; 3815',tiles:[]),
        ]),
        BasicTile(title: 'Melmoth',tiles:[
          BasicTile(title: '{PEP STORE 0354507297} Shop 33, Melmoth Shopping Centre, Melmoth, 3835',tiles:[]),
          BasicTile(title: '{PEP STORE 0354503222} Shop NO 17 Melmoth Shop CNT, NO 10 Opposition ST, Melmoth, 3835',tiles:[]),
        ]),
        BasicTile(title: 'Mtunzini',tiles:[
          BasicTile(title: '{PEP STORE 0355910481} Shop 1, Ndumo Shopping Centre Main Street, Empangeni, 3965',tiles:[]),
        ]),
        BasicTile(title: 'Nkandla',tiles:[
          BasicTile(title: '{PEP STORE 0358330109} Shop 3, Boxer Centre, Nkandla, 3855',tiles:[]),
        ]),
        BasicTile(title: 'Richards Bay',tiles:[
          BasicTile(title: '{PEP STORE  0357893466} Shop No U004, Boardwalk Inkwazi, Krugerrand Grove, Cbd, Richards Bay, 3900',tiles:[]),
          BasicTile(title: '{PEP STORE 0357891074} Shop 19 Town Square Centre, Richards Bay, 3900',tiles:[]),
          BasicTile(title: '{PEP STORE 0357895636} Shop 6 Taxi City CBD, Richards Bay, 3900',tiles:[]),
        ]),
        
      ]),
      BasicTile(title: 'Ugu District Municipality',tiles:[
        BasicTile(title: 'Harding',tiles:[
          BasicTile(title: '{PEP STORE 0394331366} SHOP 4 & 5; 15 MURCHINSON STREET; HARDING; 4680',tiles:[]),
          BasicTile(title: '{PEP STORE 0394331990} SHOP 5 6 & 7; ITHALA CENTRE; MUSGRAVE STREET; HARDING; 4680',tiles:[]),
          BasicTile(title: '{PEP STORE 0394330017} SHOP NO S19; HARDING CORNER SHOPPING CENTRE; HAWKINS STREET; HARDING; 4680',tiles:[]),
        ]),
        BasicTile(title: 'Hibberdene',tiles:[
          BasicTile(title: '{PEP STORE 0396992549} SHOP 1; VENGIO 18 BUILDING; MARLIN STREET; HIBBERDENE; 4220',tiles:[]),
        ]),
        BasicTile(title: 'Margate',tiles:[
          BasicTile(title: '{PEP STORE 0393157508} Shop 49/59 south coast mall, Izotsha Rd, Shelly Beach, 4265',tiles:[]),
          BasicTile(title: '{PEP STORE 0393121233} 92 Marine Dr, Margate, 4275',tiles:[]),
          BasicTile(title: '{PEP STORE 0393172545} Shop 21 Emoyeni Centre Cnr Erasmus &, Marine Dr, Margate, 4275',tiles:[]),
          BasicTile(title: '{PEP STORE 0393101152} Shop 18 Margate Hibiscus Mall, Margate, 4275',tiles:[]),
          BasicTile(title: '{PEP STORE 0393172546} Shop 2,3,5 Checkers Centre, 92 Marine Dr, Margate, 4265',tiles:[]),
          BasicTile(title: '{PEP STORE 0393174793} Shop 9 Hibiscus Mall Cnr Wartski &, Windsor Ave, Margate, 4275',tiles:[]),
        ]),
        BasicTile(title: 'Port Edward',tiles:[
          BasicTile(title: '{PEP STORE 039 311 1436} Shop 4 Port Edward Shopping CN, 3 Owen Ellis Street, 3 Owen Ellis Dr, North Sand Bluff, Port Edward, 4295',tiles:[]),
        ]),
        BasicTile(title: 'Izingolweni',tiles:[
          BasicTile(title: '{PEP STORE 0395341073} SHOP 4; THOKOZA; MAIN ROAD; IZINGOLWENI; 4260',tiles:[]),
        ]),
        BasicTile(title: 'Port Shepstone',tiles:[
          BasicTile(title: '{PEP STORE 039 311 1436} Shop 4 Port Edward Shopping CN, 3 Owen Ellis Street, 3 Owen Ellis Dr, North Sand Bluff, Port Edward, 4295',tiles:[]),
          BasicTile(title: '{PEP STORE 0396821704} Wooley & Escombe street, Port Shepstone, 4240',tiles:[]),
          BasicTile(title: '{PEP STORE 0396827528} Shop 6, Shoprite 16, 18 Robinson St, CBD, Port Shepstone, 4240',tiles:[]),
          BasicTile(title: '{PEP STORE} Robinsons Street, Port Shepstone, 4240',tiles:[]),
        ]),
        BasicTile(title: 'Scottburgh',tiles:[
          BasicTile(title: '{PEP STORE 0399782400} Shop NO 28, Scottburgh Mall, 4180',tiles:[]),
          BasicTile(title: '{PEP STORE 0399783177} Scottstraat, Scottburgh, 4180',tiles:[]),
        ]),
        BasicTile(title: 'Shelly Beach',tiles:[
          BasicTile(title: '{PEP STORE 039 315 7508} Shop 49/59 south coast mall, Izotsha Rd, Shelly Beach, 4265',tiles:[]),
        ]),
        BasicTile(title: 'Umzinto',tiles:[
          BasicTile(title: '{PEP STORE 0399742804} Shop NO 1, Rampul, Umzinto, 4200',tiles:[]),
          BasicTile(title: '{PEP STORE 0399740264} B7 Bhai Centre, Main Road, Umzinto, 4200',tiles:[]),
        ]),
        
      ]),
      BasicTile(title: 'uMgungundlovu District Municipality',tiles:[
         BasicTile(title: 'Camperdown',tiles:[
           BasicTile(title: '{PEP STORE 0346212237} 16 Main Street, Camperdown',tiles:[]),
          BasicTile(title: '{PEP STORE 0342121923} 296 Victoria Road, Camperdown',tiles:[]),
        ]),
        BasicTile(title: 'Dalton',tiles:[
          BasicTile(title: '{PEP STORE 0335011555} SHOP 11; BASIL\'S SHOPPING CENTRE; NOODSBERG STREET; DALTON; 3470',tiles:[]),
        ]),
        BasicTile(title: 'Gingindlovu',tiles:[
          BasicTile(title: '{PEP STORE 0353371316} SHOP 1; MAIN STREET; GINGINDLOVU; 3800',tiles:[]),
        ]),
        BasicTile(title: 'Harding',tiles:[
          BasicTile(title: '{PEP STORE 0394331366} 5, Shop 4 &, 15 Murchison St, Harding, 4680',tiles:[]),
          BasicTile(title: '{PEP STORE 0394331136} Shop 17 Ithala Centre, Musgrave St, Harding, 4680',tiles:[]),
          BasicTile(title: '{PEP STORE 0394331990}  Shop 5, 7 Ithala Centre, Musgrave St, Harding, 4680',tiles:[]),
          BasicTile(title: '{PEP STORE 0394331990} Shop S19, Harding Corner Shopping Centre, Harding, 4680',tiles:[]),
        ]),
        BasicTile(title: 'Howick',tiles:[
          BasicTile(title: '{PEP STORE 0333303570} SHOP 1; UMNGENI CENTRE; 12 HARVARD STREET; HOWICK; 3290',tiles:[]),
          BasicTile(title: '{PEP STORE } Shop B1 Fairways On Main Cnr R45 Old Main and, Zeederberg Rd, Howick, 3290',tiles:[]),
        ]),
        BasicTile(title: 'Mooi River',tiles:[
          BasicTile(title: '{PEP STORE 0332631609} Shop 2 17 Lawrence Street &, Market St, Mooi River, 3300',tiles:[]),
        ]),
        BasicTile(title: 'Pietermaritzburg',tiles:[
          BasicTile(title: '{PEP STORE 0333421397}  Shop 5, Cambridge Centre, Pietermaritz St, Pietermaritzburg, 3200',tiles:[]),
          BasicTile(title: '{PEP STORE 0333420965} Shop NO 27, Scottsville Mall, Pietermaritzburg, 3200',tiles:[]),
          BasicTile(title: '{PEP STORE 0333451728} Church St, Pietermaritzburg, 3201',tiles:[]),
          BasicTile(title: '{PEP STORE 0333420225} GROUND FLOOR, Southern Life Building, 271 Church St, Pietermaritzburg, 3201',tiles:[]),
          BasicTile(title: '{PEP STORE 0145723704} Shop 2, 3, 14, 15, 16, & 17 Ashraf Manzil Building, 128 Retief St, Wierdapark, Pietermaritzburg, 3200',tiles:[]),
          BasicTile(title: '{PEP STORE 0333426518} Shop 15 A Ground Floor Capital Centre, Longmarket St, 3201, Pietermaritzburg, 3201',tiles:[]),
          BasicTile(title: '{PEP STORE 0214473023} Shop 47, 49 Church St, Pietermaritzburg, 3200',tiles:[]),
          BasicTile(title: '{PEP STORE 0333426811} Shop No 4, 423-429 Church St, Pietermaritzburg, 3201',tiles:[]),
          BasicTile(title: '{PEP STORE 0333420537}  Shop NO 82 Midlands Mall, Sanctuary Road, Pietermaritzburg, 3201',tiles:[]),
          BasicTile(title: '{PEP STORE 0860737000} Shop 12, Mbali Centre, Machibisa Rd, Edendale, Pietermaritzburg, 3200',tiles:[]),
          BasicTile(title: '{PEP STORE 0333948304} 5 Rhino Centre, 420 Pietermaritz St, Pietermaritzburg, 3200',tiles:[]),
          BasicTile(title: '{PEP STORE 0333423172} Shop 11A Capital Centre, 443 Langalibalele St, Pietermaritzburg, 3201',tiles:[]),
        ]),
        BasicTile(title: 'Richmond',tiles:[
          BasicTile(title: '{PEP STORE 0860737000} Shop 22, Richmond Shopping Centre Cnr Nelson & Chilly Street, Richmond - KZN, 7090',tiles:[]),
          BasicTile(title: '{PEP STORE 0332124104} Shop NO 23 Richmond Plaza, CNR Chilly & Shepstone ST, Richmond, 3780',tiles:[]),
        ]),
        BasicTile(title: 'Wartburg',tiles:[
          BasicTile(title: '{PEP STORE 0335031707} LOT 100 OF 132, 1 High Street, Wartburg, 3233',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'UMkhanyakude District Municipality',tiles:[
        BasicTile(title: 'Hlabisa',tiles:[
          BasicTile(title: '{PEP STORE 0358381826} SHOP 5 & 8; HLABISA SPAR CENTRE; MAIN ROAD; HLABISA; 3937',tiles:[]),
        ]),
        BasicTile(title: 'Hluhluwe',tiles:[
          BasicTile(title: '{PEP STORE 0355620118} SPAR CENTRE; 13 MAIN ROAD; HLUHLUWE; 3960',tiles:[]),
        ]),
        BasicTile(title: 'Ingwavuma',tiles:[
          BasicTile(title: '{PEP STORE 0355910978} SHOP 11; SUPERSAVE CENTRE; MAIN ROAD; INGWAVUMA; 3968',tiles:[]),
        ]),
         BasicTile(title: 'Jozini',tiles:[
           BasicTile(title: '{PEP STORE} 12 Main St, Jozini, 3969',tiles:[]),
           BasicTile(title: '{PEP STORE 0355721145} Shop 11 & 12, Ithala Spar Centre Main Street, Jozini, 3969',tiles:[]),
           BasicTile(title: '{PEP STORE 0355728100} Shop NO 8, Jozini Mall, Josini, 3969',tiles:[]),
           BasicTile(title: '{PEP STORE 0355721214} Shop 8 Ithala Centre, Main Road Josini, Jozini, 3969',tiles:[]),
           BasicTile(title: '{PEP STORE 0355923001} SHOP D2; EPHONDWENI (RUNS BETWEEN JOZINI & ; MANGWEZI RD); EPHONDWENI; 3996',tiles:[]),
        ]),
        BasicTile(title: 'Mkuze',tiles:[
          BasicTile(title: '{PEP STORE 0355731090} Shop 20 Mkuze Plaza, Main Road, Mkuze, 3965',tiles:[]),
        ]),
        BasicTile(title: 'Mtubatuba',tiles:[
          BasicTile(title: '{PEP STORE 0355500807} Shop 9, Mtuba Plaza Corner John Ross Highway &, St Lucia Rd, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0355501018} Shop 1 St Lucia Rd, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0355500363} Shop 30A Mtuba Mall, Celtis Dr, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0355500691} Shop 2 Dekos Building, 1 John Ross Hwy, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0355500041} Shop 43-44 Taxi City Taxi City & St Lucia Road, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0355503397} Shop NO 32, Mtuba Plaza, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0354631012} 13 Mtuba Mall, Cnr P237 & Nyathi Road, Cbd, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0354631833} Shop 34 Mtuba Mall Cnr P237 & Nyathi Road, Mtubatuba, 3935',tiles:[]),
          BasicTile(title: '{PEP STORE 0355500160} Shop 23 Taxi City, St Lucia Road &, Inkosi Mtubatuba Rd, Mtubatuba, 3935',tiles:[]),
        ]),
        BasicTile(title: 'Mbazwana',tiles:[
          BasicTile(title: '{PEP STORE 0355710234} Shop 8 Mbazwana Shopping Centre, Mbazwana, 3974',tiles:[]),
        ]),
        BasicTile(title: 'Manguzi',tiles:[
          BasicTile(title: '{PEP STORE 0355929868} Shop 1 Kosi Bay Spar Centre Manguzi Main Road Kwa Ngwanase, 3973',tiles:[]),
          BasicTile(title: '{PEP STORE 0355920080} Shop 11 Kwangwanase Shopping Centre Cnr Main & Hospital Road Kwa Ngwanase, 3973',tiles:[]),
          BasicTile(title: '{PEP STORE 0355920012} 18 R22, Manguzi, 3973',tiles:[]),
          BasicTile(title: '{PEP STORE 0343123138} Shop 3 Victorian Mall, 36 Scott Street, Newcastle, KwaZulu-Natal, Manguzi',tiles:[]),
          BasicTile(title: '{PEP STORE 0343123138} 16 Allen Street, Newcastle, KwaZulu-Natal, Manguzi',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Umzinyathi District Municipality',tiles:[
        BasicTile(title: 'Dundee',tiles:[
          BasicTile(title: '{PEP STORE 0343931738} Shop 3 Glencoe Centre, De Beer Street, Kwazulu-natal, South Africa 2930',tiles:[]),
          BasicTile(title: '{PEP STORE 0342124053} Shop 1a Shoprite Centre, 66 Wilson Street, 3000 Dundee, South Africa',tiles:[]),
          BasicTile(title: '{PEP STORE 0342121309} 296 VICTORIA ROAD; DUNDEE; 3000',tiles:[]),
          BasicTile(title: '{PEP STORE 0342121923} SHOP 1 ; OLD ACRE PLAZA; CRN VICTORIA & WILSON STREETS; DUNDEE; 3000',tiles:[]),
        ]),
        BasicTile(title: 'Glencoe',tiles:[
          BasicTile(title: '{PEP STORE 034 393 1738} Shop 3 Glencoe Centre, De Beers St, Glencoe, 2930',tiles:[]),
        ]),
        BasicTile(title: 'Greytown',tiles:[
          BasicTile(title: '{PEP STORE 0334171857} 121 PINE STREET; GREYTOWN; 3250',tiles:[]),
          BasicTile(title: '{PEP STORE 0334171858} SHOP 11& 12; CNR BELL & SARGEAUNT STREET; GREYTOWN; 3250',tiles:[]),
          BasicTile(title: '{PEP STORE 0334171859} SHOP NO 7; GREYTOWN SHOPPING CENTRE; 128 SERGEANT STREET; GREYTOWN; 3250',tiles:[]),
          BasicTile(title: '{PEP STORE 0334131147} SHOP NO 26; MAVUNDLA SQUARE; CNR OAKES & DURBAN STREET; GREYTOWN; 3250',tiles:[]),
        ]),
        BasicTile(title: 'Kranskop',tiles:[
          BasicTile(title: '{PEP STORE 0860737000} Shop No 1, 2 Main Road, 3268 Kranskop, South Africa',tiles:[]),
          BasicTile(title: '{PEP STORE 033 444 1266} Shop 5, 178 Main Rd, Kranskop, 3268',tiles:[]),
        ]),
        BasicTile(title: 'Nquthu',tiles:[
          BasicTile(title: '{PEP STORE 0342711533} Shop 40 Nquthu Plaza, R68 Manzolwandle Road, Nquthu',tiles:[]),
          BasicTile(title: '{PEP STORE 0342711705} Shop 21 Nqutu Plaza, Main Road, Nqutu, KwaZulu-Natal, Matatiele',tiles:[]),
          BasicTile(title: '{PEP STORE 0342710006} Shop 16 Cambridge Centre, 5 Rank Road, Nquthu',tiles:[]),
          BasicTile(title: '{PEP STORE 0342710088} Shop 3B Nquthu Plaza, Manzolwandile Road, Nqutu, KwaZulu-Natal, Mokopane',tiles:[]),
        ]),
        BasicTile(title: 'Pomeroy',tiles:[
          BasicTile(title: '{PEP STORE 034 662 1015} Shop 1 Mak Point, Akerman St (R33) &, Hime St, Pomeroy, 3020',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'UThukela District Municipality',tiles:[
        BasicTile(title: 'Bergville',tiles:[
          BasicTile(title: '{PEP STORE 0364481123} SHOP NO 1; PEP COMPLEX; 54 TATHAM ROAD; BERGVILLE; 3350',tiles:[]),
          BasicTile(title: '{PEP STORE 0364481098} SHOP 2; BERGVILLE MALL; TATHAM ROAD; BERGVILLE; 3350',tiles:[]),
        ]),
        BasicTile(title: 'Estcourt',tiles:[
          BasicTile(title: '{PEP STORE 0363522500} 165 ALBERT ROAD; ESCOURT; 3310',tiles:[]),
          BasicTile(title: '{PEP STORE 0363521533} R103 STREET; ESCOURT; 3310',tiles:[]),
          BasicTile(title: '{PEP STORE 0363521264} SHOP NO B2A; ITHALA CENTRE; HARDING STREET; ESTCOURT; 3310',tiles:[]),
        ]),
        BasicTile(title: 'Ladysmith',tiles:[
          BasicTile(title: '{PEP STORE 036 637 2381}  Shop 6 The Square Cnr Buller & Harrison Road, Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE 036 631 1849} Shop LG 11 Murchison Mall, Murchison St, Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE 036 631 0022} 62 Illing Road, Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE 036 631 0742} Shop 5A Ladysmith Spar, Corner Of Lyell &, Queen St, Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE 034 261 1011} Shop 3, Sigweje Shopping Centre Uitval, Ladysmith, 3320',tiles:[]),
          BasicTile(title: '{PEP STORE 0860 737 000} Shop UG 3-5 Murchison Mall, 262 Murchison St, Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE } Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE 039 255 0146} Shop 105 Lyell St, Ladysmith, 3370',tiles:[]),
          BasicTile(title: '{PEP STORE 0366365703} SHOP 21; NKONYANE ROAD ; EZAKHENI PLAZA ; EZAKHENI; 3381',tiles:[]),
        ]),
        BasicTile(title: 'Winterton',tiles:[
          BasicTile(title: '{PEP STORE 0342121923} Shop 1 a Old Acre Plaza, Corner Victoria, Wilson Street, Winterton',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Zululand District Municipality',tiles:[
        BasicTile(title: 'Nongoma',tiles:[
          BasicTile(title: '{PEP STORE 0358310015} Shop NO 6, Nongoma Shopping Centre, Nongoma, 3950',tiles:[]),
          BasicTile(title: '{PEP STORE 0358313305} 120 Main St, Nongoma, 3950',tiles:[]),
          BasicTile(title: '{PEP STORE 0358310909} Ndwedwe, Main Road, Nongoma, 3950',tiles:[]),
          BasicTile(title: '{PEP STORE 035 831 3305} Nongoma Plaza Shop 13  Nongoma, 3950',tiles:[]),
        ]),
        BasicTile(title: 'Paulpietersburg',tiles:[
          BasicTile(title: '{PEP STORE 0349951091} Krugerstraat, Paulpietersburg, 3180',tiles:[]),
        ]),
        BasicTile(title: 'Pongola',tiles:[
          BasicTile(title: '{PEP STORE 0344131267} Shop Erlank Building, New Republic Way, Pongola, 3170',tiles:[]),
          BasicTile(title: '{PEP STORE 0344132201} Shop 27, Pongola City Mall Janmillie, Naude St, Pongola, 3170',tiles:[]),
          BasicTile(title: '{PEP STORE 0344131242} Shop 01C Limoba Shopping Centre, 26 Klasie Havenga St, Pongola, 3170',tiles:[]),
          BasicTile(title: '{PEP STORE 0344132678} Shop No 22 Pongola City Shopping Centre Cnr Naude &, Jan Mielie St, Pongola, 3170',tiles:[]),
          BasicTile(title: '{PEP STORE 0128059578} 13B Pongola City Shopping Centre, Corner Naude And, Jan Mielie St, Rd, Pongola, 3170',tiles:[]),
        ]),
        BasicTile(title: 'Ulundi',tiles:[
          BasicTile(title: '{PEP STORE 0358700615} Shop 9 &10 Ithala Centre Princess Magogo &, King Dinizulu Hwy, Road, Ulundi, 3838',tiles:[]),
          BasicTile(title: '{PEP STORE 0358700183} Shop NO 6, Nodwengu Shop Cntr, Ulundi, 3838',tiles:[]),
          BasicTile(title: '{PEP STORE 0358700053} Shop C8 Ithala Centre, Princess Magogo St, Ulundi, 3838',tiles:[]),
          BasicTile(title: '{PEP STORE 0358700014} Shop 22 Ithala Centre, Princess Magogo St, Ulundi, 3838',tiles:[]),
          
        ]),
        BasicTile(title: 'Vryheid',tiles:[
          BasicTile(title: '{PEP STORE 0349800831} Ezidulini, Vryheid, 3101',tiles:[]),
          BasicTile(title: '{PEP STORE 0349808882} 226 Kerk St, Vryheid, 3100',tiles:[]),
          BasicTile(title: '{PEP STORE 0349808951} Kerkstraat 260, Vryheid, 3100',tiles:[]),
          BasicTile(title: '{PEP STORE 0349807213} Shop NO 12 Vryheid Plaza 3 Vryheid Plaza, Mason ST, Vryheid, 3100',tiles:[]),
          BasicTile(title: '{PEP STORE 0349810042} Shop 138B, High Street, Vryheid',tiles:[]),
        ]), 
      ]),
    ]);
    tiles.add(kzn);

    BasicTile gauteng = BasicTile(title:'Gauteng',tiles: [     
      BasicTile(title: 'City of Johannesburg Metropolitan Municipality ',tiles:[
        
        BasicTile(title: 'Alexander',tiles:[
          BasicTile(title: '{PEP STORE 0118820485} Shop 31, Alex Mall, Intersection Of London Road & M3, Johannesburg, 2090',tiles:[]),
        ]),
        BasicTile(title: 'Johannesburg',tiles:[
          BasicTile(title: '{PEP STORE 0116483010} 34 Raleigh St, Yeoville, Johannesburg, 2198',tiles:[]),
          BasicTile(title: '{PEP STORE 0114339290} Shop 34 Southdale Centre, Allenmain Road, Southdale, Johannesburg, 2091',tiles:[]),
          BasicTile(title: '{PEP STORE 0118372437} 160 Central Ave, Mayfair, Johannesburg, 2092',tiles:[]),
          BasicTile(title: '{PEP STORE 0114841398} Shop 2 Cambridge Food Centre Corner of Pretoria Street and, Twist St, Hillbrow, Johannesburg, 2000',tiles:[]),
          BasicTile(title: '{PEP STORE 0113330586} Shop 3, Corner Kerk Street and, Joubert St, Johannesburg, 2000',tiles:[]),
          BasicTile(title: '{PEP STORE 0113334610} 110 Nbs Building, Corner Market Street, Joubert St, Johannesburg, 2000',tiles:[]),
          BasicTile(title: '{PEP STORE 0113335452} Shop 34 Park Central Shopping Centre, Noord Street, Twist St, Johannesburg, 2001',tiles:[]),
          BasicTile(title: '{PEP STORE 0113330506} Park Station, 78 Rissik St, Johannesburg, 2001',tiles:[]),
          BasicTile(title: '{PEP STORE 0113332240} Shop 1, Prestasie Building Corner of Joubert And, Plein St, Johannesburg, 2000',tiles:[]),
          BasicTile(title: '{PEP STORE 0113316888} Carlton Centre, Shop 146-149, 8727 Commissioner St, Johannesburg, 2001',tiles:[]),
          BasicTile(title: '{PEP STORE 0114822528} Shop 55, Campus Square Cnr Kingsway & University Roads, Johannesburg, 2092',tiles:[]),
          BasicTile(title: '{PEP STORE 0113335053} Shop 3 Truval House, Corner Troye Street and, Helen Joseph St, Johannesburg, 2001',tiles:[]),
          BasicTile(title: '{PEP STORE 0116739474} Shop 2 Newlands Shopping Centre, 138 Main Rd, Newlands, Johannesburg, 2092',tiles:[]),
          BasicTile(title: '{PEP STORE 0118349912} 212 Bree Street, Simmonds St, and, Johannesburg, 2001',tiles:[]),
          BasicTile(title: '{PEP STORE 0114920180} Shop 175, Newtown Junction Corner of Carr Street and, Miriam Makeba St, Newtown, Johannesburg, 2000',tiles:[]),
          BasicTile(title: '{PEP STORE 0114777206} Shop 2 & 3 Sophiatown Shopping Centre, Corner Edward Street and, Miller St, Triomf, Johannesburg, 2092',tiles:[]),
          BasicTile(title: '{PEP STORE 0116152761} Shop 44, Park Meadows Cnr Cumberland Road &, Allum Rd, Bedfordview, 2416',tiles:[]),
          BasicTile(title: '{PEP STORE 011 837 2816} Shop 3437, Ground Floor Protea Shopping Centre 35 and, 36 High St, Brixton, Johannesburg, 2092',tiles:[]),
          
        ]),
        BasicTile(title: 'Lenasia',tiles:[
          BasicTile(title: '{PEP STORE 0118520528} Shop NO BO11, Lenasia Square, Lenasia, 1821',tiles:[]),
          BasicTile(title: '{Lenasia Signet Terrace PEP STORE 0118527367} Shop 17 Signet Terrace, 17 Robin Ave, Lenasia, 1827',tiles:[]),
          BasicTile(title: '{Lenasia Trade Route Mall PEP STORE 0118549870} Shop L31 Trade Route Mall Cnr Nirvana &, Klipspruit Valley Rd, Lenasia, 1827',tiles:[]),
          BasicTile(title: '{Lenasia Trade Route Mall PEP STORE 0118541119} Shop L11 Trade Route Mall, Corner K43 &, Nirvana Dr, Lenasia, 1821',tiles:[]),
          BasicTile(title: '{Soweto Eldorado Park PEP STORE 0119451689} Shop 28 Shoprite Centre Circle Road Lenasia, 1827',tiles:[]),
          BasicTile(title: '{Mankayane PEP STORE 0119451689} Shop 5 Shoprite Centre, Circle Road, Lenasia, 1813',tiles:[]),

        ]),
        BasicTile(title: 'Midrand',tiles:[
          BasicTile(title: '{PEP STORE 0113151469} Shop 38 39a & 39b Midrand City Shopping Centre, 61 Old Pretoria Rd, Halfway House, Midrand, 1685',tiles:[]),
          BasicTile(title: '{PEP STORE 0102240827} Shop 1086b, Mall Of Africa Cnr Magwa Crescent &, Lone Creek Cres, Waterfall, Midrand, 1686',tiles:[]),
          BasicTile(title: '{PEP STORE 0113122415} Shop Nr 5757 Midrand City, Old Pretoria Main Rd &, Tonetti St, Halfway House, Midrand, 1682',tiles:[]),
        ]),
        BasicTile(title: 'Roodepoort',tiles:[
          BasicTile(title: '{PEP STORE 0114753105} Shop 16A Retail Crossing, CNR Hendrik Potgieter& NIC, Gauteng, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0114724575} Shop NO U10, 11&12, Roodepoort, 1725',tiles:[]),
          BasicTile(title: '{PEP STORE 0112970152} Shop Lm040 Clearwater Mall Corner Hendrik Potgieter &, Christiaan de Wet Rd, Roodepoort, 1735',tiles:[]),
          BasicTile(title: '{PEP STORE 0117688433} Shop NO. U166, Westgate REG Shop CNT, Roodepoort, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0117602502} Shop NO 30, Village @ Horizon, Roodepoort, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0114753361} Shop 16 Checkers Hyper Centre, 14th Ave, Constantia Kloof, Roodepoort, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0116728227} Shop 1 Kerdies Building, 18 Goldman St, Florida, Johannesburg, 1709',tiles:[]),
          BasicTile(title: '{PEP STORE 0117941678} Shops 14/15 Zandspruit Value CNT, C/O Koniffer & Beyers Naude WAY, Roodepoort, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0117601545} 14 Van Wyk St, Roodepoort, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0116721505} Shop 12 Florida Square, 3rd Ave, Florida, Roodepoort, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0117688433} Shop NO L34/35 Westgate, Shopping Centre 120 Ontdekkers, Gauteng, 1725',tiles:[]),
          BasicTile(title: '{PEP STORE 0117688590} Shop S17 Westgate Mall, 120 Ontdekkers Rd, Johannesburg, 1724',tiles:[]),
          BasicTile(title: '{PEP STORE 0117626495}  Pick\'n PAY Senrtum Winkel NO.6, Witpoortjie, Johannesburg, 1724',tiles:[]),
        ]),
        BasicTile(title: 'Soweto',tiles:[
          BasicTile(title: '{Jabulani Mall PEP STORE 0119301478} Shop 14 Jabulani Mall, 14 Bolani Rd, Soweto, 1804',tiles:[]),
          BasicTile(title: '{Devland Shopping Centre PEP STORE 0119451233} Shop 2, Shoprite Devland Centre, Corner Jan De Necker Drive Cnr Jan De Necker Drive &, Golden Hwy, Soweto, 1808',tiles:[]),
          BasicTile(title: '{Pimville PEP STORE 0119388972} Shop 14-15 Pimville Shopping Centre, Modjaji St, Pimville Zone 7, Pimville, 1809',tiles:[]),
          BasicTile(title: '{Protea Gardens PEP STORE 0119800026} Shop 20 Protea Gardens Chris Hani Road, Old Potchefstroom Rd, Soweto, 1818',tiles:[]),
          BasicTile(title: '{Diepkloof Square PEP STORE 0115280264} Shop 18, Diepkloof Square, Immink Dr, Diepkloof Zone 3, Johannesburg, 1862',tiles:[]),
          BasicTile(title: '{Protea Gardens PEP STORE 0119800128} Shop 006 Protea Gardens Mall, Chris Hani Rd, Soweto, 1818',tiles:[]),
          BasicTile(title: '{Dobsonville PEP STORE 0119883636} Shop 45 Dobsonville Shopping Centre, Elias Motsoaledi Rd, Dobsonville, Johannesburg, 1863',tiles:[]),
          BasicTile(title: '{Maponya MallPEP STORE 0119383609} Shop 55, Maponya Mall, Chris Hani Rd, Soweto, 1809',tiles:[]),
          BasicTile(title: '{Bara Mall PEP STORE 0119382652} ERF 24792 & 24793 Shop NO 19, Bara Mall CNR OLD Potchefstroom &, Gauteng, 1862',tiles:[]),
          BasicTile(title: '{Bolani Mall PEP STORE 0119306079} 91A, 2601 Bolani Rd, Jabulani, Soweto, 1868',tiles:[]),
          BasicTile(title: '{Meadowlands Ndofaya Mall PEP STORE 0115360704} Shop NO 8 Ndofaya Mall CNR Hekroodt Circle&, Marsh St, Meadowlands, Johannesburg, 1852',tiles:[]),
          BasicTile(title: '{Soweto Protea Glen PEP STORE 0112970725} Shop NO 40, Protea Glen Shopping Centre, Soweto, 1818',tiles:[]),
          BasicTile(title: '{Protea Glen PEP STORE 0112970152} Shop 30, Protea Blvd, Protea Glen, Soweto, 1819',tiles:[]),
          BasicTile(title: '{Black Chain Sc PEP STORE 0119332092} Shop Gf9 Black Chain Shopping Centre, Cnr Immink Dr and, Immink St, Diepmeadow, 1862',tiles:[]),
          BasicTile(title: '{Maponya Mall PEP STORE 0118141178} Shop 142 Maponya Mall Old, Chris Hani Rd, Klipspruit, 1809',tiles:[]),
          BasicTile(title: '{Dobsonville PEP STORE 0119884478} Shop 59 Dobsonville Shopping Centre, 75 Elias Motsoaledi Rd, Dobsonville, 1863',tiles:[]),
          BasicTile(title: '{Meadowlands Ndofaya PEP STORE 0117458339} Shop 4, Ndofaya Mall Corner Hekroodt Circle, Odendaal Rd, Meadowlands, Johannesburg, 1851',tiles:[]),
          BasicTile(title: '{Eldorado Park PEP STORE 0119451689} Shop 28 Shoprite Centre Circle Road Lenasia, 1827',tiles:[]),
          BasicTile(title: '{Mankayane PEP STORE 011 945 1689} Shop 5 Shoprite Centre, Circle Road, Lenasia, 1813',tiles:[]),
        ]),
        BasicTile(title: 'Orange Farm',tiles:[
          BasicTile(title: '{Sebokeng Eyethu Orange Farm Mall PEP STORE 0118500401} 47 Eyethu Orange Farm Mall, Link, Orange Farm, Johannesburg, 1841',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'City of Tshwane Metropolitan Municipality',tiles:[
        BasicTile(title: 'Atteridgeville',tiles:[
          BasicTile(title: '{PEP STORE 0458385499} Shop NO. A11, Attlyn Shopping Centre, Pretoria, 1000',tiles:[]),
          BasicTile(title: '{PEP STORE 0123738554} Shop 6 Atteridge Stadium Centre, Hlahla St, Atteridgeville, Pretoria, 0006',tiles:[]),
        ]),
        BasicTile(title: 'Bronkhorstspruit',tiles:[
          BasicTile(title: '{PEP STORE 0139320212} 14 CHURCH STREET; BRONKHORSTSPRUIT; 1020',tiles:[]),
          BasicTile(title: '{PEP STORE 0139322730} SHOP 4 5 &6; KENNY\'S CENTRE; 20 LANHAM STREET; BRONKHORSTSPRUIT; 1020',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851060} 23 Church St, Tshwane, Bronkhorstspruit, 1020',tiles:[]),
          BasicTile(title: '{PEP STORE 0139323865} Shop 12-14, Sukses Building Corner Kerk Street &, Kruger St, Bronkhorstspruit, 1020',tiles:[]),
        ]),
        BasicTile(title: 'Centurion',tiles:[
          BasicTile(title: '{PEP STORE 0126570576} SHOP 17 ; BLUE VALLEY MALL; CNR BOTHRILL & ROOIHUISKRAAL STR; THE REEDS; CENTURION; 0046',tiles:[]),
          BasicTile(title: '{PEP STORE 0126636501} SHOP 223; CENTURION MALL; HEUWEL AVENUE; CENTURION; 0046',tiles:[]),
          BasicTile(title: '{PEP STORE 0126681024} SHOP 69; FOREST HILL CITY MALL; MAIN ROAD; CENTURION; 0157',tiles:[]),
          BasicTile(title: '{PEP STORE 0126538154} SHOP 31; LIFESTYLE CENTRE; CNR LENCHEN AVE & OLD JHB ROAD; CENTURION; 0157',tiles:[]),
          BasicTile(title: '{PEP STORE 0126560230} SHOP NO 40; MALL @ REDS; CNR HENDRIK VERWOERD &; ROOIHUISKRAAL DRIVE; CENTURION; 0154',tiles:[]),
          BasicTile(title: '{PEP STORE 0126520850} SHOP 16; OLIEVENHOUT PLAZA; R 55; CENTURION; 0175',tiles:[]),
          BasicTile(title: '{PEP STORE 0126647814} SHOP A04; LYTTELTON SHOPPING CENTRE; CNR CANTONMENT & CRADOCK AVE; LYTTLETON; CENTURION; 0157',tiles:[]),
          BasicTile(title: '{PEP STORE 0126547632} SHOP 1 2 3 & 4; WIERDAPARK FORUM; SPRINGBOK STREET; WIERDA PARK; CENTURION; 0157',tiles:[]),
        ]),
        BasicTile(title: 'Cullinan',tiles:[
          BasicTile(title: '{PEP STORE 0127341406} SHOP 20; CULLINAN JEWEL CENTRE; CNR OAK & MAIN STREETS; CULLINAN; 1000',tiles:[]),
        ]),
        BasicTile(title: 'Ga-Rankuwa',tiles:[
          BasicTile(title: '{PEP STORE 0127034661} SHOP 3 & 4; GA-RANKUWA SHOPPING CENTRE; GARANKUWA; 0203',tiles:[]),
        ]),
        BasicTile(title: 'Hammanskraal',tiles:[
          BasicTile(title: '{PEP STORE 0127110370} SHOP 33; KOPANONG CENTRE; DOUGLAS RENS ROAD; HAMMANSKRAAL; 2400',tiles:[]),
          BasicTile(title: '{PEP STORE 0127113045} SHOP 7; RHINO CASH & CARRY; DOUGLAS RENS ROAD; HAMMANSKRAAL; 0400',tiles:[]),
          BasicTile(title: '{PEP STORE 0127271726} SHOP 126A; JUBILEE MALL; CNR JUBILEE & GWALA ROAD; HAMMANSKRAAL; 0407',tiles:[]),
          BasicTile(title: '{PEP STORE 0127271228} SHOP 35 & ADDITION; JUBILEE MALL; CNR JUBILEE & HARRY GWALA; HAMMANSKRAAL; 0407',tiles:[]),
          BasicTile(title: '{PEP STORE 0127110456} SHOP A21 & A22; OLD WARMBATHS RDS; GREAT NORTH ROAD; HAMMANSKRAAL; 0407',tiles:[]),
        ]),
        BasicTile(title: 'Mabopane',tiles:[
          BasicTile(title: '{PEP STORE 0127018876} Shop 19-21, Central City Shop Centre, Mabopane, 0190',tiles:[]),
          BasicTile(title: '{PEP STORE 0184626595} Shop 9, Mabopane Square, Lucas Mangope Rd, Mabopane, 0190',tiles:[]),
          BasicTile(title: '{PEP STORE 0127010106} Shop NRS 7/8 & 9, Marula View Shop CNT, Mabopane, 0190',tiles:[]),
        
        ]),
        BasicTile(title: 'Mamelodi',tiles:[
          BasicTile(title: '{PEP STORE 0128404120} Shop 25 Mams Mall, Tsamaya, Mamelodi, 0001',tiles:[]),
          BasicTile(title: '{PEP STORE 0128404115} 75 Mams Mall, Tsamaya Ave, Mamelodi, 0001',tiles:[]),
          BasicTile(title: '{PEP STORE 0123734673} Shop 6i, Mahube Shopping Centre, Mamelodi, 0101',tiles:[]),
          BasicTile(title: '{PEP STORE 0128050660} Winkel D3 Mamelodi Crossing Cnr Maphalla Street &, Stormvoël, Pretoria, 0122',tiles:[]),
          BasicTile(title: '{PEP STORE 0128404288} 20 Mams Mall, Tsamaya Ave, Mamelodi, 0001',tiles:[]),
          BasicTile(title: '{PEP STORE 0128404124} Shop 116 Mams Mall, Tsamaya Ave, Pretoria, 0001',tiles:[]),
          BasicTile(title: '{PEP STORE 0128059578} Shop No GF32 Tshwane Regional Mall Corner Tsamaya &, Waltloo Rd, Mamelodi, 0122',tiles:[]),
          BasicTile(title: '{PEP STORE 0123236271} Shop 6i, Mahube Shopping Centre Cnr K54 &, Tsamaya Ave, Mamelodi, 0101',tiles:[]),
          BasicTile(title: '{PEP STORE 0314671602} Shop GF31 Tshwane Regional Mall Corner Waltloo &, Tsamaya Ave, Mamelodi, 0122',tiles:[]),
          BasicTile(title: '{PEP STORE 0128059578} Shop J07 Mamelodi Crossing Maphalla St &, Stormvoël, Pretoria, 0157',tiles:[]),
          BasicTile(title: '{PEP STORE 0128201059} Gf 3d Tshwane Regional Mall, Corner Waltloo &, Tsamaya Ave, Pretoria, 0001',tiles:[]),
          BasicTile(title: '{PEP STORE 0128052989} Shop J05, Mamelodi Crossing, Mamelodi, Pretoria, 0122',tiles:[]),
        ]),
        BasicTile(title: 'Pretoria',tiles:[
          BasicTile(title: '{PEP STORE 0128042789} Shop 32 Silver Mall Corner De Boulevard &, Pretoria Rd, Silverton, Pretoria, 0184',tiles:[]),
          BasicTile(title: '{PEP STORE 0128004647} East Park Centre, Baviaanspoort Rd, Pretoria, 0186',tiles:[]),
          BasicTile(title: '{PEP STORE 0123265665} Shop 24 Bloed St, Mall, Pretoria, 0002',tiles:[]),
          BasicTile(title: '{PEP STORE 0128076451} Shop L65, The Grove Mall Cnr Lynnwood Road &, Simon Vermooten Rd, Pretoria, 0184',tiles:[]),
          BasicTile(title: '{PEP STORE 0123336781} Shop 34 Queens Corner Centre, 1166 Soutpansberg Rd, Pretoria, 0001',tiles:[]),
          BasicTile(title: '{Pretorius Straat PEP STORE 0123244990} Shop 2 Percegold 277, Pretorius St, Pretoria, 1000',tiles:[]),
          BasicTile(title: '{Tramshed PEP STORE 0123321454} Shop 16a16b Waverley Grdn Cordonia AVE 779, Waverley, Pretoria, 0186',tiles:[]),
          BasicTile(title: '{Lynnridge Mall PEP STORE 0124407402} Shop L125 Sunny Park Shopping Centre Corner Jeep &, Robert Sobukwe St, Pretoria, 0002',tiles:[]),
          BasicTile(title: '{Gezina PEP STORE 0123200018} Shop 23 Tramshed Shopping Centre, 334, 2 Schoeman St, Pretoria, 0002',tiles:[]),
          BasicTile(title: '{Bosman Church PEP STORE 0123481412} Shop 29, Lynnridge Mall Cnr Hibiscus Street &, Freesia St, Lynnwood Ridge, 1000',tiles:[]),
          BasicTile(title: '{Queens Corner Branch PEP STORE 0123359059} Galleries, 569 Frederika St, Gezina, Pretoria, 0084',tiles:[]),
          BasicTile(title: '{Hercules PEP STORE 0123217509} Shop 1 & 2A Boschurch, Cnr Bosman St & Church St, 2 Pretoria, Pretoria, 0002',tiles:[]),
          BasicTile(title: '{Bloed Street HofmilPEP STORE 0123794347} Shop 1, Sam Building, Van Der Hoff Rd, Hercules, 1000',tiles:[]),
          BasicTile(title: '{Hatfield Connexion PEP STORE 0123210905} Shop 1-3 Hofmil 1 And, 2 Bloed St, Pretoria, 0002',tiles:[]),
          BasicTile(title: '{Nkomo Village PEP STORE 0123427666} Shop No HC9, 83 Hilda St, Hatfield, 1000',tiles:[]),
          BasicTile(title: '{Centre Walk PEP STORE 0123851075} Shop 3215-B02 Nkomo Village, Pretoria, 0001',tiles:[]),
          BasicTile(title: '{Quagga Centre PEP STORE 0123231793} Shop 3637, Centre Walk, 266 Pretorius St, Hatfield, Pretoria, 0028',tiles:[]),
          BasicTile(title: '{Silverton PEP STORE 0123272266} Shops 4143 Quagga Centre Corner Church Street &, Court St, Pretoria, 0183',tiles:[]),
          BasicTile(title: '{Pta Church Square PEP STORE 0122510103} Shop 1 Rentbel Building 14 Bureau Avenue, Pretoria, 1000',tiles:[]),
          BasicTile(title: '{Sinoville PEP STORE 0125432093} ERF 2039 & PTN 1959 Pretoria, Shop NO 48 Sinoville Shop Centre, Pretoria, 0182',tiles:[]),
          BasicTile(title: '{Kolonnade PEP STORE 0125482750} Shop No LG11/12, Kolonnade Shopping Centre, Zambezi Dr, Pretoria, 0151',tiles:[]),
        ]),
        BasicTile(title: 'Rayton',tiles:[
          BasicTile(title: '{PEP STORE 0127344838} Shop 4 & 5a & 5b Rayton Park Plaza, 1063 Treurnich St, Rayton, 1001',tiles:[]),
        ]),
        BasicTile(title: 'Soshanguve',tiles:[
          BasicTile(title: '{PEP STORE 0127901538} Shop 39 - 40 Soshanguve Plaza Cnr Buitenkant &, Soshanguve, 0152',tiles:[]),
          BasicTile(title: '{PEP STORE 0127931473} Shop 7, Soshanguve Crossing Cnr Ruth First &, Aubrey Matlakala St, Soshanguve, 0164',tiles:[]),
          BasicTile(title: '{PEP STORE 0127901453} ERF 1630 Shop NO 10A, Batho Plaza CNR DR Maroko Drive &, Soshanguve, 0164',tiles:[]),
          BasicTile(title: '{PEP STORE 0127901115} Shop 14, Soshanguve Plaza, 22 Commissioner St, Soshanguve, 0152',tiles:[]),
          BasicTile(title: '{PEP STORE 0127931806} Shop 38 Soshanguve Crossing, Corner Ruth First Street and, Aubrey Matlakala St, Soshanguve, 0152',tiles:[]),
          BasicTile(title: '{PEP STORE 0127910095} Cnr Umphafa St & Hebron Rd, Shop 14, Thorn Tree Shopping Centre, Soshanguve, 0152',tiles:[]),
          BasicTile(title: '{PEP STORE 0127931211} Shop 10 Soshanguve Crossing Mall, 0143 Aubrey Matlakala St, Soshanguve - RR South, Soshanguve, 0152',tiles:[]),
          BasicTile(title: '{PEP STORE 0127907021} Shop 14 Batho Plaza, Dr Maroko Drive and, Deadly Nightshade Street, Soshanguve, 0164',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Ekurhuleni Metropolitan Municipality',tiles:[
        BasicTile(title: 'Alberton',tiles:[
          BasicTile(title: '{PEP STORE 0118699007} SHOP L106; ALBERTON CITY; VOORTREKKER STREET; ALBERTON; 1449',tiles:[]),
          BasicTile(title: '{PEP STORE 0119078549} SHOP NO 004; DRUTHON ; VOORTREKKER ROAD; ALBERTON; 1450',tiles:[]),
          BasicTile(title: '{PEP STORE 0119021500} SHOP 3; 2ND AVENUE SPAR ; 2ND AVE; ALBERTON; 1450',tiles:[]),
          BasicTile(title: '{PEP STORE 0118677705} SHOP 13 14 & 15; BRACKENHURST SQUARE; ABEL MOLLER STREET; ALBERTON; 2008',tiles:[]),
          BasicTile(title: '{PEP STORE 0119071546} SHOP NO 21; REDRUTH VILLAGE ; CNR AUSTELL ST & CAMBOURNE ROAD; ALBERTON; 1450',tiles:[]),
          BasicTile(title: '{PEP STORE 0743454121} SHOP 5; CELTIS STREET; PALM RIDGE; ALBERTON; 1458',tiles:[]),
          BasicTile(title: '{PEP STORE 0116132576} SHOPS 9 -12; STEELEDALE PICK\'nPAY HYPER; LINROY STREET; ALBERTON; 1449',tiles:[]),
          BasicTile(title: '{PEP STORE 0119084127} SHOP 9; ALRODE SHOPPING CENTRE; 85 BOSWORTH ST; ALBERTON; 1491',tiles:[]),
        ]),
        BasicTile(title: 'Bedfordview',tiles:[
          BasicTile(title: '{PEP STORE 0116152761}  Shop 44, Park Meadows Cnr Cumberland Road &, Allum Rd, Bedfordview, 2416',tiles:[]),
        ]),
        BasicTile(title: 'Benoni',tiles:[
          BasicTile(title: '{PEP STORE 0114210812} SHOP A; BENONI CENTRE; BENONI; 1501',tiles:[]),
          BasicTile(title: '{PEP STORE 0119680441} SHOP 5; CLOVERDENE & PUTFONTEIN STREET; BENONI; 1513',tiles:[]),
          BasicTile(title: '{PEP STORE 0114270011} SHOP L058-L072; LAKESIDE MALL; TOM JONES STREET; BENONI; 1501',tiles:[]),
        ]),
        BasicTile(title: 'Boksburg',tiles:[
          BasicTile(title: '{PEP STORE 0118262414} SHOP L105 - L107; EAST POINT SHOPPING CENTRE; CNR NORTHRAND & RIETFOTEIN ROAD; BOKSBURG; 1459',tiles:[]),
          BasicTile(title: '{PEP STORE 0119134695} SHOP NO SH25; PARKRAND PIAZZA; 44 VAN WYK LOUW DRIVE; BOKSBURG; 1460',tiles:[]),
          BasicTile(title: '{PEP STORE 0119134801} Shop No 8; Sunward Park; Cnr Trichard Road & Kingfisher Avenue; BOKSBURG; 1460',tiles:[]),
          BasicTile(title: '{PEP STORE 0119137377} SHOP10 10A 11; SUNWARD CENTRE; CNR KINGFISHER & DUIKER STREET; BOKSBURG; 1459',tiles:[]),
          BasicTile(title: '{PEP STORE 0113953383} SHOP 3; ATLAS MALL; CNR REIER & FINCH STREET; ATLASVILLE ; BOKSBURG; 1459',tiles:[]),
          BasicTile(title: '{PEP STORE 0118928028} SHOP 2; TOWN CENTRE BOKSBURG; COMMISSIONER STREET; BOKSBURG; 1459',tiles:[]),
          BasicTile(title: '{PEP STORE 0119173813} 50 CASON ROAD; BOKSBURG; 1460',tiles:[]),
          BasicTile(title: '{PEP STORE 0118263915} SHOP 1 - 3; WITFIELD SQUARE; CNR MAIN & LILLIAN ROADS; WITFIELD; BOKSBURG; 1459',tiles:[]),
        ]),
        BasicTile(title: 'Brakpan',tiles:[
          BasicTile(title: '{PEP STORE 0117401555} SHOP 64C; STATION CENTRE; CNR KRITZINGER AVE & STATION RD; BRAKPAN; 1540',tiles:[]),
          BasicTile(title: '{PEP STORE 0117443959} SHOP 6B & 6C; BRAKPAN PLAZA; VOORTREKKER STREET; BRAKPAN; 1541',tiles:[]),
        ]),
        BasicTile(title: 'Daveyton',tiles:[
          BasicTile(title: '{PEP STORE 0114248754} SHOP 5 6 7; DAVEYTON MALL; EISELEN; DAVEYTON; 1507',tiles:[]),
          BasicTile(title: '{PEP STORE 0114247975} SHOP NO 15 16 16A; DAVEYTON SHOPRITE; HEALD STREET; DAVEYTON; 1507',tiles:[]),
        ]),
        BasicTile(title: 'Edenvale',tiles:[
          BasicTile(title: '{PEP STORE 0114537845} SHOP NO 14; 47 VAN RIEBEECK AVENUE; EDENVALE; 1610',tiles:[]),
          BasicTile(title: '{PEP STORE 0114529990} SHOP NO L23; KARAGLEN; BAKER ROAD; EDENVALE; 1612',tiles:[]),
          BasicTile(title: '{PEP STORE 0114545892} SHOP NO 2; MEADOWDALE MALL; GERMISTON ROAD; MEADOWDALE; EDENVALE; 1610',tiles:[]),
          BasicTile(title: '{PEP STORE 0114532869} SHOP NO 16-18; VAN RIEBEECK MALL; CNR VAN RIEBEECK RD & 3RD AVE; EDENVALE; 1610',tiles:[]),
          BasicTile(title: '{PEP STORE 0115240496} SHOP U122 & u126; GREENSTONE SHOPPING CENTRE; CNR MODDERFONTEIN & VAN RIEBEECK ; GREENSTONE HILL; JOHANNESBURG; 1609',tiles:[]),
        ]),
        BasicTile(title: 'Ennerdale',tiles:[
          BasicTile(title: '{PEP STORE 0118551533} Shop 9, Metropolitian Centre Complex, Town Rd, Ennerdale, 1826',tiles:[]),
        ]),
        BasicTile(title: 'Germiston',tiles:[
          BasicTile(title: '{PEP STORE 0118737366} SHOP 13 & 14; STATION BAZAAR; RAILWAY STREET; GERMISTON; 1401',tiles:[]),
          BasicTile(title: '{PEP STORE 0118272030} SHOP F05; ELSBURG SHOPPING CENTRE ; 4 VOORTREKKER STREET; GERMISTON; 1407',tiles:[]),
          BasicTile(title: '{PEP STORE 0119162674} SHOP 3; ELSPARK SHOPPING CENTRE; 2 OWL STREET; ELSPARK; GERMISTON; 1418',tiles:[]),
          BasicTile(title: '{PEP STORE 0118730519} SHOPS NO. 43A 50 51 55 & 57; GOLDEN WALK SHOP CENTRE; 141 VICTORIA STREET; GERMISTON; 1401',tiles:[]),
        ]),
        BasicTile(title: 'Katlehong',tiles:[
          BasicTile(title: '{PEP STORE 0119052200} Shop 15 Letshoho Centre, Hospital Rd, Katlehong, Johannesburg, 1426',tiles:[]),
          BasicTile(title: '{PEP STORE 0118605249} Portion OF Shops 9-12, Letsoho Shopping Centre, Katlehong, 1432',tiles:[]),
          BasicTile(title: '{PEP STORE 0119059159} Shop 3 Motse Wa Lijane Shopping Centre, 3 Nota St, Katlehong, 1431',tiles:[]),
          BasicTile(title: '{PEP STORE 0119030175} Shop 10 Sontonga Mall, Setal Street, Gauteng, 1432',tiles:[]),
        ]),
        BasicTile(title: 'Kempton Park',tiles:[
          BasicTile(title: '{PEP STORE 0119703331} Shop 35/37 Kempton Square, Central Ave, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0113947338} CR Swart Dr, Esther Park, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0119702527} Shop 7 Kemsquare Shopping Centre, 7 West St, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0113934223} Shop 7 Kempton Gate Corner Reinart &, CR Swart Dr, Kempton Park, 1620',tiles:[]),
          BasicTile(title: '{PEP STORE 0119756804} Shop 8C, Central Ave, Kempton Park Cbd, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0113962295} Shop 14 Bredell Square Corner 6th Avenue &, 3rd Ave, Kempton Park, 1620',tiles:[]),
          BasicTile(title: '{PEP STORE 0113983940} Shop 9 Kempton Park Shoprite Cnr Lagenhoven Street &, Central Ave, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0272131105} Shop 19-21 Norkem Mall Cnr James Wright Drive & Mooi River Road, Kempton Park, 1618',tiles:[]),
          BasicTile(title: '{PEP STORE 0119722739} Shop No 5 Cavendish Glen Cnr Monument &, Rietfontein Rd, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0113961175} Shop 3 Glen Balad Cnr Loam &, Fried St, Kempton Park, 1620',tiles:[]),
          BasicTile(title: '{PEP STORE 0119731006} Shop 7 Aero Shopping Centre Corner Atlas Street and Temphof Street, Bonaero Park, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0538315729} Shop No 88 Festival Mall Cnr CR Swart Drive &, Kelvin St, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE 0218732283} 7 Central Ave, Kempton Park Cbd, Kempton Park, 1618',tiles:[]),
          BasicTile(title: '{PEP STORE 0113941487} Shop No 37 Kempstar Mall 41 &, 43 Pretoria Rd, Kempton Park, 1620',tiles:[]),
          BasicTile(title: '{PEP STORE 0119722992} Shop 18, Birchleigh North Shopping Centre Cnr Strydom Street &, Mooifontein Rd, Kempton Park, 1621',tiles:[]),
          BasicTile(title: '{PEP STORE 0113914972} Shop 20 Elgin Mall Cnr Olienhout &, Elgin Rd, Birchleigh, Midrand, 1621',tiles:[]),
          BasicTile(title: '{PEP STORE 0538323799} Shop 5 Kempstar Oriental plaza, Pretoria Rd, Kempton Park, 1619',tiles:[]),
          BasicTile(title: '{PEP STORE }',tiles:[]),
          BasicTile(title: '{PEP STORE }',tiles:[]),
        ]),
        BasicTile(title: 'KwaThema',tiles:[
          BasicTile(title: '{PEP STORE 0117371092} Shop B3, Ekhaya Centre Corner Vlakfontein Road and, Black Rd, Springs, 1425',tiles:[]),
          BasicTile(title: '{PEP STORE 0113630547} Shop No 2 Kwathema Square 12th Road and, Greer St, Springs, 1559',tiles:[]),
        ]),
        BasicTile(title: 'Springs',tiles:[
          BasicTile(title: '{Springsgate PEP STORE 0118117531} Shop 56 Springsgate Shopping Centre Cnr Connaught &, Paul Kruger Rd, Street, Springs, 1559',tiles:[]),
          BasicTile(title: '{Third Street PEP STORE 0118152467} Shop 25, Minar Building, Third St, Springs, 1560',tiles:[]),
          BasicTile(title: '{PEP STORE 0113620042} Shop G1 Madison Lofts Corner Post Office & Avenue, 5th St, Springs, 1559',tiles:[]),
          BasicTile(title: '{PEP STORE 0118120374} Shop L60, Springs Mall, Corner Jan Smuts And, R51, Springs, 1559',tiles:[]),
          BasicTile(title: '{Kwathema Square PEP STORE 0113630547} Shop No 2 Kwathema Square 12th Road and, Greer St, Springs, 1559',tiles:[]),
          BasicTile(title: '{5de Straat PEP STORE 0165812578} Shop 30 Palm Springs Mall Meyerton Road, Springs, 1560',tiles:[]),
          BasicTile(title: '{PEP STORE 0118120102} Shop 38K Palm Springs, 28-34 Avenue, Springs, 1559',tiles:[]),
          BasicTile(title: '{Selcourt Towers PEP STORE 0113630547} Shop 24, Selcourt Towers Cnr Wit & Hewitt Road, Selcourt, 1567',tiles:[]),
          BasicTile(title: '{PEP STORE 0113620042} Shop 9, The Avenues 4th Street &, 6th Ave, Springs, 1559',tiles:[]),
          BasicTile(title: '{PEP STORE 0117321484} Shop 60C Tsakane Plaza, CNR Malandela & Modjadji, Springs, 1560',tiles:[]),
          BasicTile(title: '{PEP STORE 0117371092} Shop B3, Ekhaya Centre Corner Vlakfontein Road and, Black Rd, Springs, 1425',tiles:[]),
          BasicTile(title: '{PEP STORE 0118154847} Shop 18, 19 Tsakane Mall, Springs, 1425',tiles:[]),
          BasicTile(title: '{PEP STORE 0118105180} Shop No 9 Tsakane Corner Cnr Fezela & Madiba Street Ekurhuleni Burgersfort, 1560',tiles:[]),
          BasicTile(title: '{PEP STORE 0419911570} Shop 30 Tsakane Plaza Corner Modjadji Street & Mandela Drive, Springs, 1548',tiles:[]),
          BasicTile(title: '{PEP STORE 0118154847} Shop 5, Tsakane Square Cnr Tsakane Street &, Jabulani St, Tsakane, 1548',tiles:[]),
        ]),
        BasicTile(title: 'Tembisa',tiles:[
          BasicTile(title: '{Mega Mart PEP STORE 0113160033} Shop Gf12, Mega Mart Cnr Botswana &, Algeria St, Tembisa, 1632',tiles:[]),
          BasicTile(title: '{Birch Acres Square PEP STORE 0102420323} Shop 14, Birch Acres Square Cnr Andrew Mapheto Drive &, Isimuku St, Tembisa, Kempton Park, 1628',tiles:[]),
          BasicTile(title: '{Kaalfontein Yarona Centre PEP STORE 0113120810} Shop 2, Yarona Centre Cnr Angelfish Drive &, Archerfish Dr, Tembisa, 1632',tiles:[]),
          BasicTile(title: '{Tembi Mall PEP STORE 0119201535} Shop 18 Tembi Centre 232 Igqagqa Section Tembisa, 1628',tiles:[]),
          BasicTile(title: '{Ivory Park PEP STORE 0671843247} Shop 4 Kopanong Shopping Centre, Malatsi St, Tembisa, 1632',tiles:[]),
          BasicTile(title: '{Phumulani Mall PEP STORE 0113167851} Phumulani Mall, Shop NO 7, 1 Olifantsfontein Rd, Tembisa, 1628',tiles:[]),
          BasicTile(title: '{Birch Acres PEP STORE 0102420323} Shop 47, Birch Acres Mall, Andrew Mapheto St, Tembisa, 1632',tiles:[]),
          BasicTile(title: '{Tembi Mall PEP STORE 0119260049} Shop 11 Tembi Mall, Corner George Nyanga Drive &, Sheba St, Tembisa, 1628',tiles:[]),
          BasicTile(title: '{Mayibuya Shopping Centre PEP STORE 0113109983} Shop 4 Mayibuya Shopping Centre, Modderfontein Rd, Tembisa, 1632',tiles:[]),
          BasicTile(title: '{Busy Corner Mall PEP STORE 0113167851} Shop No 19 Busy Corner Mall, Main Rd, Tembisa, 1628',tiles:[]),
          BasicTile(title: '{Kaalfontein Corner PEP STORE 0113120810} Shop 8, Kaalfontein Corner, Angelfish St, Halfway House Estate, Johannesburg, 1685',tiles:[]),
          BasicTile(title: '{Ivory Park PEP STORE 0112040212} Ext 13, Shop 6, Kopanong Shopping Centre, Riverside St, Ivory Park, Johannesburg, 1693',tiles:[]),
          BasicTile(title: '{Phumulani Mall PEP STORE 0113168082} Phumulani Mall, Shop 48, Olifantsfontein Rd, Olifantsfontein, 1666',tiles:[]),
        ]),
        BasicTile(title: 'Thokoza',tiles:[
          BasicTile(title: '{Alberton Tokoza PEP STORE 011 860 3227} Shop 4, Shoprite Centre Matsamela Street, Thokoza, 1450',tiles:[]),
        ]),
        BasicTile(title: 'Tsakane',tiles:[
          BasicTile(title: '{PEP STORE 0118105180} Shop No 9 Tsakane Corner Cnr Fezela & Madiba Street Ekurhuleni Burgersfort, 1560',tiles:[]),
          BasicTile(title: '{PEP STORE 0118154847} Shop 5, Tsakane Square Cnr Tsakane Street &, Jabulani St, Tsakane, 1548',tiles:[]),
          BasicTile(title: '{PEP STORE 0419911570} Shop 30 Tsakane Plaza Corner Modjadji Street & Mandela Drive, Springs, 1548',tiles:[]),
          BasicTile(title: '{PEP STORE 0118154847} Shop 18, 19 Tsakane Mall, Springs, 1425',tiles:[]),
          BasicTile(title: '{PEP STORE 0117321484} Shop 60C Tsakane Plaza, CNR Malandela & Modjadji, Springs, 1560',tiles:[]),
        ]),
        BasicTile(title: 'Vosloorus',tiles:[
          BasicTile(title: '{PEP STORE 0119061044}  Shop 3839 Lesedi Complex, 38/39 Mc Botha Dr, Vosloorus, 1475',tiles:[]),
          BasicTile(title: '{PEP STORE 0119010067} Shop 30 & 31 Chris Hani Crossing, CNR Brickfield & Bierman RD, Johannesburg, 1486',tiles:[]),
          BasicTile(title: '{PEP STORE 0119010123} Shop 36 Chris Hani Crossing, Bierman &, Brickfield Rd, Rusloo, Vosloorus, 1475',tiles:[]),
          BasicTile(title: '{PEP STORE 0119062440} Centre Barry Marais Road, Rusloo, Johannesburg, 1475',tiles:[]),
          BasicTile(title: '{PEP STORE 071 216 4529} Shop NO 1-3, Phumula Market Square, Vosloosrus, 1475',tiles:[]),
        ]),
        BasicTile(title: 'Vereeniging',tiles:[
          BasicTile(title: '{PEP STORE 0164220985} Shop 1011, Markpark Shoprite Centre, Voortrekker St, Vereeniging, 1805',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851060} Shop 16, President Vaal Square, Playfair Blvd, Vereeniging, 1930',tiles:[]),
          BasicTile(title: '{PEP STORE 0164549632} Shop 2 - 6 Checkers Centre, 42 Umtata St, Three Rivers, 1941',tiles:[]),
          BasicTile(title: '{PEP STORE 0164549935} Shop D12, River Square Shopping Centre, Nile Dr, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0164228447} ERF 1442 Vereeniging, Shop 57A Mark Park Centre, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0164222054} Shop No 16 & 17 Mark Park Shopping Centre, Vereeniging, 1801',tiles:[]),
          BasicTile(title: '{PEP STORE 0164285780} Shops 8 & 9, Hyper Centre, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851078} Shop No 19 President Vaal Square President Vaal Square, Playfair Blvd, Vereeniging, 1930',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851710} Shop 1 Pick N Pay Bedworth Park Hyper, Cassandra Ave, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0165821169} Shop 11 Evaton Plaza, Golden Hwy, Vereeniging, 1939',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Emfuleni Local Municipality',tiles:[
        BasicTile(title: 'Evaton',tiles:[
          BasicTile(title: '{PEP STORE 0165930050} Shop 01, Evaton, Sebokeng, 1984',tiles:[]),
          BasicTile(title: '{PEP STORE 0118154972} Shop 211 Evaton Plaza, Golden Hwy, Sebokeng, 1982',tiles:[]),
        ]),
        BasicTile(title: 'Sebokeng',tiles:[
          BasicTile(title: '{PEP STORE 0165929299}  Shop NO 25 Sebokeng Plaza, Moshweshwe ST, Sebokeng, 1982',tiles:[]),
          BasicTile(title: '{PEP STORE 0165921071}  Shop NO B22 Thabong Shop CNT, Moshoeshoe St, Sebokeng, 1983',tiles:[]),
          BasicTile(title: '{PEP STORE 0118500326} Shop L18, Eyethu Orange Farm Mall, Sebokeng, 1984',tiles:[]),
          BasicTile(title: '{PEP STORE 0165923549} B, Shop B08 Thabong Shopping Centre, 08 Moshoeshoe St, Sebokeng, Gauteng, Sebokeng, 1983',tiles:[]),
          BasicTile(title: '{PEP STORE 0165930050} Shop 01, Evaton, Sebokeng, 1984',tiles:[]),
          BasicTile(title: '{PEP STORE 0165810764} ERF 2066 SH 21 Palm Springs Shop CEN, Welgevonden & Falcon Streets, Sebokeng, 1984',tiles:[]),
          BasicTile(title: '{PEP STORE 0118154972} Shop 211 Evaton Plaza, Golden Hwy, Sebokeng, 1982',tiles:[]),
          BasicTile(title: '{PEP STORE 0118501142} Golden Hwy, Block G, Sebokeng, 1983',tiles:[]),
          BasicTile(title: '{PEP STORE 0118500401} 47 Eyethu Orange Farm Mall, Link, Orange Farm, Johannesburg, 1841',tiles:[]),
        ]),
        BasicTile(title: 'Vanderbijlpark',tiles:[
          BasicTile(title: '{PEP STORE 0169323611} Shop 12 Riverside Boulevard Corner Frikkie Meyer Street &, Chopin St, Vanderbijlpark, 1911',tiles:[]),
          BasicTile(title: '{PEP STORE 0169311811} Shop No 85 Vaal Mall Shopping Centre, 85 Rossini Blvd, Vanderbijlpark, 1911',tiles:[]),
          BasicTile(title: '{PEP STORE 0169330388} Shop 45 Vip Building, 80 D F Malan St, Vanderbijlpark, 1900',tiles:[]),
          BasicTile(title: '{PEP STORE 0619311075} Shop 5 Vaalgate Shopping Centre, Attie Fourie St, Vanderbijlpark, 1911',tiles:[]),
          BasicTile(title: '{PEP STORE 0169311811} S076a Vaal Mall, Corner Barrage &, Rossini Blvd, Vanderbijlpark, 1911',tiles:[]),
          BasicTile(title: '{PEP STORE 0165821169} Shop 11 Evaton Plaza, Golden Hwy, Vereeniging, 1939',tiles:[]),
        ]),
        BasicTile(title: 'Vereeniging',tiles:[
          BasicTile(title: '{PEP STORE 0164220985} Shop 1011, Markpark Shoprite Centre, Voortrekker St, Vereeniging, 1805',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851060} Shop 16, President Vaal Square, Playfair Blvd, Vereeniging, 1930',tiles:[]),
          BasicTile(title: '{PEP STORE 0164549632} Shop 2 - 6 Checkers Centre, 42 Umtata St, Three Rivers, 1941',tiles:[]),
          BasicTile(title: '{PEP STORE 0164549935} Shop D12, River Square Shopping Centre, Nile Dr, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0164228447} ERF 1442 Vereeniging, Shop 57A Mark Park Centre, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0164222054} Shop No 16 & 17 Mark Park Shopping Centre, Vereeniging, 1801',tiles:[]),
          BasicTile(title: '{PEP STORE 0164285780} Shops 8 & 9, Hyper Centre, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851078} Shop No 19 President Vaal Square President Vaal Square, Playfair Blvd, Vereeniging, 1930',tiles:[]),
          BasicTile(title: '{PEP STORE 0169851710} Shop 1 Pick N Pay Bedworth Park Hyper, Cassandra Ave, Vereeniging, 1939',tiles:[]),
          BasicTile(title: '{PEP STORE 0165821169} Shop 11 Evaton Plaza, Golden Hwy, Vereeniging, 1939',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Lesedi Local Municipality',tiles:[
        BasicTile(title: 'Heidelberg',tiles:[
          BasicTile(title: '{PEP STORE 0163412789} Shop 9 Shoprite Checkers Centre, 61 Voortrekker St, Heidelberg, 2400',tiles:[]),
          BasicTile(title: '{PEP STORE 0163412373} Shop 28 The Victorian Shopping Centre, 29 Voortrekker St, Heidelberg - GP, 2403',tiles:[]),
          BasicTile(title: '{PEP STORE 0163412481} R42, Military Base, Heidelberg - GP, 1441',tiles:[]),
          BasicTile(title: '{PEP STORE 0163412430} Shop 52, Jacobs St, Military Base, Heidelberg - GP, 1441',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Merafong City Local Municipality',tiles:[
        BasicTile(title: 'Carletonville',tiles:[
          BasicTile(title: '{PEP STORE 0187875455} SHOP 13 & 14; STAND 1276 CARLETONVILLE; EMARALD STREET; CARLETONVILLE; 2499',tiles:[]),
          BasicTile(title: '{PEP STORE 0187886301} SHOP 44; GATEWAY MALL; CNR ANNAN & OSMIUM ROAD; OSMIUM; CARLETONVILLE; 2500',tiles:[]),
          BasicTile(title: '{PEP STORE 0187882467} SHOP 13; CARLETONVILLE MALL ; STATION ROAD ; CARLETONVILLE; 2499',tiles:[]),
          BasicTile(title: '{PEP STORE 0187883022} SHOP 2; VAN ZYL SMITH BUILDING; CNR VAN ZYL & SMIT STREET ; OBERHOLZER; 7600',tiles:[]),
        ]),
        BasicTile(title: 'Fochville',tiles:[
          BasicTile(title: '{PEP STORE 0187712811} CNR CHURCH & PARK STREET; FOCHVILLE; 2515',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Midvaal Local Municipality',tiles:[
        BasicTile(title: 'Meyerton',tiles:[
          BasicTile(title: '{PEP STORE 0163621117} Shop 2 President Court, 27 Loch St, Meyerton, 1960',tiles:[]),
          BasicTile(title: '{PEP STORE 0163620379} Shop 7-8 Jacbar Building, 31 Loch St, Meyerton, 1961',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Mogale City Local Municipality',tiles:[
        BasicTile(title: 'Kagiso',tiles:[
          BasicTile(title: '{PEP STORE 0114100990} Shop 8, Kagiso Mall, Corner, Randfontein Rd, Krugersdorp, 1754',tiles:[]),
        ]),
        BasicTile(title: 'Krugersdorp',tiles:[
          BasicTile(title: '{PEP STORE 0116602937} 63 Rustenburg Rd, Krugersdorp West, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0116653480} Nbs Centre, 12 Monument St, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0116606682} Shop 4, Woudstra Building, 70 Eloff St, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0137983010} Shop 31 President Building Cnr Pretoria & Morkel Street, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0357898178} Shop 6 Cnr Market &, Commissioner St, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0112731305} Viljoen St, Paardeplaats 177 IQ, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0117621229} Shop 6 Easy Park Centre, 36 Jacobs St, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0139478172} Shop 214 Keywest Shop Ctr, Paardekraal Dr, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0116647408} 193 Main Reef Rd, Lewisham, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0114100990} Shop 8, Kagiso Mall, Corner, Randfontein Rd, Krugersdorp, 1754',tiles:[]),
          BasicTile(title: '{PEP STORE 0116621903} Shop L45 Cradlestone Mall Cnr R28 N14 &, Hendrik Potgieter Rd, Krugersdorp, 1740',tiles:[]),
          BasicTile(title: '{PEP STORE 0112730090} Shop 75 Key West Shopping Centre, Corner Paardekraal &, Viljoen St, Krugersdorp, 1740',tiles:[]),
        ]),
        BasicTile(title: 'Magaliesburg',tiles:[
          BasicTile(title: '{PEP STORE 0145771165} Shop 4 & 5 Three Participants Building, Rustenburg Rd, Magaliesburg, 1739',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Randfontein Local Municipality',tiles:[
        BasicTile(title: 'Mohlakeng',tiles:[
          BasicTile(title: '{PEP STORE} Shoprite Centre, Shop No 2 Mohlakeng, Ntuli St, Randfontein, 1759',tiles:[]),
        ]),
        BasicTile(title: 'Randfontein',tiles:[
          BasicTile(title: '{PEP STORE 0116931958} Shop NO 6 Randfontein Shop Cntr, Station Road, Randfontein, 1759',tiles:[]),
          BasicTile(title: '{PEP STORE 0116936445} Shop No.10, EGoli, Main Reef Rd, Randfontein, 1760',tiles:[]),
          BasicTile(title: '{PEP STORE 0116931435} Hoofweg 52 A Shop 16, Randfontein, 1760',tiles:[]),
          BasicTile(title: '{PEP STORE 0116923028} Shop 1 Desmare Centre, 19 Unie St, Randgate, Johannesburg, 1750',tiles:[]),
          BasicTile(title: '{PEP STORE 0116921849} Shop 6, Tambotie Mall Corner of Tambotie Road &, Malan St, Randfontein, 1760',tiles:[]),
          BasicTile(title: '{PEP STORE 0114121366} Portion Of 22, Station Mall, Brury St, Randfontein, 1754',tiles:[]),
          BasicTile(title: '{PEP STORE 0116931958} Shop 910, Tambotie Mall, Randfontein, 1759',tiles:[]),
          BasicTile(title: '{PEP STORE 0116921849} Shop 6 Village Square, Main Reef Rd, Randfontein, Johannesburg, 1759',tiles:[]),
          BasicTile(title: '{PEP STORE 0114100990} Shop 8, Kagiso Mall, Corner, Randfontein Rd, Krugersdorp, 1754',tiles:[]),
        ]),

      ]),
      BasicTile(title: 'Westonaria Local Municipality',tiles:[
        BasicTile(title: 'Westonaria',tiles:[
          BasicTile(title: '{PEP STORE 0860900100} Shop C, 92 Edwards Ave, Krugersdorp, 1739',tiles:[]),
          BasicTile(title: '{PEP STORE 0117533624} Westonariasentrum, Davies, Westonaria, 1780',tiles:[]),
        ]),
      ]),
    ]);
    tiles.add(gauteng);

    BasicTile easternCape = BasicTile(title:'Eastern Cape',tiles: [
      BasicTile(title: 'Amatola Region',tiles:[
        BasicTile(title: 'Alice (iDikeni)',tiles:[
          BasicTile(title: '{PEP STORE 0406530609} 27 MAIN STREET; ALICE; 5700',tiles:[]),
          BasicTile(title: '{PEP STORE 0406532112} SHOP 4 & 5; KWANTU CENTRE; BRIDGE STREET; ALICE; 5700',tiles:[]),
        ]),
        BasicTile(title: 'Aliwal North (Maletswai)',tiles:[
          BasicTile(title: '{PEP STORE 0516333443} SHOP 25; SOMERSET STREET; ALIWAL NORTH; 9750',tiles:[]),
          BasicTile(title: '{PEP STORE 0516332543} 4 Bridgegate Centre, Corner Robinson &, Mitchell St, Aliwal North, 9750',tiles:[]),
        ]),
        BasicTile(title: 'Barkly East',tiles:[
          BasicTile(title: '{PEP STORE 0459710187} 11 Cole St, Barkly East, 9786',tiles:[]),
        ]),
        BasicTile(title: 'Bethulie',tiles:[
          BasicTile(title: '{PEP STORE 0517630113} Shop 40 Joubert St, Bethulie, 9992',tiles:[]),
        ]),
        BasicTile(title: 'Burgersdorp',tiles:[
          BasicTile(title: '{PEP STORE 0516531787} Hendrik Potgieter Street, Gariep, Burgersdorp, 9744',tiles:[]),
        ]),
        BasicTile(title: 'Cala',tiles:[
          BasicTile(title: '{PEP STORE 0478770058} SHOP 1; CALA SHOPPING CENTRE; MAIN ROAD; CALA; 5455',tiles:[]),
          BasicTile(title: '{PEP STORE } Tsomo Street, Cala, 5455',tiles:[]),
          BasicTile(title: '{PEP STORE 0478770025} Shop No 7 Cala Shopping Centre, Tsomo Road, Cala, 5455',tiles:[]),
        ]),
        BasicTile(title: 'Cathcart',tiles:[
          BasicTile(title: '{PEP STORE 0458431071} Shop 21 Main St, Cathcart, 5310',tiles:[]),
        ]),
        BasicTile(title: 'Cofimvaba',tiles:[
          BasicTile(title: '{PEP STORE 0478740129} CNR BELHAIR & MAIN ROAD ; COFIMVABA; 5380',tiles:[]),
          BasicTile(title: '{PEP STORE 0478740020} SHOP 10 & 11; SUPERSAVE CENTRE ; MAIN STREET; COFIMVABA; 5380',tiles:[]), 
        ]),
        BasicTile(title: 'Dordrecht',tiles:[
          BasicTile(title: '{PEP STORE 0459431009} 62 Grey St, Dordrecht, 5435',tiles:[]),
        ]),
        BasicTile(title: 'East London (eMonti)',tiles:[
          BasicTile(title: '{PEP STORE 0437432402} SHOP 2-7; GLADSTONE HOUSE; 189 ALBERT STREET; EAST LONDON; 5201',tiles:[]),
          BasicTile(title: '{PEP STORE 0437434982} SHOP 7; BUFFALO CENTRE; CNR BUFFALO & UNION STREET; EAST LONDON; 5200',tiles:[]),
          BasicTile(title: '{PEP STORE 0437227762} MARKET SQUARE; 10 CROMWELL STREET; EAST LONDON; 5201',tiles:[]),
          BasicTile(title: '{PEP STORE 0437220151} 32 OXFORD STREET; EAST LONDON; 5201',tiles:[]),
          BasicTile(title: '{PEP STORE 0437321142} SHOP 12; KINGS MALL; CNR GULLS WAY & MAIN ROAD; GONUBIE; EAST LONDON; 5201',tiles:[]),
          BasicTile(title: '{PEP STORE 0437221437} SHOP UG 12; GILLWELL SHOPPING CENTRE; CNR GILLWELL & FLEET STREET; EAST LONDON; 5200',tiles:[]),
          BasicTile(title: '{PEP STORE 0437420694} SHOP 1; PERM BUILDING; 42-46 OXFORD STREET; EAST LONDON; 5201',tiles:[]),
        ]),
        BasicTile(title: 'Elliot',tiles:[
          BasicTile(title: '{PEP STORE 0459311297} 18 MACLEAR ROAD; ELLIOT; 5460',tiles:[]),
        ]),
        BasicTile(title: 'Fort Beaufort (eBhofolo)',tiles:[
          BasicTile(title: '{PEP STORE 0466451500} 29 HENRIETTA STREET; FORT BEAUFORT; 5720',tiles:[]),
        ]),
        BasicTile(title: 'Gonubie',tiles:[
          BasicTile(title: '{PEP STORE 0437321142} Shop 12 Kings Mall Corner Gulls Way, Main Rd, Gonubie, 5201',tiles:[]),
        ]),
        BasicTile(title: 'Indwe',tiles:[
          BasicTile(title: '{PEP STORE 0459521063} Corner of Voortrekker Street and Cornis Street, Indwe, 5445',tiles:[]),
        ]),
        BasicTile(title: 'Keiskammahoek',tiles:[
          BasicTile(title: '{PEP STORE 0406580026} Main Street, Keiskammahoek, 5670',tiles:[]),
        ]),
        BasicTile(title: ' King William\'s Town (Qonce)',tiles:[
          BasicTile(title: '{PEP STORE 0436421611} Shop 17 Market Square, 28 Maclean St, Qonce, 5601',tiles:[]),
          BasicTile(title: '{PEP STORE 0436422946} Shop 3 Walker St, Qonce, 5601',tiles:[]),
          BasicTile(title: '{PEP STORE 0436421961} 10 Taylor St, Qonce, 5601',tiles:[]),
          BasicTile(title: '{PEP STORE 0436422011} Fleet St, Qonce, 5601',tiles:[]),
          BasicTile(title: '{PEP STORE 0436426189} Shop NO 1 Metlife Mall, CNR Smith & Cross, Qonce, 5601',tiles:[]),
          BasicTile(title: '{PEP STORE 0436426277} Shop G75 Metlife Mall Cnr. Cross &, Smith St, Qonce, 5601',tiles:[]),
        ]),
        BasicTile(title: 'Komani (previously Queenstown)',tiles:[
          BasicTile(title: '{PEP STORE 0458394961} 68 Nonesi Mall, Komani St, Queenstown, 5320',tiles:[]),
          BasicTile(title: '{PEP STORE 0458381931} Shop 25 Queenstown Mall, Cathcart Rd, Queenstown, 5319',tiles:[]),
          BasicTile(title: '{PEP STORE 0458385499} Shop NO 48, Nonesi Mall, Queenstown, 5320',tiles:[]),
          BasicTile(title: '{PEP STORE 0458385064} Shop B07-B09 Lukhanji Mall, 124 Cathcart Rd, Queenstown, 5319',tiles:[]),
          BasicTile(title: '{PEP STORE 0458395432} Shop 23 Victoria Road S, Queenstown, Chris Hani, Lukhanji, Queenstown, 5320',tiles:[]),
          BasicTile(title: '{PEP STORE 045 839 4960} Shop 2 Hexzagon Square, Bowker St, Queenstown, 5320',tiles:[]),
        ]),
        BasicTile(title: 'Lady Grey',tiles:[
          BasicTile(title: '{PEP STORE 0516030099} 9 Brummer St, Lady Grey, 9755',tiles:[]),
        ]),
        BasicTile(title: 'Maclear',tiles:[
          BasicTile(title: '{PEP STORE 0459321291} Spar Centre 10 Van Riebeek ST, Nqanqarhu, 5480',tiles:[]),
        ]),
        BasicTile(title: 'Mdantsane',tiles:[
          BasicTile(title: '{PEP STORE 0437600038} SHP Cntr Sandile RD Mdantsane, Mdantsane, 5219',tiles:[]),
          BasicTile(title: '{PEP STORE 0437623476} Shop 101, Mdantsane City Centre 131 Brug Street, Mdantsane, 5219',tiles:[]),
          BasicTile(title: '{PEP STORE 0437630057} Shop No 3, Mdantsane Superspar Shopping Centre, Sandile Rd, Mdantsane, 5219',tiles:[]),
          BasicTile(title: '{PEP STORE 0437622212} Shop 40 Mdantsane City Shopping Centre Cnr Billie Highway &, Qumza Hwy, Mdantsane, 5219',tiles:[]),
        ]),
        BasicTile(title: 'Molteno',tiles:[
          BasicTile(title: '{PEP STORE 0459670068} 55, Smith Street Cnr Smith Street &, Brounger St, Molteno, 5500',tiles:[]),
        ]),
        BasicTile(title: 'Mount Frere',tiles:[
          BasicTile(title: '{PEP STORE 0392550089} Shop 1 Main Street, Mount Frere, 4870',tiles:[]),
          BasicTile(title: '{PEP STORE 0392551682} Shop 4 MT Frere Mall 350 Main ST, Mount Frere, 5090',tiles:[]),
        ]),
        BasicTile(title: 'Ngcobo (previously Engcobo)',tiles:[
          BasicTile(title: '{PEP STORE 0475480079} SHOP 2; BOXER CENTRE; MAIN ROAD; ENCOGBO; 5050',tiles:[]),
        ]),
        BasicTile(title: 'Peddie',tiles:[
          BasicTile(title: '{PEP STORE 0414540430} Plaza, Main Street Peddie, Peddie, 5640',tiles:[]),
          BasicTile(title: '{PEP STORE 0406733558} Bridge St, King William\'s Town, Peddie, 5640',tiles:[]),
        ]),
        BasicTile(title: 'Sterkspruit',tiles:[
          BasicTile(title: '{PEP STORE 0516110297} Shop 3, Mather Mall Main Road, Main Rd, Sterkspruit, 9762',tiles:[]),
          BasicTile(title: '{PEP STORE 0516110421} Shop 21, Parkies Plaza Umlani Road, Sterkspruit, 9762',tiles:[]),
        ]),
        BasicTile(title: 'Sterkstroom',tiles:[
          BasicTile(title: '{PEP STORE 045 966 0391} Shop 4 Moodini Building 57 John Foster Drive, Sterkstroom, 5425',tiles:[]),
        ]),
        BasicTile(title: 'Stutterheim',tiles:[
          BasicTile(title: '{PEP STORE 0436831461} 22 Maclean St, Stutterheim, 4930',tiles:[]),
        ]),
        BasicTile(title: 'Tarkastad',tiles:[
          BasicTile(title: '{PEP STORE 0458460066} Cnrr Murray & Van Reenan Street, Tarkastad, 5370',tiles:[]),
        ]),
        BasicTile(title: 'Tsomo',tiles:[
          BasicTile(title: '{PEP STORE 0474880069} Shop 2, Village Square Main Street, Tsomo, 5400',tiles:[]),
        ]),
        BasicTile(title: 'Whittlesea',tiles:[
          BasicTile(title: '{PEP STORE 0408422072} Main Road, Whittlesea, 5360',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Western Region',tiles:[
        BasicTile(title: 'Aberdeen',tiles:[
          BasicTile(title: '{PEP STORE 0414811925} Shop 8b, 8 Voortrekker St, Aberdeen, 6270',tiles:[]),
        ]),
        BasicTile(title: 'Addo',tiles:[
          BasicTile(title: '{PEP STORE 0422330021} Main St, Addo, 6105',tiles:[]),
        ]),
        BasicTile(title: 'Alexandria',tiles:[
          BasicTile(title: '{PEP STORE 0466530255} Shop 1203 Voortrekker St, Alexandria, 6185',tiles:[]),
        ]),
        BasicTile(title: 'Bedford',tiles:[
          BasicTile(title: '{PEP STORE 0466850500} 21 Donkin St, Bedford, 5780',tiles:[]),
        ]),
        BasicTile(title: 'Cradock',tiles:[
          BasicTile(title: '{PEP STORE 0488811504} 16 Beeren Street, Cradock, 5880',tiles:[]),
          BasicTile(title: '{PEP STORE 0488813481} Winkel NR 43-45, Adderleystraat 43, Cradock, 5880',tiles:[]),
          BasicTile(title: '{PEP STORE 0488810313} 57 Adderley St, Cradock, 5880',tiles:[]),
        ]),
        BasicTile(title: 'Despatch',tiles:[
          BasicTile(title: '{PEP STORE 0419332166} 4, 5 Dr Rabie St, Despatch, 6220',tiles:[]),
        ]),
        BasicTile(title: 'Gqeberha (previously Port Elizabeth)',tiles:[
          BasicTile(title: '{PEP STORE 0414853206} Shop 19 Ziyabuya Shop Centre, CNR Uitenhage & Mkwenkwe ST, Gqeberha, 6201',tiles:[]),
          BasicTile(title: '{PEP STORE 0414660092} Shop NO 2, Daku Square, Gqeberha, 6205',tiles:[]),
          BasicTile(title: '{PEP STORE 0415822319} 54, 56 Govan Mbeki St, Port Elizabeth Central, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0413630496} Shop 6, Greenacres Shopping Centre, 1 Ring Rd, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0413637555} Corner Cape &, C J Langenhoven Dr, Greenacres, Gqeberha, 6045',tiles:[]),
          BasicTile(title: '{PEP STORE 0415856926} 135 Main Street, CBD, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0413600192} 28 Walker Dr, Sydenham, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0414818800} Shop 39, Cleary Park Shopping Centre, Stanford Rd, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0414522313} KOK Winkelsntr Uitbr 9, Gelvandale, Gqeberha, 6016',tiles:[]),
          BasicTile(title: '{PEP STORE 0414814659} West END Shopping Mall, Westend, Gqeberha, 6059',tiles:[]),
          BasicTile(title: '{PEP STORE 0414511338} 31 Durban Rd, Korsten, Gqeberha, 6020',tiles:[]),
          BasicTile(title: '{PEP STORE 0860737000} Shop 99A, Walmer Park Shopping Centre, Main Rd, Walmer Park, Gqeberha, 7600',tiles:[]),
          BasicTile(title: '{PEP STORE 0414548453} Shop NO 4, Super Spar Centre, Sheya Kulati Dr, Deal Party, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0415816430} 6th Avenue Shopping Centre, Cnr 6th Avenue &, Heugh Road Walmer Nelson Mandela Bay, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0413683840} Shop NO 16 17TH Quarter, William Moffet Drive, Gqeberha, 6052',tiles:[]),
          BasicTile(title: '{PEP STORE 0413535008} Shop G, C J Langenhoven Dr, Adcockvale, Gqeberha, 6045',tiles:[]),
          BasicTile(title: '{PEP STORE 0413711497} Shop Lg10, Baywest Mall, 100 Baywest Boulevard, Walker Dr, Extension, Gqeberha, 6001',tiles:[]),
          BasicTile(title: '{PEP STORE 0413600730} Shop No. 14 Hunters Corner of Cape And, Kerr Rd, Parsons Vlei, Gqeberha, 6025',tiles:[]),
        ]),
        BasicTile(title: 'Graaff Reinet',tiles:[
          BasicTile(title: '{PEP STORE 0498911025} Shop 14, 9 Caledon St, Graaff-Reinet, 6280',tiles:[]),
        ]),
        BasicTile(title: 'Grahamstown',tiles:[
          BasicTile(title: '{PEP STORE 0466361319} SHOP A3; MARKET SQUARE MALL; CNR BEAUFORT & WEST STREET; GRAHAMSTOWN; 6139',tiles:[]),
          BasicTile(title: '{PEP STORE 0466361319} Shop 2 Market Square Mall Cnr Beaufort &, West St, Makhanda, 6139',tiles:[]),
          BasicTile(title: '{PEP STORE 0466229484} Shop 45 Pepper Grove Mall, Allen St, Makhanda, 6139',tiles:[]),
          BasicTile(title: '{PEP STORE 0466226107} Shop 46 &, 48 High St, Makhanda, 6140',tiles:[]),
          BasicTile(title: '{PEP STORE 0466224946} Shop, 29A Hill St, Makhanda, 6139',tiles:[]),
          BasicTile(title: '{PEP STORE 0466226731} Shop 1, 31 Hill St, Grahamstown, Makhanda, 6140',tiles:[]),
          BasicTile(title: '{PEP STORE 0466222071} Shop 5B Market Square, Corner Beaufort Street and, West St, Makhanda, 6139',tiles:[]),
        ]),
        BasicTile(title: 'Hankey',tiles:[
          BasicTile(title: '{PEP STORE 0422840237} Shop, Metler Kamp Street, Hankey, 6350',tiles:[]),
          BasicTile(title: '{PEP STORE 0422840237} 506 Metler Kamp Street, Hankey, 6350',tiles:[]),
        ]),
        BasicTile(title: 'Humansdorp',tiles:[
          BasicTile(title: '{PEP STORE 0422951604} Shoprite Centre, 20 Main Road, Humansdorp, 6300',tiles:[]),
          BasicTile(title: '{PEP STORE 0422952354} 65 MAIN ROAD; HUMANSDORP; 6300',tiles:[]),
        ]),
        BasicTile(title: 'Jeffreys Bay',tiles:[
          BasicTile(title: '{PEP STORE 0422933240} Shop 1, 7 Goedehoop St, Jeffreys Bay, 6330',tiles:[]),
          BasicTile(title: '{PEP STORE 0422933240} Shop G72 Fountains Mall Cnr R102 &, St Francis St, Jeffreys Bay, 6330',tiles:[]),
        ]),
        BasicTile(title: 'Joubertina',tiles:[
          BasicTile(title: '{PEP STORE 0123350969} 378 Hoof St, Joubertina, 6410',tiles:[]),
        ]),
        BasicTile(title: 'Kareedouw',tiles:[
          BasicTile(title: '{PEP STORE 0422880616} Corner of Eendracht Street and, Riebeeck St, Kareedouw, 6400',tiles:[]),
        ]),
        BasicTile(title: 'Kenton-on-Sea',tiles:[
          BasicTile(title: '{PEP STORE }',tiles:[]),
        ]),
        BasicTile(title: 'Kirkwood',tiles:[
          BasicTile(title: '{PEP STORE 0422300435}  R336, Kirkwood, 6120',tiles:[]),
        ]),
        BasicTile(title: 'Middelburg',tiles:[
          BasicTile(title: '{PEP STORE 0498421687} Corner Van Reenen & Smith Street Chris Hani Middelburg, 5900',tiles:[]),
          BasicTile(title: '{PEP STORE 0314649503} Shop 4, De Kock Building, Middelburg, 1055',tiles:[]),
        ]),
        BasicTile(title: 'Patensie',tiles:[
          BasicTile(title: '{PEP STORE 0422830806} 14 Atmar Centre, Fred Ferreira Rd, Patensie, 6335',tiles:[]),
        ]),
        BasicTile(title: 'Port Alfred',tiles:[
          BasicTile(title: '{PEP STORE 0466241694} Shop 49A Rosehill Mall, 1 Rosehill Boulevard, Port Alfred, 6107',tiles:[]),
          BasicTile(title: '{PEP STORE 0466242175} 45 Campbell St, Port Alfred, 6170',tiles:[]),
        ]),
        BasicTile(title: 'Somerset East',tiles:[
          BasicTile(title: '{PEP STORE 0422432098} Shop10, Njoli Street, Somerset East, 5850',tiles:[]),
          BasicTile(title: '{PEP STORE } 10 Nojoli St, Somerset East, 5850',tiles:[]),
        ]),
        BasicTile(title: 'Steynsburg',tiles:[
          BasicTile(title: '{PEP STORE 0488840366} 17 Kerk St, Steynsburg, 5920',tiles:[]),
        ]),
        BasicTile(title: 'Uitenhage',tiles:[
          BasicTile(title: '{PEP STORE 0419922722} 305 Caledon St, Uitenhage, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419924289} Shop 1 & 2 & 3a, Binnehof Centre, 60 Market St, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419224953} Shop NO H2A Uitenhage Mall, Market St, Cbd, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419911564} Shop C13 Building Cnr Drostdy Street &, Durban St, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419220147} Shop 3, Corkwood Square, Union Ave, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419911570} Shop 9 - 10 Binnehof Centre, Market St, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419924280} 22 Penford Ave, Penford, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419770410} Shop 1 & 2 & 3a, Binnehof Centre 60 Market Street, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0860737000} Calhage Building, Caledon St, Cannon Hill, Kariega, 6229',tiles:[]),
          BasicTile(title: '{PEP STORE 0419770410} Kwanobuhle Shopping Centre Bereng &, Matanzima Rd, Kariega, 6229',tiles:[]),
        ]),
        BasicTile(title: 'Willowmore',tiles:[
          BasicTile(title: '{PEP STORE 0449231203} Knysnastraat 70, Willowmore, 6445',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Wild Coast',tiles:[
        BasicTile(title: 'Bizana',tiles:[
          BasicTile(title: '{PEP STORE 0392510342} SHOP NO 4; MAGADLELA CENTRE; THOMPSON STREET; BIZANA; 4800',tiles:[]),
          BasicTile(title: '{PEP STORE 0392510070} SHOP NO 6; BOXER CENTRE; MAIN ROAD; BIZANA; 4800',tiles:[]),
          BasicTile(title: '{PEP STORE 0392510655} SHOP NO 11B; MAYABA CENTRE; BIZANA; 4800',tiles:[]),
        ]),
        BasicTile(title: 'Dutywa (previously Idutywa)',tiles:[
          BasicTile(title: '{PEP STORE 0474891129} Shop 2, Corner of Bell &, Richardson Rd, Roads, Idutywa, 5000',tiles:[]),
          BasicTile(title: '{PEP STORE 0474891121} SHOP 3; CENTRAL SQUARE; CNR BELL & RICHARDSON RD; IDUTYWA; 5000',tiles:[]),
          BasicTile(title: '{PEP STORE 0474891195} Shop 17 Idutywa Shopping Center, Corner N2 and, Church St, Idutywa, 5000',tiles:[]),
        ]),
        BasicTile(title: 'Elliotdale',tiles:[
          BasicTile(title: '{PEP STORE 0475770055} SUITE 7 1ST FLOOR; NO 3 THE CRESCENT WEST; WESTWAY OFFICE PARK; DURBAN; 3635',tiles:[]),
        ]),
        BasicTile(title: 'Flagstaff',tiles:[
          BasicTile(title: '{PEP STORE 0392520041} SHOP 2; GONZ BUILDING; MAIN STREET; FLAGSTAFF; 4810',tiles:[]),
        ]),
        BasicTile(title: 'Gatyane (previously Willowvale)',tiles:[
          BasicTile(title: '{PEP STORE 0474991028} Shop NO 1, ERF 103, Willowvale, 5040',tiles:[]),
        ]),
        BasicTile(title: 'Gcuwa (previously Butterworth)',tiles:[
          BasicTile(title: '{PEP STORE 0474914260} 1 KING STREET; BUTTERWORTH; 4960',tiles:[]),
          BasicTile(title: '{PEP STORE 0474914795} SHOP NO 1 2 & 3; 16 KING STREET; BUTTERWORTH; 4960',tiles:[]),
        ]),
        BasicTile(title: 'Lady Frere',tiles:[
          BasicTile(title: '{PEP STORE 0478780161} Shop 1 Indwe St, Lady Frere, 5410',tiles:[]),
        ]),
        BasicTile(title: 'Libode',tiles:[
          BasicTile(title: '{PEP STORE 0475550180} Shop 5 Libode Bokleni Plaza, Main Rd, Libode, 5160',tiles:[]),
          BasicTile(title: '{PEP STORE 0475550180} Shop 10 Libode Bokleni Plaza, Main Rd, Libode, 5160',tiles:[]),
        ]),
        BasicTile(title: 'Lusikisiki',tiles:[
          BasicTile(title: '{PEP STORE 0392531610} Shop 1 Mgaga Building Main Street, Lusikisiki, 4820',tiles:[]),
          BasicTile(title: '{PEP STORE 0392531390} Shop 4 Mgaga Building Lusikisiki Main Street, Lusikisiki, 4820',tiles:[]),
          BasicTile(title: '{PEP STORE 0392531610} 9 Main Street, Lusikisiki, 4820',tiles:[]),
        ]),
        BasicTile(title: 'Matatiele',tiles:[
          BasicTile(title: '{PEP STORE 0342711705} Shop 21 Nqutu Plaza, Main Road, Nqutu, KwaZulu-Natal, Matatiele',tiles:[]),
          BasicTile(title: '{PEP STORE 0343154255}  Shop 2 Corner Allen Street & Scott Street, Newcastle, KwaZulu-Natal, Matatiele',tiles:[]),
          BasicTile(title: '{PEP STORE 0397373682} Shop 14, Rhino Plaza, Station Rd, Matatiele, 4730',tiles:[]),
          BasicTile(title: '{PEP STORE 0397373001} Station Rd, Matatiele, 4730',tiles:[]),
          BasicTile(title: '{PEP STORE 0397373541} Shop 8, Ellerines, 47 Market St, Matatiele, 4730',tiles:[]),
          BasicTile(title: '{PEP STORE 0397374562} Shop NO 26B, Rhino Shopping Centre, Matatiele, 4730',tiles:[]),
          BasicTile(title: '{PEP STORE 0397373599} 3 Market St, Matatiele, 4730',tiles:[]),
          BasicTile(title: '{PEP STORE 0397373043} Station Rd, Matatiele, 4730',tiles:[]),
        ]),
        BasicTile(title: 'Mount Ayliff',tiles:[
          BasicTile(title: '{PEP STORE 0392540104} Shop 5 Main Street, Mount Ayliff, 4435',tiles:[]),
        ]),
        BasicTile(title: 'Mount Fletcher',tiles:[
          BasicTile(title: '{PEP STORE 0392570065} Shop 1, Pep & Ellerines Building Main Street, Mount Fletcher, 4770',tiles:[]),
        ]),
        BasicTile(title: 'Mount Frere',tiles:[
          BasicTile(title: '{PEP STORE 0392550089} Shop 1 Main Street, Mount Frere, 4870',tiles:[]),
          BasicTile(title: '{PEP STORE 0392551682} Shop 4 MT Frere Mall 350 Main ST, Mount Frere, 5090',tiles:[]),
        ]),
        BasicTile(title: 'Mthatha (previously Umtata)',tiles:[
          BasicTile(title: '{PEP STORE 0475324328} Shop 2, Madeira Centre Cnr Elliot &, Madeira St, Norwood, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475324328} Shop 2, Madeira Centre Cnr Elliott Street &, Madeira St, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475324688} Shop 3 Mthatha Plaza, 35 Nelson Mandela Dr, Norwood, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475311265} Shop 3 Mandla Ka Moya Building Cnr York Street & Elliot Street, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475322178} Shop Building, 105 York Rd, Norwood, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475311389} Shop 1 Triangle Development Building, Chatham St, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475310551} Shop 89 Mthatha Ngebs City, Errol Spring Ave, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475310055} Shop 7, Circus Triangle Cnr Sutherland Street & OR Tambo Street, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475325805} Shop 2 Munipata Building Cnr Sutherland Street &, Owen St, Mthatha, 5099',tiles:[]),
          BasicTile(title: '{PEP STORE 0475326587} Shop 1, 9 Sprigg St, Norwood, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475323935} Shop No 2, Hambert Centre, Eagle St, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475310111} Shop 70 Circus Triangle, Sutherland St, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475323935} Shop 1, 46 York Rd, Norwood, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475311479} Shop 70, Circus Triangle Mall, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0475313364} Shop NO 7, Mthatha Plaza, Mthatha, 5100',tiles:[]),
          BasicTile(title: '{PEP STORE 0215329178} Shop 57A Mthatha Circus Triangle, Mthatha, 5100',tiles:[]),

        ]),
        BasicTile(title: 'Ngqeleni',tiles:[
          BasicTile(title: '{PEP STORE 0475680112} 56 King George Street, Ngqeleni, 5140',tiles:[]),
        ]),
        BasicTile(title: 'Nqamakwe',tiles:[
          BasicTile(title: '{PEP STORE 0474870183} ERF 18 Main Road, Nqamakwe, 4990',tiles:[]),
        ]),
        BasicTile(title: 'Port St Johns',tiles:[
          BasicTile(title: '{PEP STORE 0475641211} Shop NO 1, Meeg Bank Centre, Port St Johns, 5120',tiles:[]),
        ]),
        BasicTile(title: 'Qumbu',tiles:[
          BasicTile(title: '{PEP STORE 0475530005} Shop 1 Main St, Qumbu, 5180',tiles:[]),
          BasicTile(title: '{PEP STORE 0392580080} Shop No 4 Qumbu Plaza, N2, Qumbu, 5180',tiles:[]),
          BasicTile(title: '{PEP STORE 0475530241} Shop 3 Qumbu Retail Centre, Aubert St, Qumbu, 5180',tiles:[]),
          BasicTile(title: '{PEP STORE 0475530085} Shop 26 Qumbu Shopping Centre, 266 Hope St, Qumbu, 5180',tiles:[]),
        ]),
        BasicTile(title: 'Tabankulu (previously Ntabankulu)',tiles:[
          BasicTile(title: '{PEP STORE 0392580080} Shop 1, Ntabankulu Plaza 33 Main Street, Tabankulu, 5130',tiles:[]),
          BasicTile(title: '{PEP STORE 0392580082} Shop 7 Ntabankulu Plaza, Main Street, Tabankulu, 5130',tiles:[]),
        ]),
        BasicTile(title: 'Tsolo',tiles:[
          BasicTile(title: '{PEP STORE 0475420299} Shop 2, Boxer Centre, Main Road, Tsolo, 5170',tiles:[]),
          BasicTile(title: '{PEP STORE 0475420002} Shop No 2 Boxer Centre Main Street, Tsolo, 5170',tiles:[]),
        ]),
      ]),
    ]);
    tiles.add(easternCape);

    BasicTile westernCape = BasicTile(title:'Western Cape',tiles: [
      BasicTile(title: 'Cape Winelands District Municipality',tiles:[
        BasicTile(title: 'Ashton',tiles:[
          BasicTile(title: '{PEP STORE 0236151695} 1480 Main Rd, Ashton, 6715',tiles:[]),
        ]),
        BasicTile(title: 'Bonnievale',tiles:[
          BasicTile(title: '{PEP STORE 0236162690} Shop, 93, Main Rd, Bonnievale, 6730',tiles:[]),
        ]),
        BasicTile(title: 'Ceres',tiles:[
          BasicTile(title: '{PEP STORE 0233121630} 38 Vos St, Ceres, 6835',tiles:[]),
          BasicTile(title: '{PEP STORE 0233121630} Shop 5 Shoprite Centre, 48 Voortrekker St, Ceres, 6835',tiles:[]),
          BasicTile(title: '{PEP STORE 0233122240} Corner of Vos Street and, Oranje St, Ceres, 6835',tiles:[]),
        ]),
        BasicTile(title: 'De Doorns',tiles:[
          BasicTile(title: '{PEP STORE 0233562515} Voortrekkerweg 22A, DE Doorns, De Doorns, 6875',tiles:[]),
          BasicTile(title: '{PEP STORE 0233121630} Shop 5 Shoprite Centre, 48 Voortrekker St, Ceres, 6835',tiles:[]),
        ]),
        BasicTile(title: 'Franschhoek',tiles:[
          BasicTile(title: '{PEP STORE 0218763642} Shop 6 Le Gare Shopping Centre, Main Rd, Franschhoek, 7560',tiles:[]),
        ]),
        BasicTile(title: 'Kayamandi',tiles:[
          BasicTile(title: '{PEP STORE 0218833548} Shop NO 11 Kayamandi Shopping, Centre George Blake ST, Stellenbosch, 7600',tiles:[]),
        ]),
        BasicTile(title: 'Klapmuts',tiles:[
          BasicTile(title: '{PEP STORE 0218755046} Shop 5 Winelands Centre, Klapmuts, Old Paarl Rd, R101, Paarl, 7646',tiles:[]),
        ]),
        BasicTile(title: 'Kylemore',tiles:[
          BasicTile(title: '{PEP STORE 0218755012}  Old Paarl Rd, Klapmuts, 7625',tiles:[]),
        ]),
        BasicTile(title: 'Montagu',tiles:[
          BasicTile(title: '{PEP STORE 0236141970} 37 Bath St, Bergsig, Montagu, 6720',tiles:[]),
        ]),
        BasicTile(title: 'Paarl',tiles:[
          BasicTile(title: '{PEP STORE 0215724911} Shop 4953, Shoprite Centre Corner Van Der Lingen Street &, Bergrivier Blvd S, Lemoenkloof, Paarl, 7620',tiles:[]),
          BasicTile(title: '{PEP STORE 0218634480} Shop 12, New Eskdale St, Southern Paarl, Paarl, 7646',tiles:[]),
          BasicTile(title: '{PEP STORE 0218725690} Shop 11, Old Rembrandt Shopping Centre, Cnr Lady Grey & Berg River, 7646, Paarl, 7646',tiles:[]),
          BasicTile(title: '{PEP STORE 0218684914} Shop 20 Midway Shopping Centre Corner Wamkilekele &, Jan Van Riebeeck Dr, Paarl, 7646',tiles:[]),
          BasicTile(title: '{PEP STORE 0218724665} 97 Lady Grey St, Esterville, Paarl, 7646',tiles:[]),
          BasicTile(title: '{PEP STORE 0218701452} Shop 37B Shoprite Centre, Corner Bergriver Boulevard &, Van Der Lingen, Street, Paarl, 7646',tiles:[]),
        ]),
        BasicTile(title: 'Prince Alfred Hamlet',tiles:[
          BasicTile(title: '{PEP STORE 0233133624} Shop NO 19C Hamlet Centre, 19 Voortrekker Street, Prince Alfred Hamlet, 6840',tiles:[]),
        ]),
        BasicTile(title: 'Rawsonville',tiles:[
          BasicTile(title: '{PEP STORE 0233491632} Shop 1 Van Riebeeck St, Rawsonville, 6845',tiles:[]),
        ]),
        BasicTile(title: 'Robertson',tiles:[
          BasicTile(title: '{PEP STORE 0236263651} Shop, 32, Reitz St, Robertson, 6705',tiles:[]),
        ]),
        BasicTile(title: 'Touws River',tiles:[
          BasicTile(title: '{PEP STORE 0233581079} Corner East &, Logan St, Touws River, 6880',tiles:[]),
        ]),
        BasicTile(title: 'Tulbagh',tiles:[
          BasicTile(title: '{PEP STORE 0232300014} Shop 2, Koopmans Building, Van Der Stel St, Tulbagh, 6820',tiles:[]),
        ]),
        BasicTile(title: 'Wellington',tiles:[
          BasicTile(title: '{PEP STORE 0218732283} Shop, 40, Church St, Wellington, 7654',tiles:[]),
        ]),
        BasicTile(title: 'Wolseley',tiles:[
          BasicTile(title: '{PEP STORE 0232310203} Eufeesstraat 18, Wolseley, 6830',tiles:[]),
        ]),
        BasicTile(title: 'Worcester',tiles:[
          BasicTile(title: '{PEP STORE 0233472076} Cnr Adderley &, Russell St, Worcester, 6849',tiles:[]),
          BasicTile(title: '{PEP STORE 0233475425} 13 Mountain Mill Dr, Hospital Hill, Worcester, 6850',tiles:[]),
          BasicTile(title: '{PEP STORE 0233472076} Corner High and, Stockenstrom St, Worcester, 6850',tiles:[]),
          BasicTile(title: '{PEP STORE 0233474655} 116 Durban St, Worcester, 6849',tiles:[]),
          BasicTile(title: '{PEP STORE 0233472461} H/V Adderley EN Russelstrate, Worcester, 6850',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Central Karoo District Municipality',tiles:[
        BasicTile(title: 'Beaufort West',tiles:[
          BasicTile(title: '{PEP STORES 0234153985} Shop 108 Donkin St, Beaufort West, 6970',tiles:[]),
        ]),
        BasicTile(title: 'Laingsburg',tiles:[
          BasicTile(title: '{PEP STORES 0235511220} Voortrekker St, Laingsburg, 6900',tiles:[]),
        ]),
        BasicTile(title: 'Prince Albert',tiles:[
          BasicTile(title: '{PEP STORES 0235411394} Church St, Prince Albert, 6930',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'City of Cape Town Metropolitan Municipality',tiles:[
        BasicTile(title: 'Bellville',tiles:[
          BasicTile(title: '{PEP STORE 0219452351} Harmour House, 145 Voortrekker Rd, Bellville, Cape Town, 7530',tiles:[]),
          BasicTile(title: '{PEP STORE 0219484659} Shop 38 & 39, Middestad Mall, 1624 Charl Malan St, Cape Town, 7530',tiles:[]),
        ]),
        BasicTile(title: 'Blue Downs',tiles:[
          BasicTile(title: '{PEP STORE 0219091757} Shop 18 Cavalier Retail Centre Cnr Hindle Road & Eerste River Way, Blue Downs, Cape Town, 7100',tiles:[]),
        ]),
        BasicTile(title: 'Brackenfell',tiles:[
          BasicTile(title: '{PEP STORE 0219810635} Shop N71 Cape Gate Centre Cnr Okavango &, De Bron Rd, Brackenfell, Cape Town, 7560',tiles:[]),
          BasicTile(title: '{PEP STORE 0219839590} Shop 034 Fairbridge Mall, 311 Old Paarl Rd, Brackenfell, Cape Town, 7550',tiles:[]),
          BasicTile(title: '{PEP STORE 0219839700} Shop U68 Cape Gate Shopping Centre Cnr Okavango &, De Bron Rd, Brackenfell, Cape Town, 7570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219817694} Shop 3840, Hypermarket Cnr Jeanette Road &, Old Paarl Rd, Brackenfell, Cape Town, 7560',tiles:[]),
        ]),
        BasicTile(title: 'Cape Town',tiles:[
          BasicTile(title: '{PEP STORE 0216333163} SHOP 12; VAN GATE MALL; VANGUARD DRIVE; ATHLONE; 7764',tiles:[]),
          BasicTile(title: '{PEP STORE 0216839637} SHOP NO G24; STADIUM ON MAIN; MAIN ROAD; CLAREMONT; 7708',tiles:[]),
          BasicTile(title: '{PEP STORE 0214250880} SHOP S47A; GOLDEN ACRE SHOPS; ADDERLEY STREET; CAPE TOWN; 8001',tiles:[]),
          BasicTile(title: '{PEP STORE 0216334149} SHOP 31; GUGULETHU SQUARE; NY 3 & NY 6; GUGULETHU; CAPE TOWN; 7750',tiles:[]),
          BasicTile(title: '{PEP STORE 0216950134} SHOP 8; LANGA JUNCTION; BRINTON STREET; LANGA; 7455',tiles:[]),
        ]),
        BasicTile(title: 'Durbanville',tiles:[
          BasicTile(title: '{PEP STORE 0219753463} Shop 6, Durbanville Town Centre, 33 Wellington Rd, Durbanville, Cape Town, 7550',tiles:[]),
        ]),
        BasicTile(title: 'Eerste River,',tiles:[
          BasicTile(title: '{PEP STORE 0219041422} Shop 22A City Center, Van Riebeeck Rd, Eerste River, Cape Town, 7100',tiles:[]),
          BasicTile(title: '{PEP STORE 0219042370} Shop 23 N1 Grand Central Shopping Centre, Plein St, Eerste River, Cape Town, 7100',tiles:[]),
        ]),
        BasicTile(title: 'Elsie\'s River,',tiles:[
          BasicTile(title: '{PEP STORE 0219313298} Hashims Centre Cnr Halt Road &, 28th Ave, Elsies Rivier, Cape Town, 7480',tiles:[]),
          BasicTile(title: '{PEP STORE 0219324175} 67 Halt Rd, Elsies Rivier, Cape Town, 7480',tiles:[]),
        ]),      
        BasicTile(title: 'Fish Hoek',tiles:[
          BasicTile(title: '{PEP STORE 0217822647} Triangle Building, 60 Main Rd, Fish Hoek, Cape Town, 7975',tiles:[]),
        ]),
        BasicTile(title: 'Goodwood',tiles:[
          BasicTile(title: '{PEP STORE } ',tiles:[]),
        ]),
        BasicTile(title: 'Gordon\'s Bay',tiles:[
          BasicTile(title: '{PEP STORE } Shop No 3, Shopping Centre, Sir Lowry\'s Pass Rd, Gordon\'s Bay, Cape Town, 7151',tiles:[]),
        ]),
        BasicTile(title: 'Guguletu',tiles:[
          BasicTile(title: '{PEP STORE 0216334149} Ny1, Guguletu, NY1 Gugulethu, 7750',tiles:[]),
        ]),
        BasicTile(title: 'Hout Bay',tiles:[
          BasicTile(title: '{PEP STORE 0217906791} Shop NO 3, 4 & 5, Hout Bay, 7806',tiles:[]),
        ]),
        BasicTile(title: 'Khayelitsha',tiles:[
          BasicTile(title: '{PEP STORE 0213619617} Shop 48, Khayelitsha Mall Corner Steve Biko and Walter Sisulu Khayalitsha, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213870074} Shop 19 Site C placa Cnr Solomon Tshuku &, Idada Ave, Khayelitsha, Cape Town, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213613590} Shop 19 Nonqubela Link Mall, Sulani Dr, Khayelitsha, Cape Town, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213626110} Shop 47 Khayelitsha Shopping Centre Corner Steve Biko Road and Walter Sisulu Road Khayelitsh, Cape Town, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213870110} Shop 5 Mandalay Mall, Swartklip Rd, Khayelitsha, Cape Town, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213626110} Shop 20B Makhaza Shopping Centre Lansdown road Makhaza, Cape Town, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213614816} Shop 25 Nonqubela Link Mall, Sulami Drive, Khayalitsha, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213870119} Shop 13 Mandalay Mall, Swartklip Rd, Khayelitsha, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0213626110} Shop 4 Makhaza Centre, Lansdowne Rd, Khayelitsha, Cape Town, 7784',tiles:[]),
          BasicTile(title: '{PEP STORE 0860737000} Shop 18 Philippi Plaza, Govan Mbek Drive, Khayelitsha, 7750',tiles:[]),
        ]),
        BasicTile(title: 'Kraaifontein',tiles:[
          BasicTile(title: '{PEP STORE 0219871989} Shop 7, Bloch Centre, 18 Van Riebeeck St, Kraaifontein, 7570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219872689} Shop No 7 Shoprite Centre Cnr Botfontein &, Voortrekker Rd, Kraaifontein, 7570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219881623} Shopping Centre, Shop 15 & 16 Brighton Square, Ascot St, Kraaifontein, Cape Town, 7570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219888021} Shop 2 Shoprite Centre Corner Voortrekker &, Botfontein Rd, Cape Town, 7570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219883974} Shop 10 Block Centre, 18 Van Riebeeck St, Kraaifontein, 7570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219034062} Shop 11 Okavango Crossing Cnr Langeberg &, Okavango Rd, Kraaifontein, 7570',tiles:[]),
        ]),
        BasicTile(title: 'Kuils River',tiles:[
          BasicTile(title: '{PEP STORE 0219034062} Voortrekker Centre, Van Riebeeck Rd, Kuils River, 7580',tiles:[]),
        ]),
        BasicTile(title: 'Langa',tiles:[
          BasicTile(title: '{PEP STORE 0216950134} Langa Junction, Brinton St, Langa, Cape Town, 7500',tiles:[]),
        ]),
        BasicTile(title: 'Macassar',tiles:[
          BasicTile(title: '{PEP STORE 0218572468} Shop 14 Macassar Town Centre Link Ave Burg &, Hospital St, Macassar, 7130',tiles:[]),
        ]),
        BasicTile(title: 'Melkbosstrand',tiles:[
          BasicTile(title: '{PEP STORE 0215531805} Shop 4 Birkenhead Centre Corner Birkenhead and, Otto du Plessis Dr, Cape Town, 7441',tiles:[]),
        ]),
        BasicTile(title: 'Mfuleni',tiles:[
          BasicTile(title: '{PEP STORE 0219090713} Shop NO 5, Shoprite Centre, Cape Town, 7100',tiles:[]),
        ]),
        BasicTile(title: 'Milnerton',tiles:[
          BasicTile(title: '{PEP STORE 0215511043} Koeberg Rd, Milnerton, Cape Town, 7441',tiles:[]),
          BasicTile(title: '{PEP STORE 0215567202} Shop No 2 Roma Centre Winning Way & Coswoth Cres, Cape Town, 7441',tiles:[]),
          BasicTile(title: '{PEP STORE 0215564868} Shop 2B,3A,3B, The Stables Shopping Centre, Potsdam Rd, Cape Town, 7441',tiles:[]),
        ]),
        BasicTile(title: 'Mitchell\'s Plain',tiles:[
          BasicTile(title: '{PEP STORE 0213762060} Shop 5 & 6 Promenade Mall Shopping Centre, Cape Town, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213763661} Shop 33B Liberty Promenade, CNR OF AZ Berman Drive AND, Mitchells Plain, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213745247} Shop 86 Westgate Mall, Mitchells Plain, Cape Town, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213921990} Shop 4, Rondo Lane, Mitchells Plain Town Centre, Cape Town, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213760093} Shop 68 Promenade Shopping Centre, Corner Az Berman Drive &, Morgenster Rd, Mitchells Plain, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213925683} 23 Symphony Walk, Mitchells Plain Town Centre, Cape Town, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213761106} Shop 37, Promenade Shop Cntr, Mitchells Plain, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0213710948} Shop E3 Watergate Centre, Corner Az Berman & R300, Mitchells Plain, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0860737000} Shop D7 Watergate Centre, Corner Az Berman & R300, Mitchells Plain, Cape Town, 7786',tiles:[]),
        ]),
        BasicTile(title: 'Nyanga',tiles:[
          BasicTile(title: '{PEP STORE 0216918331} Shop 51 - 52 Nyanga Junction Shop Centre, Duinefontein Rd, Manenberg, Cape Town, 7785',tiles:[]),
          BasicTile(title: '{PEP STORE 0216910069} Shop Fc5 Nyanga Junction Shopping Centre, Duinefontein Rd, Nyanga, Cape Town, 7764',tiles:[]),
        ]),
        BasicTile(title: 'Parow',tiles:[
          BasicTile(title: '{PEP STORE 0219305955} Shop NO 9, Parow Centre, Cape Town, 7500',tiles:[]),
          BasicTile(title: '{PEP STORE 0219398877} Stasieweg 24B, Parow, 7500',tiles:[]),
          BasicTile(title: '{PEP STORE 0219112263} Cloete St, Parow, Cape Town, 7500',tiles:[]),
          BasicTile(title: '{PEP STORE 0219332938}  Balvenie Ave, Cravenby, Cape Town, 7490',tiles:[]),
          BasicTile(title: '{PEP STORE 0219345126} Shop NO 10 Cavalier Retail Centre, Modderdam Road, Cape Town, 7490',tiles:[]),
          BasicTile(title: '{PEP STORE 0219526185} Shop 4 & 5 Airport Shopping Centre, Parow, Cape Town, 7493',tiles:[]),
        ]),
        BasicTile(title: 'Somerset West',tiles:[
          BasicTile(title: '{PEP STORE 0218520106} Shop 8, Centenary Dr, Somerset West, Cape Town, 7130',tiles:[]),
          BasicTile(title: '{PEP STORE 0218523212} No 1 Somerset Centre 121 Main Street, Somerset West, 7129',tiles:[]),
          BasicTile(title: '{PEP STORE 0218524458} Shop 13 Vineyard Shopping Centre Corner of Andre Pretorius and Church Street, Somerset West, Cape Town, 7130',tiles:[]),
        ]),
        BasicTile(title: 'Strand',tiles:[
          BasicTile(title: '{PEP STORE 0218544982} Swanepoel Trust Building, 20 Wesley St, Strand, Cape Town, 7140',tiles:[]),
          BasicTile(title: '{PEP STORE 0218544119} Broadway Boulevard and, Onverwacht Rd, Strand, 7140',tiles:[]),
          BasicTile(title: '{PEP STORE 0218534929} Shop 11, Dorpsmeent Centre Cnr Mills &, Fagan St, Strand, Cape Town, 7140',tiles:[]),
          BasicTile(title: '{PEP STORE 0218531776} 11, Shoprite Centre, Broadway Blvd, Strand, Cape Town, 7140',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Garden Route District Municipality',tiles:[
        BasicTile(title: '{George Garden Route Mall PEP STORES 044 887 0410} Shop 33 Garden Route Mall Confluence OF THE N2 Highway &, Knysna Rd, George, 6546',tiles:[]),
      ]),
      BasicTile(title: 'Klein Karoo Municipality',tiles:[
        BasicTile(title: 'Barrydale',tiles:[
          BasicTile(title: '{PEP STORES 0285721362} 15 Bain St, Barrydale, 6750',tiles:[]),
        ]),
        BasicTile(title: 'Calitzdorp',tiles:[
          BasicTile(title: '{PEP STORES 0442133381} Voortrekker Rd, Calitzdorp, 6660',tiles:[]),
        ]),
        BasicTile(title: 'Ladismith',tiles:[
          BasicTile(title: '{PEP STORES 0285511461} 14 Van Riebeeck St, Ladismith, 6655',tiles:[]),
        ]),
        BasicTile(title: 'Montagu',tiles:[
          BasicTile(title: '{PEP STORES 0236141970} 37 Bath St, Bergsig, Montagu, 6720',tiles:[]),
        ]),
        BasicTile(title: 'Oudtshoorn',tiles:[
          BasicTile(title: '{PEP STORES 0442724767} CNR High & ST John\'s Street CBD, Oudtshoorn, 6620',tiles:[]),
          BasicTile(title: '{PEP STORES 0442727572} Union Square Centre, Adderley Street, 104 High St, Oudtshoorn, 6620',tiles:[]),
          BasicTile(title: '{PEP STORES 0442723106} Shop 29 Queens Mall, Voortrekker Road, Oudtshoorn, 6620',tiles:[]),
          BasicTile(title: '{PEP STORES 0442727966} Simonest Building, High St, Oudtshoorn, 6620',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Overberg District Municipality',tiles:[
        BasicTile(title: 'Arniston',tiles:[
          BasicTile(title: '{PEP STORE 0284242175} Shop 3 Overberg Shopping Centre 16 Church Street, Bredasdorp, 7280',tiles:[]),
        ]),
        BasicTile(title: 'Birkenhead',tiles:[
          BasicTile(title: '{PEP STORE 0215531805} Shop 4 Birkenhead Centre Corner Birkenhead and, Otto du Plessis Dr, Cape Town, 7441',tiles:[]),
        ]),
        BasicTile(title: 'Bredasdorp',tiles:[
          BasicTile(title: '{PEP STORE 0284251323} Shop 3, Corner Church &, All Saints Rd, Street, Bredasdorp, 7280',tiles:[]),
          BasicTile(title: '{PEP STORE 0284242175} Shop 3 Overberg Shopping Centre 16 Church Street, Bredasdorp, 7280',tiles:[]),
          BasicTile(title: '{PEP STORE 0284251334} Shop 2, Corner Sealy Street &, Buitenkant St, Bredasdorp, 7280',tiles:[]),
        ]),
        BasicTile(title: 'Caledon',tiles:[
          BasicTile(title: '{PEP STORE 0282141153} Shop 19 Haw St, Caledon, 7230',tiles:[]),
          
        ]),
        BasicTile(title: 'Elim',tiles:[
          BasicTile(title: '{PEP STORE 0155563117} SHOP 32; HUBYENI SHOPPING CENTRE; 906 WARD 12 MAIN ROAD; ELIM VILLAGE; ELIM; 7284',tiles:[]),
          BasicTile(title: '{PEP STORE 0155563768} ELIM MALL; ELIM SHOPPING CENTRE ; CNR R578 & BANDELIERSKOP; ELIM; 7284',tiles:[]),
        ]),
        BasicTile(title: 'Gansbaai',tiles:[
           BasicTile(title: '{PEP STORE 0283840401} SHOP 2; 47 MAIN ROAD; GANSBAAI; 7220',tiles:[]),
           BasicTile(title: '{PEP STORE 0283840423} SHOP 15; GREAT WHITE JUNCTION; MAIN ROAD; GANSBAAI; 7220',tiles:[]),
        ]),
        BasicTile(title: 'Giyani',tiles:[
          BasicTile(title: '{PEP STORE 0158121441} SHOP 1; MASINGITA SHOPPING CENTRE; CNR MASINGITA & GIYANI ROAD; GIYANI; 0826',tiles:[]),
          BasicTile(title: '{PEP STORE 0158122967} SHOP 11; MASINGITA PLAZA; MALAMULELE ROAD; GIYANI; 0832',tiles:[]),
          BasicTile(title: '{PEP STORE 0158123565} SHOP 4; GIYANI PLAZA; PHASE 1-5; GIYANI; 0826',tiles:[]),
          BasicTile(title: '{PEP STORE 0158120652} SHOP 6; MASINGITA MALL; MASINGITA ROAD; GIYANI; 0832',tiles:[]),
          BasicTile(title: '{PEP STORE 0158123321} SHOP 7; GIYANI SHOPPING CENTRE; GIYANI; 0826',tiles:[]),
        ]),
        BasicTile(title: 'Grabouw',tiles:[
           BasicTile(title: '{PEP STORE 0218593401} 3 KEEROM STREET; GRABOUW; 7160',tiles:[]),
        ]),
        BasicTile(title: 'Hermanus',tiles:[
          BasicTile(title: '{PEP STORES 0283130509} 113 Main Rd, Hermanus, 7200',tiles:[]),
          BasicTile(title: '{PEP STORES 0283130194} Shop 3, 4, 5 and 6, Barkley Building, 1 Arum Rd, Hermanus, 7200',tiles:[]),
          BasicTile(title: '{PEP STORES 0283122330} Shop No 53, Whale Coast Mall, Hermanus, 7200',tiles:[]),
          BasicTile(title: '{PEP STORES 0283121807} Shop B15 Gateway Centre, Main Rd, Hermanus, 7200',tiles:[]),
        ]),
        BasicTile(title: 'Kleinmond',tiles:[
          BasicTile(title: '{PEP STORES 0282714239} Spar Centre Cnr Main Road &, Botriver Rd, Kleinmond, 7195',tiles:[]),
        ]),
        BasicTile(title: 'Riviersonderend',tiles:[
          BasicTile(title: '{PEP STORES 0282611243} 36 Main Rd, Riviersonderend, 7250',tiles:[]),
        ]),
        BasicTile(title: 'Swellendam',tiles:[
          BasicTile(title: '{PEP STORES 0285141655} Goodhope Shopping Centre, 90 Voortrekker Road, Swellendam, 6740',tiles:[]),
          BasicTile(title: '{PEP STORES 0860737000} Shop, 19 Voortrekker Street, Swellendam, 6740',tiles:[]),
        ]),
        BasicTile(title: 'Villiersdorp',tiles:[
          BasicTile(title: '{PEP STORES 0288401545} Hoofstraat 17, Villiersdorp, 7170',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'West Coast District Municipality',tiles:[
        BasicTile(title: 'Citrusdal',tiles:[
          BasicTile(title: '{PEP STORES 0229212837} Voortrekker St, Citrusdal, 7340',tiles:[]),
        ]),
        BasicTile(title: 'Clanwilliam',tiles:[
          BasicTile(title: '{PEP STORES 0272131165} 1 Main Street, Clanwilliam, 8135',tiles:[]),
          BasicTile(title: '{PEP STORES 0274821230} Shop 1b Main Street, Clanwilliam, 8135',tiles:[]),
        ]),
        BasicTile(title: 'Darling',tiles:[
          BasicTile(title: '{PEP STORES 0224922879} 14 Main St, Darling, 7345',tiles:[]),
        ]),
        BasicTile(title: 'Hopefield',tiles:[
          BasicTile(title: '{PEP STORES 0227230096} Corner of Church and Voortrekker Road, Hopefield, 7355',tiles:[]),
        ]),
        BasicTile(title: 'Klawer',tiles:[
          BasicTile(title: '{PEP STORES 0272161207} Bruwer Street, Klawer, 8145',tiles:[]),
        ]),
        BasicTile(title: 'Lamberts Bay',tiles:[
          BasicTile(title: '{PEP STORES 0274321506} Cnr Burrel Street &, Voortrekker St, Lambert\'s Bay, 8130',tiles:[]),
        ]),
        BasicTile(title: 'Langebaan',tiles:[
          BasicTile(title: '{PEP STORES 0227720730} Cnr Oostewal & Antonisine Street, Langebaan, 7357',tiles:[]),
          BasicTile(title: '{PEP STORES 0122566425}  Shop 5 Laguna Mall, Mykonos St, Langebaan, 7357',tiles:[]),
        ]),
        BasicTile(title: 'Lutzville',tiles:[
          BasicTile(title: '{PEP STORES 0272171260} 12 Namakwa St, Lutzville, 8165',tiles:[]),
        ]),
        BasicTile(title: 'Malmesbury',tiles:[
          BasicTile(title: '{PEP STORES 0224871198} Corner Hill and, Piet Retief St, Malmesbury, 7300',tiles:[]),
          BasicTile(title: '{PEP STORES 0224871577} Shop 22 De Bron Centre, Voortrekker Rd, Malmesbury, 7300',tiles:[]),
          BasicTile(title: '{PEP STORES 0224822750} Cnr Voortrekker Road and, St John St, Malmesbury, 7299',tiles:[]),
        ]),
        BasicTile(title: 'Moorreesburg',tiles:[
          BasicTile(title: '{PEP STORES 0224331497} Shop 24, 26 Main St, Moorreesburg, 7310',tiles:[]),
        ]),
        BasicTile(title: 'Piketberg',tiles:[
          BasicTile(title: '{PEP STORES 0229131665} Shop NO 1 Piquetberg Mall, Long Street, Piketberg, 7320',tiles:[]),
        ]),
        BasicTile(title: 'Porterville',tiles:[
          BasicTile(title: '{PEP STORES 0229312285} H/V Porter EN Voortrekkerstr, Porterville, 6810',tiles:[]),
        ]),
        BasicTile(title: 'Riebeek West',tiles:[
          BasicTile(title: '{PEP STORES 0224612201} Shop NO ERF 1649, Main Road, Riebeeck West, 7306',tiles:[]),
        ]),
        BasicTile(title: 'Saldanha',tiles:[
          BasicTile(title: '{PEP STORES 0227144095} Eigelaar Shopping Centre, Saldanha Rd, Saldanha, 7395',tiles:[]),
        ]),
        BasicTile(title: 'Vanrhynsdorp',tiles:[
          BasicTile(title: '{PEP STORES 0272191054} 2 Voortrekker Rd, Vanrhynsdorp, 8170',tiles:[]),
        ]),
        BasicTile(title: 'Velddrif',tiles:[
          BasicTile(title: '{PEP STORES 0227831321} 31 Jameson St, Laaiplek, Velddrif, 7365',tiles:[]),
        ]),
        BasicTile(title: 'Vredenburg',tiles:[
          BasicTile(title: '{PEP STORES 0227131629} Hoofstraat 42B, Vredenburg, 7380',tiles:[]),
          BasicTile(title: '{PEP STORES 0227135562} Shop NO U41, West Coast Mall, Vredenburg, 7380',tiles:[]),
        ]),
        BasicTile(title: 'Vredendal',tiles:[
          BasicTile(title: '{PEP STORES 0272131105} 91 Voortrekker Rd, Vanrhynsdorp, Vredendal, 8160',tiles:[]),
          BasicTile(title: '{PEP STORES 0272131047} 26 Voortrekker Rd, Vredendal, 8160',tiles:[]),
        ]),
      ]),
    ]);
    tiles.add(westernCape);

    BasicTile northWest = BasicTile(title:'North West',tiles: [
      BasicTile(title: 'Dr Ruth Segomotsi Mompati District Municipality',tiles:[
        BasicTile(title: 'Ganyesa',tiles:[
          BasicTile(title: '{PEP STORE 0539983388} Shop 9 & 10 Ganyesa Shopping Complex Toska Road, Ganyesa, 8613',tiles:[]),
        ]),
        BasicTile(title: 'Mafikeng',tiles:[
          BasicTile(title: '{PEP STORE} 24 Shippard St, Golf View, Mahikeng, 2745',tiles:[]),
        ]),
        BasicTile(title: 'Schweizer-Reneke',tiles:[
          BasicTile(title: '{PEP STORE 0539631110} Olivierstraat 8, Schweizer Reneke, Schweizer Reineke, 2780',tiles:[]),
        ]),
        BasicTile(title: 'Stella',tiles:[
          BasicTile(title: '{PEP STORE 0539830229} 1 Mynhardt Trust Building, 249 Stella St, Stella, 8650',tiles:[]),
        ]),
        BasicTile(title: 'Taung',tiles:[
          BasicTile(title: '{PEP STORE 0539941673} Shop 20 Taung Forum Shop Centre Station Road, Taung, 8584',tiles:[]),
          BasicTile(title: '{PEP STORE 0324540054} Shop NO 12 Taung Square, Main Street, Taung, 8584',tiles:[]),
          BasicTile(title: '{PEP STORE 0539942582} Shop 3 Taung Shoprite Centre 5 Station Street, Taung, 1827',tiles:[]),
          BasicTile(title: '{PEP STORE 0539941000} 48a Forum Centre Station Road, Taung, 8584',tiles:[]),
        ]),
        BasicTile(title: 'Vryburg',tiles:[
          BasicTile(title: '{PEP STORE 0539273022} Shop No 1, 93 Market St, Vryburg, 8600',tiles:[]),
          BasicTile(title: '{PEP STORE 0539274021} Shop 4 Shoprite Centre Cnr Stella Street &, De Kock St, Vryburg, 8601',tiles:[]),
        ]),  
      ]),
      BasicTile(title: 'Bojanala Platinum District Municipality ',tiles:[
        BasicTile(title: 'Brits',tiles:[
          BasicTile(title: '{PEP STORE 0122520791} ALPENROOS BUILDING; CNR PIENAAR & MACLEAN STREET; BRITS; 0250',tiles:[]),
          BasicTile(title: '{PEP STORE 0122520794} SHOP 1 ; VLAKVARKGAT BUILDING; 1-10 SPOORWEG ST.; BRITS; 0250',tiles:[]),
          BasicTile(title: '{PEP STORE 0122520792} SHOP 1; BOLT CENTRE; DE WITTS AVENUE; BRITS; 0250',tiles:[]),
          BasicTile(title: '{PEP STORE 0122520795} SHOP 11; PRIMINDIA PLAZA; CNR TOM & CAREL STREET; BRITS; 0250',tiles:[]),
          BasicTile(title: '{PEP STORE 0122527670} SHOP NO 1; SAFARI PLAZA CENTRE; 28 VAN VELDEN STREET; BRITS; 0250',tiles:[]),
          BasicTile(title: '{PEP STORE 0122501819} SHOP NO 29; BRITS MALL; CNR HENDRIK VERWOERD & MAPLE RD; BRITS; 0250',tiles:[]),
          BasicTile(title: '{PEP STORE 0122520418} SHOP 1; THEO\'S BUILDING ; MURRAY AVENUE ; BRITS; 0040',tiles:[]),
        ]),
        BasicTile(title: 'Ga-Rankuwa',tiles:[
          BasicTile(title: '{PEP STORE 012 703 4661} Shop 3 & 4 Garankuwa Centre Leah, Lucas Mangope Rd, Ga-Rankuwa, 0202',tiles:[]),
        ]),
        BasicTile(title: 'Hartbeesfontein/Lethabong',tiles:[
          BasicTile(title: '{PEP STORE} Voortrekker St, Hartbeesfontein, 2600',tiles:[]),
          BasicTile(title: '{PEP STORE 0184311904} Shop Building, 84 Voortrekker St, Hartbeesfontein, 2600',tiles:[]),
          BasicTile(title: '{PEP STORE 0122535127} SHOP 10; DAMDORYN SHOPPING CENTRE; ROAD CROSSING TO BRITS; HARTBEESFONTEIN; 0216',tiles:[]),
          BasicTile(title: '{PEP STORE 0122590742} SHOP 17 SEDIBA PLAZA; CNR SCHOEMANSVILLE & ; DIE OU WA PAD; MELODY AREA; HARTBEESFONTEIN; 0216',tiles:[]),
        ]),
        BasicTile(title: 'Hartbeespoort',tiles:[
          BasicTile(title: '{PEP STORE 0122535127} SHOP 10; DAMDORYN SHOPPING CENTRE; ROAD CROSSING TO BRITS; HARTBEESFONTEIN; 0216',tiles:[]),
          BasicTile(title: '{PEP STORE 0122590742} SHOP 17 SEDIBA PLAZA; CNR SCHOEMANSVILLE & ; DIE OU WA PAD; MELODY AREA; HARTBEESFONTEIN; 0216',tiles:[]),
        ]),
        BasicTile(title: 'Koster',tiles:[
          BasicTile(title: '{PEP STORE 0145432353} 25 Jameson Rd, Koster, 2825',tiles:[]),
        ]),
        BasicTile(title: 'Mabopane',tiles:[
          BasicTile(title: '{PEP STORE 0127018876} Shop 19-21, Central City Shop Centre, Mabopane, 0190',tiles:[]),
          BasicTile(title: '{PEP STORE 0184626595} Shop 9, Mabopane Square, Lucas Mangope Rd, Mabopane, 0190',tiles:[]),
          BasicTile(title: '{PEP STORE 0127010106} Shop NRS 7/8 & 9, Marula View Shop CNT, Mabopane, 0190',tiles:[]),
        ]),
        BasicTile(title: 'Magaliesburg',tiles:[
          BasicTile(title: '{PEP STORE 0145771165} Shop 4 & 5 Three Participants Building, Rustenburg Rd, Magaliesburg, 1739',tiles:[]),
        ]),
        BasicTile(title: 'Marikana',tiles:[
          BasicTile(title: '{PEP STORE 0145723203} Shop NO 17, Marikana Shopping Centre, Marikana, 0284',tiles:[]),
        ]),
        BasicTile(title: 'Mogwase',tiles:[
          BasicTile(title: '{PEP STORE 0145555232} Shop 3, Mogwase Shopping Centre, Mogwase, 2302',tiles:[]),
        ]),
        BasicTile(title: 'Mooinooi',tiles:[
          BasicTile(title: '{PEP STORE 0145744330} Shop 17, 23 Euronooi Shop Centre, Hibiscus St, Brits, 0325',tiles:[]),
        ]),
        BasicTile(title: 'Rustenburg',tiles:[
          BasicTile(title: '{PEP STORE 0145373818} Shop No 108 &109, Waterfall Mall, Cuckoo Avenue, Cashan, Rustenburg, 2999',tiles:[]),
          BasicTile(title: '{PEP STORE 0145934264} Shop 14, Express City, Beneden St, Rustenburg North, Rustenburg, 2999',tiles:[]),
          BasicTile(title: '{PEP STORE 0145925800} 111 Smith St, Tlhabane West, Rustenburg, 0300',tiles:[]),
          BasicTile(title: '{PEP STORE 0145945633} Shop 73 Rustenburg Mall Nelson Mandela Drive, Swartruggens Rd, Rustenburg, 0299',tiles:[]),
          BasicTile(title: '{PEP STORE 0215950880} Shop 103 & 104 Trans Shopping Mall, Fatima Bhayat St, Rustenburg, 0300',tiles:[]),
          BasicTile(title: '{PEP STORE 0145373818} Plaza, Shop A Rustenburg, Rustenburg, 0300',tiles:[]),
          BasicTile(title: '{PEP STORE 0145974199} Midtown Mall 82 Fatima Bayat Dr CBD, Rustenburg, 2999',tiles:[]),
          BasicTile(title: '{PEP STORE 0145922794} 95 Malan St, Rustenburg, 0300',tiles:[]),
          BasicTile(title: '{PEP STORE 0145333002} 35 Prince John St, Bhoya Street, Rustenburg, 0300',tiles:[]),
          BasicTile(title: '{PEP STORE 0145333002} 28 Safari Ave, Safari Tuine, Rustenburg, 2999',tiles:[]),
          BasicTile(title: '{PEP STORE 0145372094} 74 Gareth Roberts Ave, Cashan, Rustenburg, 0299',tiles:[]),
          BasicTile(title: '{PEP STORE 0145934623} Northam Thaba\'nchu Roads, Rustenburg, 0308',tiles:[]),
          BasicTile(title: '{PEP STORE 0145925187} Shop 1B Shoprite Centre, Corner Mandela Street, Rustenburg, 0299',tiles:[]),
          BasicTile(title: '{PEP STORE 0119806269} 44 Platinum Square, Gareth Roberts Ave, Rustenburg, 2999',tiles:[]),
          BasicTile(title: '{PEP STORE 0860737000} Shop 14 Sunrise Park Shopping Centre Cnr Molapo Dr &, Egoli St, Rustenburg, 0309',tiles:[]),
          BasicTile(title: '{PEP STORE 0145925187} Shop NO 3B, Shoprite, Rustenburg, 0300',tiles:[]),
          BasicTile(title: '{PEP STORE 0119806269} Plaza, Shop 107/109 Rustenburg, Rustenburg, 2999',tiles:[]),
          BasicTile(title: '{PEP STORE 0145654621} Shop 30, Foro Spar Shopping Centre, 3602 Monareng St, Tlhabane, Rustenburg, 0309',tiles:[]),
          BasicTile(title: '{PEP STORE 0145921623} Shop 6 Maroela Centre 30 Fatima Bhayat Street, Leyds St, Rustenburg, 0300',tiles:[]),
        ]),
        BasicTile(title: 'Tlhabane',tiles:[
          BasicTile(title: '{PEP STORE 0145654621} Shop 30, Foro Spar Shopping Centre, 3602 Monareng St, Tlhabane, Rustenburg, 0309',tiles:[]),
          BasicTile(title: '{PEP STORE} 3550 Monareng St, Tlhabane Unit 1, Tlhabane, 0309',tiles:[]),
          BasicTile(title: '{PEP STORE 0145925800} 111 Smith St, Tlhabane West, Rustenburg, 0300',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Ngaka Modiri Molema District Municipality',tiles:[
        BasicTile(title: 'Coligny',tiles:[
          BasicTile(title: '{PEP STORE 0186731242} 53 Voortrekker St, Coligny, 2725',tiles:[]),
        ]),
        BasicTile(title: 'Delareyville',tiles:[
          BasicTile(title: '{PEP STORE 0539480815} BOONZAAIER BUILDING; GENERAL DE LA REY STREET; DELAREYVILLE; 2770',tiles:[]),
          BasicTile(title: '{PEP STORE 0539480302} SHOP 1; DU TOIT STREET; DELAREYVILLE; 2770',tiles:[]),
        ]),
        BasicTile(title: 'Ganyesa',tiles:[
          BasicTile(title: '{PEP STORE 0539983388} SHOP 9 & 10; GANYESA SHOPPING COMPLEX; GANYESA; 8613',tiles:[]),
        ]),
        BasicTile(title: 'Lehurutshe',tiles:[
          BasicTile(title: '{PEP STORE 0183633044} Shop 39 Lehurutshe Complex Manyane Road, Lehurutshe, 2880',tiles:[]),
        ]),
        BasicTile(title: 'Mahikeng',tiles:[
          BasicTile(title: '{PEP STORE } 24 Shippard St, Golf View, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0116936445} Shop 45, Mafikeng Centre, 24 Shippard St, Mahikeng, 2735',tiles:[]),
          BasicTile(title: '{PEP STORE 0183817646} Shop 44 Mafikeng Mall, Dr Nelson Mandela Drive, 2745 Mafikeng, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183816144} 7 Station Rd, Golf View, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183816109} Shop 1 The State Way Building, 34 Station Rd, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183813418} SH.12 CNR Carrington & Main ST, Mafikeng, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183813824} Shop 15 Mafikeng Crossing, 13 Sekame St, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183921590} Shop 67 Megacity, Sekame St, Mmabatho, 2735',tiles:[]),
          BasicTile(title: '{PEP STORE 0183810921} Shop No 12 & 13 Mafikeng Plaza Cnr Nelson Mandela Rd &, Hatchard St, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183818413} Shop No 21A Northwest Mall Corner Carrington &, Carney St, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183818903} Shop NO 5, Mafikeng Plaza Shopping Centre, Mahikeng, 2745',tiles:[]),
          BasicTile(title: '{PEP STORE 0183921009} Mmabatho Mall, Dr James Moloka Street, ﻿Mafikeng, Gauteng, 2790',tiles:[]),
        ]),
        BasicTile(title: 'Mmabatho',tiles:[
          BasicTile(title: '{PEP STORE 0183921590} Shop 67 Megacity, Sekame St, Mmabatho, 2735',tiles:[]),
          BasicTile(title: '{PEP STORE } Shop 28A, Mmabatho Mega City Mall, Dr James Moroka Dr, Mahikeng, 2790',tiles:[]),
          BasicTile(title: '{PEP STORE 0183921009} Mmabatho Mall, Dr James Moloka Street, ﻿Mafikeng, Gauteng, 2790',tiles:[]),
        ]),
        BasicTile(title: 'Ottosdal',tiles:[
          BasicTile(title: '{PEP STORE 0185710021} Voortrekker ST 23, Ottosdale, Ottosdal, 2610',tiles:[]),
        ]),
        BasicTile(title: 'Sannieshof',tiles:[
          BasicTile(title: '{PEP STORE 0186830155} Spoor St, Roosville, Sannieshof, 2760',tiles:[]),
        ]),
        BasicTile(title: 'Zeerust',tiles:[
          BasicTile(title: '{PEP STORE 0186423137} Shop 6 Marico Plaza, 20 Church St, Zeerust, 2865',tiles:[]),
          BasicTile(title: '{PEP STORE 0186421831} Bhyholdt Centre, Church St, Zeerust, 2865',tiles:[]),
          BasicTile(title: '{PEP STORE 0186421463} 34b Church St, Zeerust, 2865',tiles:[]),
          BasicTile(title: '{PEP STORE 0186421298} 1 Bhyholdt Centre, Church St, Zeerust, 2865',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Dr Kenneth Kaunda District Municipality',tiles:[
        BasicTile(title: 'Bloemhof',tiles:[
          BasicTile(title: '{PEP STORE 0534331435} 54 PRINS STREET; BLOEMHOF; 2660',tiles:[]),
        ]),
        BasicTile(title: 'Christiana',tiles:[
          BasicTile(title: '{PEP STORE 0534412166} Shop 1 Pretorius St, Christiana, 2680',tiles:[]),
        ]),
        BasicTile(title: 'Hartbeesfontein',tiles:[
           BasicTile(title: '{PEP STORE 0184311904} Shop Building, 84 Voortrekker St, Hartbeesfontein, 2600',tiles:[]),
        ]),
        BasicTile(title: 'Klerksdorp',tiles:[
          BasicTile(title: '{PEP STORE 0184626595} Shop 43 & 44 City Mall Cnr Oliver Tambo &, Neser St, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0567771703} Shop 45/47 Flamwood Walk, 1 Brother Patrick Lane, Klerksdorp, 2570',tiles:[]),
          BasicTile(title: '{PEP STORE 0184641212} The Terminus Centre, Shop 19, Golf St, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0184681103} Winkel 12 & 13 Wilkoppies Sentrum, Martin Straat, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0860900100} Shop 87 Matlosana Mall 151 Joe Slovo Road (Off N12 Extension 38, Klerksdorp, 2570',tiles:[]),
          BasicTile(title: '{PEP STORE 0184628602} Shop 17 Commissioner St, Klerksdorp Central, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0184655585} Ext 19, Shop 14A Tower Mall, 18519 Tarentaal St, Klerksdorp, 2570',tiles:[]),
          BasicTile(title: '{PEP STORE 0184625296} Shop G22 Checkers Hyper Cnr Cadria &, Margaretha Prinsloo St, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0319072134} Shop 45 O.R. Tambo St, Klerksdorp Central, Klerksdorp, 4066',tiles:[]),
          BasicTile(title: '{PEP STORE 0184681103} Shop 2 City Mall Cnr Or Tambo &, Neser St, Klerksdorp, 2570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219888021} Shop 81A, Matlosana Mall, Off, N12, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0184657460} Shop 10A & 10B Tower Mall Corner, N12 &, Jabulani St, Klerksdorp, 2570',tiles:[]),
          BasicTile(title: '{PEP STORE 0219883974} Shop 12A 13 Pick N Pay Centre, Buffelsdoorn Rd, Klerksdorp, 2571',tiles:[]),
          BasicTile(title: '{PEP STORE 0184657460}  Shop 4894 Tower Mall, Jabulani St, Jouberton, Klerksdorp, 2574',tiles:[]),
          BasicTile(title: '{Matlosana Mall PEP STORE 0184876340} N12, Klerksdorp, 2571',tiles:[]),
        ]),
        BasicTile(title: 'Leeudoringstad',tiles:[
           BasicTile(title: '{PEP STORE 0185812192} Cnr Paul Kruger &, George St, Leeudoringstad, 2640',tiles:[]),
        ]),
        BasicTile(title: 'Orkney',tiles:[
          BasicTile(title: '{PEP STORE 0184733220} 70 Flecker St, Orkney, 2619',tiles:[]),
           BasicTile(title: '{PEP STORE 0184733220} G9-G10, Orkney Shopping Centre, Kingsley Rd, Orkney, 2619',tiles:[]),
        ]),
        BasicTile(title: 'Potchefstroom',tiles:[
          BasicTile(title: '{PEP STORE 0182946264} 149 Church Street, Potchefstroom, 2531',tiles:[]),
          BasicTile(title: '{PEP STORE 0182932310} Shop NO 34, Mooi Rivier Mall, Potchefstroom, 2531',tiles:[]),
          BasicTile(title: '{PEP STORE 0182932697} Pick \'N PAY Sentrum, Kerkstraat 57, Potchefstroom, 2531',tiles:[]),
          BasicTile(title: '{PEP STORE 0182943669} Shop 8 Riverwalk Shopping Centre, Potchefstroom, 2520',tiles:[]),
          BasicTile(title: '{PEP STORE 0182946264} Shop, 149 Walter Sisulu Lane, Dr Kenneth Kaunda Tlokwe, Diepmeadow, 1862',tiles:[]),
          BasicTile(title: '{PEP STORE 0182943669} Shop 8 Riverwalk Shopping Centre, Potchefstroom, 2520',tiles:[]),
          BasicTile(title: '{PEP STORE 0182946264} Shop, 149 Walter Sisulu Lane, Dr Kenneth Kaunda Tlokwe, Diepmeadow, 1862',tiles:[]),
          BasicTile(title: '{PEP STORE 0123359838} Shop 7, River Walk River Street, Potchefstroom, 2531',tiles:[]),
          BasicTile(title: '{PEP STORE 0182945292} Shop 23 Ikageng Gate, Corner Zinn Street &, Triomf Rd, Potchefstroom, 2531',tiles:[]),
        ]),
        BasicTile(title: 'Stilfontein',tiles:[
           BasicTile(title: '{PEP STORE 0184842661} Stilfontein, 2551',tiles:[]),
        ]),
        BasicTile(title: 'Ventersdorp',tiles:[
           BasicTile(title: '{PEP STORE 0182643152}  Elizabeth Sentrum, H/V Carmichael & Potstraat, Ventersdorp, 2710',tiles:[]),
        ]),
        BasicTile(title: 'Wolmaransstad',tiles:[
           BasicTile(title: '{PEP STORE 0185961701} Shop NO 2 Shoprite Centre, CNR Broadbent & Kruger Street, Wolmaransstad, 2630',tiles:[]),
        ]),
      ]),
    ]);
    tiles.add(northWest);

    BasicTile northernCape = BasicTile(title:'Northern Cape',tiles: [
      BasicTile(title: 'Diamond Fields',tiles:[
        BasicTile(title: 'Barkly West',tiles:[
          BasicTile(title: '{PEP STORE 0535310542} 7 Campbell Street, Barkley West, Barkly West, 8375',tiles:[]),
        ]),
        BasicTile(title: 'Douglas',tiles:[
          BasicTile(title: '{PEP STORE 0532981217} CNR SOUTHY & GIDDY STREETS; DOUGLAS; 8730',tiles:[]),
        ]),
        BasicTile(title: 'Hartswater',tiles:[
          BasicTile(title: '{PEP STORE 0534740651} SHOP 1; BRINK CENTRE; CNR JAN SMUTS & REITZ STREET; HARTSWATER; 8570',tiles:[]),
          BasicTile(title: '{PEP STORE 0534740318} SHOP NO 12; COSMIC GOLD CENTRE; 5 DF MALAN STREET; HARTSWATER; 8570',tiles:[]),
        ]),
        BasicTile(title: 'Jan Kempdorp',tiles:[
          BasicTile(title: '{PEP STORE 0534561315} Corner of Bosman Street & Stellas Street, Jan Kempdorp, 8550',tiles:[]),
          BasicTile(title: '{PEP STORE 0534561521} De La Rey St, Jan Kempdorp, 8550',tiles:[]),
          BasicTile(title: '{PEP STORE 0534561521} 3 De La Rey St, Jan Kempdorp, 8550',tiles:[]),
          BasicTile(title: '{PEP STORE 0534740241} Shop No 4, Jetmart Building DF Malan Street Hartwater, Roodepoort, 1724',tiles:[]),
        ]),
        BasicTile(title: 'Kimberley',tiles:[
          BasicTile(title: '{PEP STORE 0538323653} Shop GF 18A & 19 Kim Park Centre Cnr Lennox &, Chapel St, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0538323799} Shop 1, Wb Centre, Chapel St, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0538313737} Shop 60 North Cape Mall, Memorial Rd, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0538711605} Shop 7 Barkley Road Shopping Centre, Barkley Way, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0498460288} Shop 629 Phakamile Mabija St, Bunn, Kimberley, 8300',tiles:[]),
          BasicTile(title: '{PEP STORE 0538315729} Shop 2 Diamond Pavillion Corner Oliver &, Mac Dougall St, Monument Heights, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0218731584} Shop 7 New Park Centre Cnr Lennox Street &, Bultfontein Rd, Kimberley, 8300',tiles:[]),
          BasicTile(title: '{PEP STORE 0538312715} Shop 8, New Park Centre, Bultfontein Rd, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0538420963} Cnr Main Road &, Stanley St, Beaconsfield, Kimberley, 8315',tiles:[]),
          BasicTile(title: '{PEP STORE 0538315729} Shop 93 Diamond Pavilion Mall Cnr Oliver & Mc Dougal Rd, Monument Heights, Kimberley, 8301',tiles:[]),
          BasicTile(title: '{PEP STORE 0538716146} Shop 5 Galeshewe Plaza Cnr Nobegngula & Seachoareng Street, Galeshewe, Kimberley, 8345',tiles:[]),
          BasicTile(title: '{PEP STORE 0538328391} Shop 18 Phakamile Mabija St, Bunn, Kimberley, 8300',tiles:[]),
          BasicTile(title: '{PEP STORE 0538314965} Shop No 21 Diamond Pavilion Cnr Of Oliver, & Mac Dougall Rd Pep Cell 4572 Kimberley Diamond Pavilion Kimberley Diamond Pavilion, 8301',tiles:[]),
        ]),
        BasicTile(title: 'Warrenton',tiles:[
          BasicTile(title: '{PEP STORE 0534973841} 72 Uys St, Warrenton, 8530',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Green Kalahar',tiles:[       
        BasicTile(title: 'Danielskuil',tiles:[
          BasicTile(title: '{PEP STORE 0533840096} MAIN STREET; DANIELSKUIL; 8405',tiles:[]),
        ]),
        BasicTile(title: 'Groblershoop',tiles:[
          BasicTile(title: '{PEP STORE 0548330227} 8 Church Street, Groblershoop, 8850',tiles:[]),
        ]),
        BasicTile(title: 'Kakamas',tiles:[
          BasicTile(title: '{PEP STORE 0544310727} Corner Eleventh Avenue, Voortrekker Way, and, Kakamas, 8870',tiles:[]),
          BasicTile(title: '{PEP STORE 0543313760} Shop 5 Kakamas Centre Cnr N14 &, Voortrekker Way, Kakamas, 8870',tiles:[]),
        ]),
        BasicTile(title: 'Keimoes',tiles:[
          BasicTile(title: '{PEP STORE 0544611305} Main Rd, Keimoes, 8860',tiles:[]),
        ]),
        BasicTile(title: 'Kenhardt',tiles:[
          BasicTile(title: '{PEP STORE 0546510066} Shop 341 Park St, Kenhardt, 8900',tiles:[]),
        ]),
        BasicTile(title: 'Lime Acres',tiles:[
          BasicTile(title: '{PEP STORE 0533850191} Central St, Lime Acres, 8410',tiles:[]),
        ]),
        BasicTile(title: 'Olifantshoek',tiles:[
          BasicTile(title: '{PEP STORE 0533310112}  VAN Riebeeckstraat 27, Olifantshoek, 8450',tiles:[]),
        ]),
        BasicTile(title: 'Postmasburg',tiles:[
          BasicTile(title: '{PEP STORE 0164549935} Torette Building, 1 Mangaan Way, Postmasburg, 8420',tiles:[]),
          BasicTile(title: '{PEP STORE 0533130556} C A M St, Postmasburg, 8420',tiles:[]),
        ]),
        BasicTile(title: 'Upington',tiles:[
          BasicTile(title: '{PEP STORE 0543324559} CNr Mark &, Hill St, Upington, 8800',tiles:[]),
          BasicTile(title: '{PEP STORE 0543312624} Shop 3 Scott St, Upington, 8800',tiles:[]),
          BasicTile(title: '{PEP STORE 0543322292} H/v Mark &, Parkstraat, Upington, 8801',tiles:[]),
          BasicTile(title: '{PEP STORE 0543313760} Shop 69 Kalahari Mall, Upington, 8801',tiles:[]),
        ]),
        BasicTile(title: 'Kathu',tiles:[
          BasicTile(title: '{PEP STORE 0537231102} Kathu Shopping Centre, Kathu, 8446',tiles:[]),
          BasicTile(title: '{PEP STORE 0537231873} Shop 6 Kathu Village Walk, Hendrik Van Eck Rd, Kathu, 8446',tiles:[]),
          BasicTile(title: '{PEP STORE 0537231395} Shop 4, Heritage Square, Corner of Frikkie Meyer and, Rooisand St, Kathu, 8446',tiles:[]),
        ]),
        BasicTile(title: 'Kuruman',tiles:[
          BasicTile(title: '{PEP STORE 0537122874} Livingstone St, Kuruman, 8460',tiles:[]),
          BasicTile(title: '{PEP STORE 0537121632} Shop 28B, Beare St, Kuruman, 8460',tiles:[]),
          BasicTile(title: '{PEP STORE 0537121532} Shop 47B Shoprite centre, Livingstone St, Kuruman, 8460',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Namaqualand',tiles:[
        BasicTile(title: 'Aggeneys',tiles:[
          BasicTile(title: '{PEP STORE 0549832492} Shop 6, Aggeneys Shopping Centre, Havelock Ave, Aggeneys, 8893',tiles:[]),
        ]),
        BasicTile(title: 'Pofadder',tiles:[
          BasicTile(title: '{PEP STORE 0549330122} Voortrekkerstraat, Pofadder, 8890',tiles:[]),
        ]),
        BasicTile(title: 'Port Nolloth',tiles:[
          BasicTile(title: '{PEP STORE 0278518535} Robsonstraat, Port Nolloth, 8280',tiles:[]),
        ]),
        BasicTile(title: 'Steinkopf',tiles:[
          BasicTile(title: '{PEP STORE 0277218744} Steinkopf, 8244',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Upper Karoo',tiles:[
        BasicTile(title: 'Britstown',tiles:[
          BasicTile(title: '{PEP STORE 0536720105} 10 Main St, Britstown, 8782',tiles:[]),
        ]),
        BasicTile(title: 'Colesberg',tiles:[
          BasicTile(title: '{PEP STORE 0517530559} Church St, Kuyasa, Colesberg, 9795',tiles:[]),
        ]),
        BasicTile(title: 'De Aar',tiles:[
          BasicTile(title: '{PEP STORE 0536311774} Voortrekker St, De Aar, 7000',tiles:[]),
        ]),
        BasicTile(title: 'Hopetown',tiles:[
          BasicTile(title: '{PEP STORE 0532030077} Shop 22 Church Street, Hopetown, 8750',tiles:[]),
        ]),
        BasicTile(title: 'Noupoort',tiles:[
          BasicTile(title: '{PEP STORE 0498431020} Piet Retiefstraat, Noupoort, 5950',tiles:[]),
        ]),
        BasicTile(title: 'Petrusville',tiles:[
          BasicTile(title: '{PEP STORE 0517730038} 53 Voortrekker Rd, Philippolis, 9970',tiles:[]),
        ]),
        BasicTile(title: 'Prieska',tiles:[
          BasicTile(title: '{PEP STORE 0533533555} Kerk St, Marydale, Prieska, 8940',tiles:[]),
        ]),
        BasicTile(title: 'Richmond',tiles:[
          BasicTile(title: '{PEP STORE 0536930210} Pienaar Street, Richmond, 7090',tiles:[]),
        ]),
        BasicTile(title: 'Victoria West',tiles:[
          BasicTile(title: '{PEP STORE 0536210051} Kerkstraat, Victoria WES, Victoria West, 7070',tiles:[]),
        ]),      
      ]),

    ]);
    tiles.add(northernCape);

    BasicTile freestate = BasicTile(title:'Free State',tiles: [
      BasicTile(title: 'Eastern Free State ',tiles:[
        BasicTile(title: 'Bethlehem',tiles:[
          BasicTile(title: '{PEP STORE 0583034568} CNR HIGH & MALAN STREET; BETHLEHEM; 9700',tiles:[]),
          BasicTile(title: '{PEP STORE 0583039081} SHOP 1 & 2; SHOPRITE CENTRE; CNR LOUW MULLER & MURRAY ST; BETHLEHEM; 9701',tiles:[]),
          BasicTile(title: '{PEP STORE 0583030353} SHOP NO 8 & 9; DIHLABENG MALL; PREEKSTOEL ROAD; BETHLEHEM; 2196',tiles:[]),
          BasicTile(title: '{PEP STORE  0582230209} 26 Robertson St, Fouriesburg, Bethlehem, 9725',tiles:[]),
        ]),
        BasicTile(title: 'Clarens',tiles:[
          BasicTile(title: '{PEP STORE  0587891142} Shop 9, Charles Mopeli Shopping CNT, Phuthaditjhaba, 9870',tiles:[]),
        ]),
        BasicTile(title: 'Clocolan',tiles:[
          BasicTile(title: '{PEP STORE 0519430549} ANDRIES PRETORIUS STREET; CLOCOLAN; 9735',tiles:[]),
        ]),
        BasicTile(title: 'Excelsior',tiles:[
          BasicTile(title: '{PEP STORE 0519730014} 47 COMMISISON STREET; EXCELSIOR; 9760',tiles:[]),
          BasicTile(title: '{PEP STORE } ',tiles:[]),
        ]),
        BasicTile(title: 'Ficksburg',tiles:[
          BasicTile(title: '{PEP STORE 0519336391} 41 FONTEIN STREET; FICKSBURG; 9730',tiles:[]),
          BasicTile(title: '{PEP STORE 0519333521} FONTEINSTRAAT 66; FICKSBURG; 9730',tiles:[]),
        ]),
        BasicTile(title: 'Fouriesburg',tiles:[
          BasicTile(title: '{PEP STORE 0582230209} 26 ROBERTSON STREET; FOURIESBURG; 9725',tiles:[]),
        ]),
        BasicTile(title: 'Harrismith',tiles:[
          BasicTile(title: '{PEP STORE 0586230542} CNR BESTER & SAREL CILLIERS ST; HARRISMITH; 9880',tiles:[]),
          BasicTile(title: '{PEP STORE 0586221330} SHOP NO 2; 12 SOUTHEY STREET; HARRISMITH; 9880',tiles:[]),
          BasicTile(title: '{PEP STORE 058 622 1330} Shop 2, 12 Southey St, Harrismith, 9880',tiles:[]),
        ]),
        BasicTile(title: 'Ladybrand',tiles:[
          BasicTile(title: '{PEP STORE 0519242180} Cnr Joubert & Voortrekker Street, Ladybrand, 9745',tiles:[]),
          BasicTile(title: '{PEP STORE 0519242180} 1 Cj Centre, Cnr Joubert &, Dan Pienaar St, Ladybrand, 9745',tiles:[]),
        ]),
        BasicTile(title: 'Lindley',tiles:[
          BasicTile(title: '{PEP STORE 0584630108} Shop 1 Pep Stores Building Church Street, Lindley, 9630',tiles:[]),
        ]),
        BasicTile(title: 'Marquard',tiles:[
          BasicTile(title: '{PEP STORE 0519910186} Van Der Watt St, Marquard, 9610',tiles:[]),
        ]),
        BasicTile(title: 'Memel',tiles:[
          BasicTile(title: '{PEP STORE 0860737000} Shop 43, Hartland Building, 56 Voortrekker St, Memel, 2970',tiles:[]),
        ]),
        BasicTile(title: 'Petrus Steyn',tiles:[
          BasicTile(title: '{PEP STORE 0588713480} Kerkstraat 12, Petrus Steyn, 9640',tiles:[]),
        ]),
        BasicTile(title: 'Phuthaditjhaba',tiles:[
          BasicTile(title: '{PEP STORE 0587130872} Shop 5, Setsing Plaza, Cnr Main &, Mampoi Rd, Phuthaditjhaba, 9866',tiles:[]),
          BasicTile(title: '{PEP STORE 0587133316}  Shop 28 Shoprite Centre, Main Road, Phuthaditjhaba, 9870',tiles:[]),
          BasicTile(title: '{PEP STORE 0587130896} Shop 5, Setsing Plaza, Cnr Main &, Mampoi Rd, Phuthaditjhaba, 9866',tiles:[]),
          BasicTile(title: '{PEP STORE 0587130872} Shop 3C Setsing Crecent, Cnr Setai St & Moteling Street, Phuthaditjhaba, 9869',tiles:[]),
          BasicTile(title: '{PEP STORE 0587891142} Shop 9, Charles Mopeli Shopping CNT, Phuthaditjhaba, 9870',tiles:[]),
          BasicTile(title: '{PEP STORE 0587130896} Shop 3, Setsing Plaza, Corner Main Street &, Mampoi Rd, Phuthaditjhaba, 9869',tiles:[]),
          BasicTile(title: '{PEP STORE 0587130331} 17a Mandela Park Shopping Centre, 712 Public Road, Phuthaditjhaba, 9869',tiles:[]),
          BasicTile(title: '{PEP STORE 0587130603} 105 Maluti Crescent, Mampoi Rd, Phuthaditjhaba, 9472',tiles:[]),
          BasicTile(title: '{PEP STORE 0587132711} Shop 29A Setsing Crescent, Corner Setai Street & Motlaing Street, Phuthaditjhaba, 9869',tiles:[]),
          BasicTile(title: '{PEP STORE 0587130473} Shop 418 A Setsing Plaza, Mampoi Rd, Phuthaditjhaba, 9869',tiles:[]),
        ]),
        BasicTile(title: 'Reitz',tiles:[
          BasicTile(title: '{PEP STORE 0588632654} S, 51 Roos St, Reitz, 9810',tiles:[]),
        ]),
        BasicTile(title: 'Senekal',tiles:[
          BasicTile(title: '{PEP STORE 0584812560} Dreyer St, Senekal, 9600',tiles:[]),
        ]),
        BasicTile(title: 'Vrede',tiles:[
          BasicTile(title: '{PEP STORE 0589131313} Kerkstraat 46, Vrede, 2445',tiles:[]),
        ]),
        BasicTile(title: 'Winburg',tiles:[
          BasicTile(title: '{PEP STORE 0518810258} Brandstraat, Winburg, 9420',tiles:[]),
        ]),

      ]),
      BasicTile(title: 'Lejweleputswa (formerly GoldFields)',tiles:[
        BasicTile(title: 'Boshof',tiles:[
          BasicTile(title: '{PEP STORE 0535410078} Corner of Church &, Jacob St, Boshof, 8340',tiles:[]),
        ]),
        BasicTile(title: 'Bothaville',tiles:[
          BasicTile(title: '{PEP STORE 0565153400} CNR PRESIDENT & VAN RIEBEECK STR; BOTHAVILLE; 9660',tiles:[]),
        ]),
        BasicTile(title: 'Brandfort',tiles:[
          BasicTile(title: '{PEP STORE 0518211018} WINKEL 1; F & M GEBOU; VOORTEKKERSTRAAT 42; BRANDFORT; 9400',tiles:[]),
        ]),
        BasicTile(title: 'Bultfontein',tiles:[
          BasicTile(title: '{PEP STORE 0518532155} SHOP NO 235; OKB ENGINEERING BUILDING; DAVIN STREET; BULTFONTEIN; 9670',tiles:[]),
        ]),
        BasicTile(title: 'Dealesville',tiles:[
          BasicTile(title: '{PEP STORE 0214330218} Shop 2, U Save Center, 13 Andries Pretorius St, Dealesville, 9348',tiles:[]),
        ]),
        BasicTile(title: 'Hennenman',tiles:[
          BasicTile(title: '{PEP STORE 0575731760} SHOP 302; 176 STEYN STREET; HENNEMAN; 9445',tiles:[]),
        ]),
        BasicTile(title: 'Hertzogville',tiles:[
          BasicTile(title: '{PEP STORE 0534219014} 7 MAIN STREET ; HERTZOGVILLE; 9482',tiles:[]),
        ]),
        BasicTile(title: 'Hoopstad',tiles:[
          BasicTile(title: '{PEP STORE 0534441106} Shop 23 Barnard Building, 23 Japhet St, Hoopstad, 9479',tiles:[]),
        ]),
        BasicTile(title: 'Odendaalsrus',tiles:[
          BasicTile(title: '{PEP STORE 0573543481} H/V Waterkant & Wesselstraat, Odendaalsrus, 9480',tiles:[]),
        ]),
        BasicTile(title: 'Theunissen',tiles:[
          BasicTile(title: '{PEP STORE 0577330005} Piet Retief St, Theunissen, 9414',tiles:[]),
        ]),
        BasicTile(title: 'Ventersburg',tiles:[
          BasicTile(title: '{PEP STORE 0576514551} Shop 35, 34 Voortrekker St, Ventersburg, 9450',tiles:[]),
        ]),
        BasicTile(title: 'Virginia',tiles:[
          BasicTile(title: '{PEP STORE 0572124535} Governmentstraat, ERF 917, Virginia, 9430',tiles:[]),
        ]),
        BasicTile(title: 'Welkom',tiles:[
          BasicTile(title: '{PEP STORE 0573521533} Shop NO. 6 7 8 9 & 10, Checkers Centre, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573521077} 22A Bok St, Welkom Central, Welkom, 9460',tiles:[]),
          BasicTile(title: '{PEP STORE 0573525435} 94 Goldfields Mall CNR Buiten, & Stateway Boulevard, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573551619} 179 Power Rd, Voorspoed, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573572043} H/V Pretorius & Kingstraat, Dagbreek, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573884676} Shop 1 Craiblaan 47 S, Riebeeckstad, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573531592} 4 Welkom Goldfiels Mall Cnr Stateway Boulevard &, Buiten St, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573531048} 26 Checkers Centre Corner of Stateway and, Arrarat Rd, Welkom, 9459',tiles:[]),
          BasicTile(title: '{PEP STORE 0573971113} Shop 47, Boitumelo Junction Cnr Nkoane & A Phakati, Riebeeckstad, Welkom, 9469',tiles:[]),
        ]),
        BasicTile(title: 'Wesselsbron',tiles:[
          BasicTile(title: '{PEP STORE 0578991755} Shop 4&5 P.L. Kotze STR, Wesselsbron, 9680',tiles:[]),
        ]),
        BasicTile(title: 'Winburg',tiles:[
          BasicTile(title: '{PEP STORE 0518810258} Brandstraat, Winburg, 9420',tiles:[]),
        ]),
      ]),
      BasicTile(title: 'Northern Free State',tiles:[
        BasicTile(title: 'Frankfort',tiles:[
          BasicTile(title: '{PEP STORE 0588131551} 47 BRAND STREET; FRANKFORT; 9830',tiles:[]),
        ]),
        BasicTile(title: 'Heilbron',tiles:[
          BasicTile(title: '{PEP STORE 0588530492} PEP STORES 377; CHURCH STREET; HEILBRON; 9650',tiles:[]),
        ]),
        BasicTile(title: 'Koppies',tiles:[
          BasicTile(title: '{PEP STORE 0567771703} 19 Church St, Kwakwatsi, Koppies, 9540',tiles:[]),
        ]),
        BasicTile(title: 'Kroonstad',tiles:[
          BasicTile(title: '{PEP STORE 0562134257} Shop S1 Adami House Cnr Cross &, Brand St, Kroonstad, 9499',tiles:[]),
          BasicTile(title: '{PEP STORE 0562132125} 21 Reitz St, Central, Kroonstad, 9500',tiles:[]),
          BasicTile(title: '{PEP STORE 0562122948} Shop NO 3 & 4, Kroonstad Shoprite Centre, Kroonstad, 9500',tiles:[]),
          BasicTile(title: '{PEP STORE 0562121315} 42 Cross St, Central, Kroonstad, 9500',tiles:[]),
          BasicTile(title: '{PEP STORE 0562137083} Maokeng Mall, Ludick Street, Kroonstad, 9499',tiles:[]),
          BasicTile(title: '{PEP STORE 0136924912} Shop 18 Maokeng Mall Cnr Smaldeel & Hennie Ludick Street Maokeng, Kroonstad, 9499',tiles:[]),
        ]),
        BasicTile(title: 'Parys',tiles:[
          BasicTile(title: '{PEP STORE 0568112608} Shop 4, Cnr Kort Street, Middel St, Parys, 9585',tiles:[]),
        ]),
        BasicTile(title: 'Sasolburg',tiles:[
          BasicTile(title: '{PEP STORE 0169762370} Sasolburg Wandellaan NO 2G, Sasolburg, 9570',tiles:[]),
          BasicTile(title: '{PEP STORE 0169740008} Shop no 16 Sasolburg Boulevard Shopping Centre, 1 President Fouche St, Sasolburg, 0016',tiles:[]),
        ]),
        BasicTile(title: 'Viljoenskroon',tiles:[
          BasicTile(title: '{PEP STORE 0563432708} Piet Retiefstraat 38, Viljoenskroon, 9520',tiles:[]),
        ]),
        BasicTile(title: 'Villiers',tiles:[
          BasicTile(title: '{PEP STORE 0588210481} 28a Hoof St, Frankfort, Villiers, 9840',tiles:[]),
        ]),
        BasicTile(title: 'Vredefort',tiles:[
          BasicTile(title: '{PEP STORE 0569310368} 3 Oranje Street, , S, Vredefort, Fezile Dabi, Ngwathe, Vredefort, 9595',tiles:[]),
  
        ]),
      ]),
      BasicTile(title: 'Transgariep(XhariepHas17towns)',tiles:[
        BasicTile(title: 'Bethulie',tiles:[
          BasicTile(title: '{PEP STORE 0517630113} Shop 40 Joubert St, Bethulie, 9992',tiles:[]),
        ]),
        BasicTile(title: 'Bloemfontein',tiles:[
          BasicTile(title: '{PEP STORE 0514307356} CNR EAST BURGER & ST ANDREW ; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514471824} REM ERF 1061 & PORT 5 ; 6 HANGER STREET; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514325510} SHOP 18; TWIN CITY; HEATHERDALE AVENUE; BLOEMFONTEIN; 9306',tiles:[]),
          BasicTile(title: '{PEP STORE 0515223003} SHOP 25; SOUTHERN CENTRE; BENADE DRIVE ; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514489939} SHOP 28 - 32 108 108A 110 110A; SANLAM PLAZA; CNR CHARLOTTE MAXEKE & EAST BUR ; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514482743} SHOP 5 & 6; FEDSURE HOUSE; 49 MAITLAND STREET; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514301926} SHOP 130; CENTRAL PARK SHOP CENTRE; CNR FICHARDT & HANGER STREET ; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514460397} SHOP 10 & 11; LANGENHOVEN PARK ; 1 KOPPIE ROAD ; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514300133} SHOP UG2; LOCH LOGAN WATERFRONT; CNR FIRST AVE & HENRYSTREET; BLOEMFONTEIN; 9324',tiles:[]),
          BasicTile(title: '{PEP STORE 0514320319} SHOP 38 A; LEMO MALL; CNR DR BELCHER ROAD & M10; BLOMFONTEIN RING ROAD; BLOEMFONTEIN; 9303',tiles:[]),
          BasicTile(title: '{PEP STORE 0514304673} SHOP B19; MIDDESTAD MALL; CNR CHARLES & WESBURGER; BLOEMFONTEIN; 9300',tiles:[]),
          BasicTile(title: '{PEP STORE 0514333714} SHOP NO 38 ; NORTHRIDGE MALL; EEUFEES ROAD ; HELICON HEIGHTS ; BLOEMFONTEIN; 9300',tiles:[]),
          BasicTile(title: '{PEP STORE 0514460337} SHOP G8A; .@THE PARK; CNR DIRK OPPERMAN &BOUKOUS BLVD; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514446959} SHOP 2; BRANDWAG CENTRE; CNR NELSON MANDELA AND; MELLVILLE DRIVE; BLOEMFONTEIN; 9301',tiles:[]),
          BasicTile(title: '{PEP STORE 0514341354} SHOP 12; KENWORTH CENTRE; MOSHOESHOE ROAD; BLOEMFONTEIN; 9303',tiles:[]),
        ]),
        BasicTile(title: 'Botshabelo',tiles:[
          BasicTile(title: '{PEP STORE 0515341287} SHOP 2; CLAVUS BUILDING; QWA-QWA; BOTSHABELO; 9781',tiles:[]),
          BasicTile(title: '{PEP STORE 0515341304} SHOP 9; RCM COMPLEX; BOTSHABELO STREET ; BOTSHABELO; 9781',tiles:[]),
          BasicTile(title: '{PEP STORE 0515340176} SHOP NO 48; BOTSHABELO MALL ; JAZZMAN STREET; BOTSHABELO; 2001',tiles:[]),
         
        ]),
        BasicTile(title: 'Dewetsdorp',tiles:[
          BasicTile(title: '{PEP STORE 0515410144} DE Wetstraat, DE Wetsdorp, Dewetsdorp, 9940',tiles:[]),
        ]),
        BasicTile(title: 'Jacobsdal',tiles:[
          BasicTile(title: '{PEP STORE 0535910273} Shop 3, 13 Andries Pretorius Street, Jacobsdal, 8710',tiles:[]),
        ]),
        BasicTile(title: 'Jagersfontein',tiles:[
          BasicTile(title: '{PEP STORE 0517240162} Shop, 38, Meteor St, Jagersfontein, 9974',tiles:[]),
        ]),
        BasicTile(title: 'Koffiefontein',tiles:[
          BasicTile(title: '{PEP STORE 0532050117} Shop 12 Groot Trek St, Koffiefontein, 9986',tiles:[]),
        ]),
        BasicTile(title: 'Mangaung',tiles:[
          BasicTile(title: '{PEP STORE 0514341354} Shop NR 12 Kenworth Shopping Centre, Moshoeshoe Road, Manguang, 9323',tiles:[]),
          BasicTile(title: '{PEP STORE 0514320319} Shop 38a , Lemo Mall Cnr Dr Belcher Rd & & M10 Bloemfontein Ring Rd, Bloemfontein Central, Bloemfontein, 9301',tiles:[]),
        ]),
        BasicTile(title: 'Petrusburg',tiles:[
          BasicTile(title: '{PEP STORE 0535740331} H/V Ossewa EN Boshoffstrate, Petrusburg, 9932',tiles:[]),
        ]),
        BasicTile(title: 'Philippolis',tiles:[
          BasicTile(title: '{PEP STORE 0517730038} 53 Voortrekker Rd, Philippolis, 9970',tiles:[]),
        ]),
        BasicTile(title: 'Reddersburg',tiles:[
          BasicTile(title: '{PEP STORE 0515530198} Boshoffstraat, Reddersburg, 9904',tiles:[]),
        ]),
        BasicTile(title: 'Rouxville',tiles:[
          BasicTile(title: '{PEP STORE 0516630356}  Louwstraat, Rouxville, 9958',tiles:[]),
        ]),
        BasicTile(title: 'Smithfield',tiles:[
          BasicTile(title: '{PEP STORE } President Hoffman St, Smithfield, 9966',tiles:[]),
        ]),
        BasicTile(title: 'Thaba \'Nchu',tiles:[
          BasicTile(title: '{PEP STORE 0518751633} Shops 9 & 10, Cornerstone Building 2 Main Street, Thaba Nchu, 9780',tiles:[]),
          BasicTile(title: '{PEP STORE 0518751065} Shop NO 6 Thaba Nchu Shopping Centre, Cnr Main &, End St, Thaba Nchu, 9780',tiles:[]),
        ]),
        BasicTile(title: 'Trompsburg',tiles:[
          BasicTile(title: '{PEP STORE 0517130541} Corner Voortrekker &, Van Riebeeck St, Trompsburg, 9913',tiles:[]),
        ]),
        BasicTile(title: 'Wepener',tiles:[
          BasicTile(title: '{PEP STORE 0515831253} 18 De Beer St, Wepener, 9944',tiles:[]),
        ]),
        BasicTile(title: 'Zastron',tiles:[
          BasicTile(title: '{PEP STORE 0516731012} Matheestraat 25A, Zastron, 9950',tiles:[]),
        ]),
      ]),
    ]);
    tiles.add(freestate);

    BasicTile mpumalanga = BasicTile(title:'Mpumalanga',tiles: [
      BasicTile(title: 'Acornhoek',tiles:[
        BasicTile(title: '{PEP STORE 0137955108} SHOP 12 & 13; ACORNHOEK PLAZA; MAIN ROAD; ACORNHOEK; 1360',tiles:[]),
        BasicTile(title: '{PEP STORE 0137955333} SHOP 12; ACORNHOEK SHOPPING CENTRE; ACORNHOEK STATION SITE NO 531; ACORNHOEK; 1360',tiles:[]),
        BasicTile(title: '{PEP STORE 0137955457} SHOP 75; ACORNHOEK PLAZA EXTENSION; MAIN ROAD; ACORNHOEK; 1360',tiles:[]),
      ]),
      BasicTile(title: 'Amersfoort',tiles:[
        BasicTile(title: '{PEP STORE 0177531054} 877 HELDEN STREET; BHYAT\'S HARDWARE; SYBRAND VAN NIEKERK STREET; AMERSFOORT; 2490',tiles:[]),
      ]),
      BasicTile(title: 'Amsterdam',tiles:[
        BasicTile(title: '{PEP STORE 0178469774} SHOP 3; VOORTREKKER STREET; AMSTERDAM; 2375',tiles:[]),
      ]),
      BasicTile(title: 'Balfour',tiles:[
        BasicTile(title: '{PEP STORE 0177730107} 10 JOHNNY MAKOENA STREET; BALFOUR; 2410',tiles:[]),
      ]),
      BasicTile(title: 'Barberton',tiles:[
        BasicTile(title: '{PEP STORE 0137122913} 89 CROWN STREET; BARBERTON; 1300',tiles:[]),
      ]),
      BasicTile(title: 'Belfast',tiles:[
        BasicTile(title: '{PEP STORE 0132530404} SHOP 2A; BELFAST SHOPPING CENTRE; VERMOOTEN STREET; BELFAST; 1100',tiles:[]),
      ]),
      BasicTile(title: 'Bethal',tiles:[
        BasicTile(title: '{PEP STORE 0176474895} SHOP 1; 44 JABULANI SELEPRE STREET; TRANSVALLA BUILDING; BETHAL; 2310',tiles:[]),
      ]),
      BasicTile(title: 'Breyten',tiles:[
        BasicTile(title: '{PEP STORE 0178613366} 72 BREYTENBACH STREET; BREYTEN; 2330',tiles:[]),
      ]),
      BasicTile(title: 'Bushbuckridge',tiles:[
        BasicTile(title: '{PEP STORE 0137990101} SHOP 25; BUSHBUCKRIDGE SHOPPING CENTRE; MAIN BUSHBUCKRIDGE ROAD ; BUSHBUCKRIDGE; 1280',tiles:[]),
        BasicTile(title: '{PEP STORE 0137990908} SHOP 9; TWIN CITY SHOPPING CENTRE; PORTION 4 OF FARM MAVILJAN 252; CNR MAIN & GRASKOP STREET; BUSHBUCKRIDGE; 1280',tiles:[]),
      ]),
      BasicTile(title: 'Carolina',tiles:[
        BasicTile(title: '{PEP STORE 0178431403} 33 VOORTREKKER STREET; CAROLINA; 1185',tiles:[]),
      ]),
      BasicTile(title: 'Delmas',tiles:[
        BasicTile(title: '{PEP STORE 0136653292} 40 SAREL CILLIERS STREET; DELMAS; 2210',tiles:[]),
        BasicTile(title: '{PEP STORE 0136651193} SHOP 30; WILLOWBROOKE SQUARE; CNR SAMUEL & V/D WALT STREET; DELMAS; WITBANK; 2210',tiles:[]),
      ]),
      BasicTile(title: 'Dennilton',tiles:[
        BasicTile(title: '{PEP STORE 0136651193} SHOP 30; WILLOWBROOKE SQUARE; CNR SAMUEL & V/D WALT STREET; DELMAS; WITBANK; 2210',tiles:[]),
        BasicTile(title: '{PEP STORE 0139850031} SHOP 2; TOP SPOT CENTRE; R 573; DENNILTON; 1030',tiles:[]),
      ]),
      BasicTile(title: 'Dwarsloop',tiles:[
        BasicTile(title: '{PEP STORE 013 797 1072} Shop 66, Dwarsloop Mall, R40, Dwarsloop-A, Dwarsloop, 1280',tiles:[]),
        BasicTile(title: '{PEP STORE 013 797 1093} 48 Dwarsloop Mall, R40, Dwarsloop, 0812',tiles:[]),
        BasicTile(title: '{PEP STORE 013 791 9005} Shop 208 Dwarsloop Mall, R40, Dwarsloop, 1255',tiles:[]),
      ]),
      BasicTile(title: 'Elukwatini',tiles:[
        BasicTile(title: '{PEP STORE 0178830187} SHOP 6; ELUKWATINI SHOP CENTRE; MAIN ROAD; ELUKWATINI; 1192',tiles:[]),
        BasicTile(title: '{PEP STORE 0178831882} SHOP 1; ELUKWATINI SHOPPING CENTRE; ELUKWATINI; 1022',tiles:[]),
      ]),
      BasicTile(title: 'Ermelo',tiles:[
        BasicTile(title: '{PEP STORE 0178192776} SHOP 1; CNR DE JAGER & NAUDE STREET; ERMELO; 2350',tiles:[]),
        BasicTile(title: '{PEP STORE 0178113075} SHOP 44 - 46; ERMELO MALL; 5A DE JAGER STREET; ERMELO; 2351',tiles:[]),
        BasicTile(title: '{PEP STORE 0178113306} STAND 97; CHURCH STREET; ERMELO; 2350',tiles:[]),
      ]),
      BasicTile(title: 'Evander',tiles:[
        BasicTile(title: '{PEP STORE 0176321501} SHOP NO 1A; SHOPRITE CHECKERS CENTRE; GHENT STREET; EVANDER; 2280',tiles:[]),
      ]),
      BasicTile(title: 'Fernie',tiles:[
        BasicTile(title: '{PEP STORE 0662333334} SHOP 2; FERNIE CANSH & CARRY; FERNIE STREET ; NIGEL; 2342',tiles:[]),
      ]),
      BasicTile(title: 'Graskop',tiles:[
        BasicTile(title: '{PEP STORE 0137671531} SHOP 1- 4; SPAR CENTRE; MAIN ROAD; GRASKOP; 1270',tiles:[]),
      ]),
      BasicTile(title: 'Hazyview',tiles:[
        BasicTile(title: '{PEP STORE 0137376480} SHOP 155; BLUE HAZE SHOPPING CENTRE; ROUTE 40; HAZYVIEW; 1242',tiles:[]),
        BasicTile(title: '{PEP STORE 0137373045} SHOP 232; BLUE HAZE SHOPPING CENTRE; ROUTE 40 ( MAIN ROAD); HAZYVIEW; 1242',tiles:[]),
        BasicTile(title: '{PEP STORE 0137376581} SHOP NO 304; BLUE HAZE MALL; HAZYVIEW; HAZYVIEW; 1242',tiles:[]),
      ]),
      BasicTile(title: 'Hendrina',tiles:[
        BasicTile(title: '{PEP STORE 0132930227} 45 Church Street, Hendrina, 1095',tiles:[]),
        BasicTile(title: '{PEP STORE 0132930227} KERKSTRAAT; HENDRINA; HENDRINA; 1095',tiles:[]),
      ]),
      BasicTile(title: 'Komatipoort',tiles:[
        BasicTile(title: '{PEP STORE 0137937259} Rissik St, Komatipoort, 1340',tiles:[]),
        BasicTile(title: '{PEP STORE 0137937201} Rissik St, R571, Komatipoort, 1340',tiles:[]),
        BasicTile(title: '{PEP STORE 0137937267} Shop No 15b, Komati Square, 27 Rissik St, Komatipoort, 1340',tiles:[]),
      ]),
      BasicTile(title: 'KwaMhlanga',tiles:[
        BasicTile(title: '{PEP STORE 0139478172} Shop 13 Cross Road Plaza Cross Road, KwaMhlanga, 1022',tiles:[]),
        BasicTile(title: '{PEP STORE 0139472091} Shop 63 Phola Park Shopping Centre, R573 Moloto Road, KwaMhlanga 1022, 1022',tiles:[]),
        BasicTile(title: '{PEP STORE 0139472173} Shop NO. 13, Crossroads Plaza, KwaMhlanga, 1022',tiles:[]),
        BasicTile(title: '{PEP STORE 0139478172} Shop 15 Phola Park Shopping Centre R573, Moloto Rd, KwaMhlanga, 1022',tiles:[]),
      ]),
      BasicTile(title: 'Lydenburg',tiles:[
        BasicTile(title: '{PEP STORE 0132352581} Tamarisk Building, 18 Voortrekker St, Lydenburg, 1120',tiles:[]),
        BasicTile(title: '{PEP STORE 0132350087} Shop 6A Highland Centre, 53, 1120 Kantoor St, Lydenburg, 1120',tiles:[]),
        BasicTile(title: '{PEP STORE 0132350487} Shop No 21 The Heads, R37, 1120 Lydenburg, Lydenburg, 1120',tiles:[]),
        
      ]),
      BasicTile(title: 'Machadodorp',tiles:[
        BasicTile(title: '{PEP STORE 0132560205} ERF 64 Wolmaransstraat, Machadodorp, eNtokozweni, 1170',tiles:[]),
      ]),
      BasicTile(title: 'Malelane',tiles:[
        BasicTile(title: '{PEP STORE 0137900173} Shop 26 Inkwazi Shop Centre CNR Park &, Air St, Malelane, 1320',tiles:[]),
        BasicTile(title: '{PEP STORE 0137901308} Shop 26 Inkwazi Shop Centre CNR Park &, Air St, Malelane, 1320',tiles:[]),
        BasicTile(title: '{PEP STORE 0137900304} Shop 5 Ingwe Centre, Corner Impala &, Lomati St, Malelane, 1320',tiles:[]),
        BasicTile(title: '{PEP STORE 0317900174} Shop 10, Ingwe Centre Cnr Impala And, Lomati St, 1320',tiles:[]),
      ]),
      BasicTile(title: 'Marble Hall',tiles:[
        BasicTile(title: '{PEP STORE 0132611055} 271 Main Street, Marblehall, 0450',tiles:[]),
        BasicTile(title: '{PEP STORE 0132611121} Shop 12 Cottonfields Shopping Centre, Railway St E, Marblehall, 0450',tiles:[]),
      ]),
      BasicTile(title: 'Matsulu',tiles:[
        BasicTile(title: '{PEP STORE 0137788961} Shop 2 Matsulu Shopping Centre, Madiba Dr, Matsulu, 1203',tiles:[]),
      ]),
      BasicTile(title: 'Mbombela',tiles:[
        BasicTile(title: '{PEP STORE 0137524465} Brown St, Nelspruit Central, Mbombela, 1201',tiles:[]),
        BasicTile(title: '{PEP STORE 0437401591} Shop 12, Bester Brown Building, 42 Bester St, Mbombela, 1200',tiles:[]),
        BasicTile(title: '{PEP STORE 0137523868} Henshall St, Nelspruit 312-Jt, Mbombela',tiles:[]),
        BasicTile(title: '{PEP STORE 0137422249} Shop Lg36, Samora Machel Dr, West Acres, Mbombela, 1200',tiles:[]),
        BasicTile(title: '{PEP STORE 0137524561} Ekukhanyeni Shopping Centre, Shop 5, Brown St, Mbombela, 1200',tiles:[]),
        BasicTile(title: '{PEP STORE 0123310392} Shop No 15 The Square, 5 Sitrus Cres, Mbombela, 1201',tiles:[]),
        BasicTile(title: '{PEP STORE 0137600081} Shop 218 Riverside Mall, White River, Road, Mbombela, 1200',tiles:[]),
        BasicTile(title: '{PEP STORE 0123230068} Cnr Samora Machel Drive &, Henshall St, Mbombela, 1385',tiles:[]),
        BasicTile(title: '{PEP STORE 0137533252} Shop 9-10 Sanlam Centre, 25 Samora Machel Dr, Mbombela, 1201',tiles:[]),
        BasicTile(title: '{PEP STORE 0137532448} Shop 49 Promenade, Corner Samora Machel &, Henshall St, Mbombela, 1201',tiles:[]),
        BasicTile(title: '{PEP STORE 0137571447} Shop NO 18 THE Grove, R40 Between Nelspruit&witrivier, Mbombela, 1200',tiles:[]),
      ]),
      BasicTile(title: 'Middelburg',tiles:[
        BasicTile(title: '{PEP STORE 0132824900} 27 Lang Street, Mhluzi, Middelburg, 1055',tiles:[]),
        BasicTile(title: '{PEP STORE 0132441049} Shop 97 Middelburg Mall Corner Fontein Street &, Tswelopepe Avenue, Middelburg, 1050',tiles:[]),
      ]),
      BasicTile(title: 'Morgenzon',tiles:[
        BasicTile(title: '{PEP STORE 0177933049} 200 De Jager St, Morgenzon, 2315',tiles:[]),
      ]),
      BasicTile(title: 'Ohrigstad',tiles:[
        BasicTile(title: '{PEP STORE 0132380191} Potgieterstraat, Ohrigstad, 1122',tiles:[]),
      ]),
      BasicTile(title: 'Piet Retief',tiles:[
        BasicTile(title: '{PEP STORE 0178264261} Shop 17A-B, Piet Retief Shopping Centre, Church St, 2380, Piet Retief, 2380',tiles:[]),
        BasicTile(title: '{PEP STORE 0178260109} Shop, 27, Church St, Piet Retief, 2380',tiles:[]),
        BasicTile(title: '{PEP STORE 0178260374} Shop 5 Kurper Building, Cnr Mark Street & Zuiden St, 2380, Piet Retief, 2380',tiles:[]),
        BasicTile(title: '{PEP STORE 0178260415} Shop 54 Mall @ Mfula, Cnr R543 &, N2, Piet Retief, 2380',tiles:[]),
        BasicTile(title: '{PEP STORE 0178260036} Shop 15, Woodhill Retail Centre, C/o Church Street &, Theo. Mocke St, Piet Retief, 2380',tiles:[]),
      ]),
      BasicTile(title: 'Sabie',tiles:[
        BasicTile(title: '{PEP STORE 0137642263} Hoofstraat, Sabie, 1260',tiles:[]),
      ]),
      BasicTile(title: 'Secunda',tiles:[
        BasicTile(title: '{PEP STORE 0176314794} Shop NO C1 Secunda, Village CNR Vaal River AND, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176341157} Plaza, Shop 4 Secunda, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176314794} Shop 14-16 Secunda Square, Nico Diedericks St, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176347546} Shop LG 27, PDP Kruger St, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176347546} Shop NO LG 31 Secunda Regional Mall, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176315052} Shop 29 Pick N PAY Centre, Nico Diedericks ST, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176855250} Shop 24 Ekhaya Mall C/o R546 &, R580, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176853045} Shop NO 77B, Embalenhle Mall, Secunda, 2302',tiles:[]),
        BasicTile(title: '{PEP STORE 0176853045} Shop NO 22A Mall@embalenhle, CNR Mbalenhle&old Provincial RD, Embalenhle, 2285',tiles:[]),
        BasicTile(title: '{PEP STORE 0176851011} Shop 77B Mall @ Emba, Secunda, 2285',tiles:[]),
      ]),
      BasicTile(title: 'Siyabuswa',tiles:[
        BasicTile(title: '{PEP STORE 0139731788} Shop 2 Siyabuswa Shopping Centre Shop 2 Siyabuswa Shopping Centre Siyabuswa, 1124',tiles:[]),
        BasicTile(title: '{PEP STORE 0139731015} Shop No 9 Siyabuswa Mall Bongimfundo Street, Siyabuswa, 0472',tiles:[]),
        BasicTile(title: '{PEP STORE } Siyabuswa-A, Siyabuswa, 0472',tiles:[]),
        BasicTile(title: '{PEP STORE 0139730075} Shop 9, Siyabuswa Shoprite Centre Siyabuswa Drive, Siyabuswa, 0472',tiles:[]),
        BasicTile(title: '{PEP STORE 0139732826} Shop NO 2, Siyabuswa Pick N PAY Centre, Mpumalanga, 0472',tiles:[]),
      ]),
      BasicTile(title: 'Standerton',tiles:[
        BasicTile(title: '{PEP STORE 0177121489} Charl Cilliers St, Standerton, 2430',tiles:[]),
        BasicTile(title: '{PEP STORE 0177123261} Street and Andries, Shop 30A and 31, Monument Centre AKA Mbonani Mayisela, Pretorius Street, Standerton, 2430',tiles:[]),
        BasicTile(title: '{PEP STORE 0177123261} 2A Mbonani Mayisela, Street, Standerton, 2430',tiles:[]),
        BasicTile(title: '{PEP STORE 0177140283} Shop No 4&5 Standerton Junction Cnr Bauman &, Beyers Naude St, Standerton, 2430',tiles:[]),
        BasicTile(title: '{PEP STORE 0177121479} Shop 1 Corner Of Charl Cilliers &, Mbonani Mayisela, St, Standerton, 2430',tiles:[]),
      ]),
      BasicTile(title: 'Vaalbank',tiles:[
        BasicTile(title: '{PEP STORE 0139478419} Shop 33 Crossroads Plaza, CNR Vaalbank EN Moloto ST, KwaMhlanga, 1022',tiles:[]),
      ]),
      BasicTile(title: 'Volksrust',tiles:[
        BasicTile(title: '{PEP STORE 0177351871} Smitties Building, Cnr Laingsnek Street, Joubert Road, Joubert Road, Volksrust',tiles:[]),
      ]),
      BasicTile(title: 'Waterval Boven',tiles:[
        BasicTile(title: '{PEP STORE 0132570022} Waterval Boven, Emgwenya, 1195',tiles:[]),
      ]),
      BasicTile(title: 'Waterval Onder',tiles:[
        BasicTile(title: '{PEP STORE 0132570022} Waterval Boven, Emgwenya, 1195',tiles:[]),
      ]),
      BasicTile(title: 'White River',tiles:[
        BasicTile(title: '{PEP STORE 0137512091} Shop 17 White River Square, CNR Kruger&hennie VAN Till Road, White River, 1240',tiles:[]),
        BasicTile(title: '{PEP STORE 0137501874} Shop 1 Absa White River, CNR William Lynn AND, White River, 1240',tiles:[]),
        BasicTile(title: '{PEP STORE 0137490027} Shop No 15 White River Crossing, White River, 1240',tiles:[]),
        BasicTile(title: '{PEP STORE 0137501709} 20 White River Square Hennie Van Till Street White River, Square, Mbombela, 1240',tiles:[]),
      ]),
      BasicTile(title: 'Witbank',tiles:[
        BasicTile(title: '{PEP STORE 0136901156} Shop A2 & Ab Metropolitan Centre Corner Botha Street and, Eadie St, Emalahleni, 1034',tiles:[]),
        BasicTile(title: '{PEP STORE 0136970691} Shop 10 Sanlamsentrum, Watermeyerstraat, Emalahleni, 1038',tiles:[]),
        BasicTile(title: '{PEP STORE 0136564715} Shop no 31, Saveways Crescent Centre Corner President & Swartbos Street, Emalahleni, 1034',tiles:[]),
        BasicTile(title: '{PEP STORE 0136924912} Shop 62 Highveld Mall, President Street, Mandela St, Emalahleni, 1035',tiles:[]),
        BasicTile(title: '{PEP STORE 0136564723} Shop 1, Witbank Taxi Rank, 3 Escombe St, Witbank, Emalahleni, 1035',tiles:[]),
        BasicTile(title: '{PEP STORE 0136924179} Shop 205 Highveld Mall, Mandela St, Witbank, Johannesburg, 2230',tiles:[]),
        BasicTile(title: '{PEP STORE 0136561370} Shop 26, Downtown Mall, 14 Diederichs St, Witbank, Emalahleni, 2230',tiles:[]),
        BasicTile(title: '{PEP STORE 0136982131} Shop 3 KG Crossing C/o MMatthew Phosa &, Chief Masango St, Emalahleni, 1034',tiles:[]),
        BasicTile(title: '{PEP STORE 0136980099} Shop No. 21B Kwa Guqa Mall Cnr Matthew Posa &, N4, Kwa-Guqa, Emalahleni, 1073',tiles:[]),
        BasicTile(title: '{PEP STORE 0136586189} Shop Blo19, Saveways Crescent Cnr Nelson Mandela Drive &, OR Tambo Rd, Emalahleni, 1035',tiles:[]),
        BasicTile(title: '{PEP STORE 0136586148} C05 Metropolitan Centre Cnr Eadie & Botha Avenues, Emalahleni, 1039',tiles:[]),
        BasicTile(title: '{PEP STORE 0136970691} 255 Masango St, Phola, Emalahleni, 2233',tiles:[]),
      
      ]),

    ]);
    tiles.add(mpumalanga);

    BasicTile limpopo = BasicTile(title:'Limpopo',tiles: [
      BasicTile(title: 'Alldays',tiles:[
        BasicTile(title: '{PEP STORE 0648173108} SHOP 7; R572 STREET; ALLDAYS; LIMPOPO; 015',tiles:[]),
      ]),
      BasicTile(title: 'Ba-Phalaborwa',tiles:[
        BasicTile(title: '{PEP STORE 0157810425} SHOP 9; CHECKERS CENTRE; LENTANA STREET; BA-PHALABORWA; 1390',tiles:[]),
        BasicTile(title: '{PEP STORE 0157694716} SHOP NO 17; NAMAKGALE CROSSING; CNR CALVIN NGOBENI DRIVE; ASIBASABI DRIVE; BA-PHALABORWA; 1391',tiles:[]),
        BasicTile(title: '{PEP STORE 0157815251} Shop 5, Phalaborwa Mall, Cnr Palm Avenue & Hf Verwoerd Street, Phalaborwa, 1389',tiles:[]),
        BasicTile(title: '{PEP STORE 0157830063} Shop No 9, Checkers Centre Lentana Street, Phalaborwa, 1392',tiles:[]),
        BasicTile(title: '{PEP STORE 0157815261} Shop 8, Shoprite Centre Corner of Sealene &, Palm St, Phalaborwa, 1390',tiles:[]),
        BasicTile(title: '{PEP STORE 0157810108} 13 Eden Square Cnr Sealene &, Palm St, Phalaborwa, 1390',tiles:[]),
        BasicTile(title: '{PEP STORE 0157813695} Shop B1, Standard Bank Centre, Palm Avenue, Tambotie St, Phalaborwa, 1390',tiles:[]),
        BasicTile(title: '{PEP STORE 0157694858} Shop 26 Namakgale Crossing Corner Calvin Ngobeni Drive &, Asibasabi Street Namakgale, Limpopo, South Africa, 1391, 1391',tiles:[]),
      ]),
      BasicTile(title: 'Bela-Bela',tiles:[
        BasicTile(title: '{PEP STORE 0147362141} SHOP 11; BELA MALL; R 101; BELA-BELA; 0480',tiles:[]),
        BasicTile(title: '{PEP STORE 0147364797} CNR PRETORIA & CHRIS HANI STREET; BELA-BELA; 0489',tiles:[]),
        BasicTile(title: '{PEP STORE 0147362804} SHOP C; VAN HEERDEN BUILDING; CHRIS HANI ROAD; BELA-BELA; 0480',tiles:[]),
        BasicTile(title: '{PEP STORE 0147362438} SHOP G17 & 18; BUSHVELD PICK N PAY; POTGIETER STREET; BELA-BELA; 0480',tiles:[]),
      
      ]),
      BasicTile(title: 'Bochum',tiles:[
        BasicTile(title: '{PEP STORE 0155050074} SHOP NO 15; BLOUBERG MALL; MAIN ROAD ; BOCHUM; 0790',tiles:[]),
        BasicTile(title: '{PEP STORE 0155053002} Shop 15 Blouberg Mall Main Street, Bochum, 0790',tiles:[]),
        BasicTile(title: '{PEP STORE 0155050036} Shop 1 Blouberg Mall, Main Road, Bochum, 0790',tiles:[]),
        BasicTile(title: '{PEP STORE 0155050083} Shop 22A Bochum Plaza, Blouberg Street, Bochum, 0790',tiles:[]),
      ]),
      BasicTile(title: 'Bopedi',tiles:[
        BasicTile(title: '{PEP STORE 0156220469} SHOP 9 & 9A; BOPEDI SHOP CENTRE; BOPEDI; PIETERSBURG; POLOKWANE; 0739',tiles:[]),
      ]),
      BasicTile(title: 'Burgerfort',tiles:[
        BasicTile(title: '{PEP STORE 0132317048} SHOP 17; TWIN CITY SHOPPING CENTRE; DIRK WINTERBACH STREET; BURGERSFORT; 1150',tiles:[]),
        BasicTile(title: '{PEP STORE 0132317243} SHOP 5 & 6; MORONE SHOPPING CENTRE; KASTANIA STREET; BURGERSFORT; 1150',tiles:[]),
        BasicTile(title: '{PEP STORE 0132317559} SHOP 8; CASTLE SQUARE SHOPPING CENTRE; DIRK WINTERBACH STREET; BURGERSFORT; 1150',tiles:[]),
        BasicTile(title: '{PEP STORE 0132317022} SHOP NO 18; BURGERSFORT MALL; CNR DIRK WINTERBACH & MPUMULA ST; BURGERSFORT; 1150',tiles:[]),
        BasicTile(title: '{PEP STORE 0132317493} SHOP 1 2 3; PLATINUM PLACE; KRUIS STREET; BURGERSFORT; 1150',tiles:[]),
        BasicTile(title: '{PEP STORE 0132317156} SHOP NO L 87; TUBATSE MALL; CNR R37 & R555; BURGERSFORT; 1150',tiles:[]),
      ]),
      BasicTile(title: 'Dendron',tiles:[
        BasicTile(title: '{PEP STORE 0155010147} Corner of Republic Street and Government Street, Dendron, 0715',tiles:[]),
      ]),
      BasicTile(title: 'Elim',tiles:[
        BasicTile(title: '{PEP STORE 0155563768} Shop No 4 Elim Shopping Centre R578, Mabobo, Elim, 7284',tiles:[]),
        BasicTile(title: '{PEP STORE 0155563542} Shop 2 Elim Shopping Centre, R578, Elim, 7284',tiles:[]),
      ]),
      BasicTile(title: 'Ga-Kgapane',tiles:[
        BasicTile(title: '{PEP STORE} SHOP 6; GA- KGAPANE SHOP CENTRE; MAIN ROAD; GA-KGAPANE; 0838',tiles:[]),
        BasicTile(title: '{PEP STORE 0153284348} Shop 14 Modjadji Plaza Cnr Main Road & Hospital Street, Ga-Kgapane-A, 0838',tiles:[]),
        BasicTile(title: '{PEP STORE } Ga-Kgapane-A, Modjadjiskloof, 0838',tiles:[]),
      ]),
      BasicTile(title: 'Gandlanani Vahlavi Plaza',tiles:[
        BasicTile(title: '{PEP STORE} SHOP NO 17; VAHLAVI PLAZA; R81 GIYANI ROAD; GANDLANANI; LIMPOPO; 0826',tiles:[]),
      ]),
      BasicTile(title: 'Groblersdal',tiles:[
        BasicTile(title: '{PEP STORE 0132623134} CNR VAN RIEBEECK & NORTH STREET; GROBLERSDAL; 0470',tiles:[]),
        BasicTile(title: '{PEP STORE 0132624131} SHOP 1A; VAN RIEBEECK STREET; GROBLERSDAL; 0470',tiles:[]),
        BasicTile(title: '{PEP STORE 0132625900} SHOP NO 12A & 12B; GAME CENTRE; CNR BARLOW STREET &GROBLER AVE; GROBLERSDAL; 0470',tiles:[]),
        BasicTile(title: '{PEP STORE 0132623986} SHOPS 36; GROBLERSDAL MALL; VAN RIEBEECK STREET; GROBLERSDAL; 0470',tiles:[]),
      ]),
      BasicTile(title: 'Hlanganani',tiles:[
        BasicTile(title: '{PEP STORE 0618749746} SHOP 6 ; MAKOMBANDELA MINI SHOPPING CENTR ; 954 NJAKANJHAKA VILLAGE ; HLANGANANI; 3244',tiles:[]),
      ]),
      BasicTile(title: 'Hoedspruit',tiles:[
        BasicTile(title: '{PEP STORE 0157932322} 187 PANTHER STREET; HOEDSPRUIT CENTRE; HOEDSPRUIT; 1380',tiles:[]),
        BasicTile(title: '{PEP STORE 0157930055} SHOP 12; HOEDSPRUIT WILDLIFE ESTATE; MAIN ROAD; HOEDSPRUIT; 1380',tiles:[]),
        BasicTile(title: '{PEP STORE 0157932322}  Hoedspruit Shopping Centre, 147 Panther St, Hoedspruit, 1380',tiles:[]),
        BasicTile(title: '{PEP STORE 0157932322} 147 Panther St, Hoedspruit, 1380',tiles:[]),
      ]),
      BasicTile(title: 'Lebowakgomo',tiles:[
        BasicTile(title: '{PEP STORE 0156335982} Shop 7A Metlife Plaza Cnr Zebediela R518 &, R579, Lebowakgomo, 0737',tiles:[]),
        BasicTile(title: '{PEP STORE } Lebowakgomo-BA, Lebowakgomo, 0737',tiles:[]),
        BasicTile(title: '{PEP STORE 0156337091} Shop No 45 Mall@lebo, Corner R515 &, R579, Lebowakgomo, 0737',tiles:[]),
        BasicTile(title: '{PEP STORE 0156335612} Shop 12F, Phasha Shopping Centre, Mphela str, Lebowakgomo, 0737',tiles:[]),
      ]),
      BasicTile(title: 'Lephalale',tiles:[
        BasicTile(title: '{PEP STORE 0147631915} Shop 12 Lephalale Mall Cnr Apiesodoring &, Nelson Mandela Dr, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0147632431} Shop 7 Lephalale Square Cnr Wless &, Jan Lee St, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0147633357} OK Shopping Centre, Shop 7, Hendrik St, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0117532815} Shop 23 Marula Mile, J Louis Botha Dr, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0147631460} 59 Lephalale Mall Cnr Chris Hani &, Nelson Mandela Dr, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0147631344} Shop E2 Boxer Centre, Pika St, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0186320351} Shop 12, The Fashion Corner, Lephalale, 0555',tiles:[]),
        BasicTile(title: '{PEP STORE 0147682105} Shop No 7, Relebonjile Road Marapong Spar, 0902',tiles:[]),
      ]),
      BasicTile(title: 'Letsitele',tiles:[
        BasicTile(title: '{PEP STORE 0153451966} Shop 3 Letsitele Complex Cnr Vorster & Trichardt Road, Letsitele, 0885',tiles:[]),
      ]),
      BasicTile(title: 'Louis Trichardt',tiles:[
        BasicTile(title: '{PEP STORE 0155165252} Shop 38 Shoprite Centre, 105 Kruger St, Louis Trichardt, 0920',tiles:[]),
        BasicTile(title: '{PEP STORE 0155563117} Shop 79 Makhado Crossing, Cnr N1 &, Songozwi St, Elti Villas, Louis Trichardt, 0920',tiles:[]),
        BasicTile(title: '{PEP STORE 0155163419} Shop 19, Nzhelele Valley Centre, 25 Songozwi St, Louis Trichardt, 0920',tiles:[]),
        BasicTile(title: '{PEP STORE 0155160380} Shop 2, Elcona Building, 103 Krogh Straat, Louis Trichardt, 0920',tiles:[]),
      ]),
      BasicTile(title: 'Modimolle',tiles:[
        BasicTile(title: '{PEP STORE 0147173611} 89 Nelson Mandela Dr, Modimolle, 0510',tiles:[]),
        BasicTile(title: '{PEP STORE 0147173120} Shop 11, Modi Mall, Thabo Mbeki Dr, Modimolle, 0510',tiles:[]),
        BasicTile(title: '{PEP STORE 0147171504} Meiniger St, Modimolle, 0510',tiles:[]),
        BasicTile(title: '{PEP STORE 0154914277} Shop 2, 89 Nelson Mandela Dr, Modimolle, 0510',tiles:[]),
      ]),
      BasicTile(title: 'Modjadjiskloof',tiles:[
        BasicTile(title: '{PEP STORE 0153099485} Shop 1 Botha St, West, Modjadjiskloof, 0835',tiles:[]),
      ]),
      BasicTile(title: 'Mogwadi',tiles:[
        BasicTile(title: '{PEP STORE 0155010147} Corner of Republic Street and Government Street, Dendron, 0715',tiles:[]),
      ]),
      BasicTile(title: 'Mokopane',tiles:[
        BasicTile(title: '{PEP STORE 0154918307} Shop 28A Mokopane Mall, 62 Thabo Mbeki Dr, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0154912380} Shop 9, The Crossing Mall Corner Nelson Mandela Drive &, Ruiter Rd, Ga, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0154913891} Shop 46, 48 Retief St, Mokopane, 0600',tiles:[]),
        BasicTile(title: '{PEP STORE 0154914277} 59 Thabo Mbeki Dr, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0734115410} Shop 11, Mokopane Mall, 96 Thabo Mbeki Dr, Mokopane, 0600',tiles:[]),
        BasicTile(title: '{PEP STORE 0154912380} Corner Nelson Mandela Drive &, Ruiter Rd, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE } ',tiles:[]),
        BasicTile(title: '{PEP STORE } ',tiles:[]),
        BasicTile(title: '{PEP STORE 0154831187} Shop 17 Mahwelereng Shopping Centre, Mokopane, 0600',tiles:[]),
        BasicTile(title: '{PEP STORE 0127243037} Shop No 4 Katale Square Motogane Street, Mokopane, 0437',tiles:[]),
      ]),
      BasicTile(title: 'Mookgophong',tiles:[
        BasicTile(title: '{PEP STORE } 50 Thabo Mbeki St, Mookgopong, 0560',tiles:[]),
        BasicTile(title: '{PEP STORE 0147430581} 50 Thabo Mbeki St, Mookgopong, 0560',tiles:[]),
      ]),
      BasicTile(title: 'Musina',tiles:[
        BasicTile(title: '{PEP STORE 0155340490} Shop 1 Musina Shopping Centre, N1, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155340167} Shop 37, Great North Plaza Cnr National Road &, Smelter Ave, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155334201} Shop No 1 & 2, Musina Mall, 14 National Road, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155340490} Shop 1 Musina Shopping Centre, N1, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155340167} Shop 37, Great North Plaza Cnr National Road &, Smelter Ave, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155334201} Shop No 1 & 2, Musina Mall, 14 National Road, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE } Klaff Ave, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155340820} Shop 13, BSR Building Cnr Emery Road &, Lopati Rd, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155340191}  Plaza, Shop 37 Great North, Musina, 0900',tiles:[]),
        BasicTile(title: '{PEP STORE 0155340248} Shop 11, Bepro Centre National Road, Musina, 0900',tiles:[]),
        
      ]),
      BasicTile(title: 'Naboomspruit',tiles:[
        BasicTile(title: '{PEP STORE 0147430581} 50 Thabo Mbeki St, Mookgopong, 0560',tiles:[]),
      ]),
      BasicTile(title: 'Phalaborwa',tiles:[
        BasicTile(title: '{PEP STORE 0157815251} Shop 5, Phalaborwa Mall, Cnr Palm Avenue & Hf Verwoerd Street, Phalaborwa, 1389',tiles:[]),
        BasicTile(title: '{PEP STORE 0157815261} Shop 8, Shoprite Centre Corner of Sealene &, Palm St, Phalaborwa, 1390',tiles:[]),
        BasicTile(title: '{PEP STORE 0157830063} Shop No 9, Checkers Centre Lentana Street, Phalaborwa, 1392',tiles:[]),
        BasicTile(title: '{PEP STORE 0157694716} Shop 17, Namakgale Crossing Calvin Ngobeni Drive & Asibasabi Street, Namakgale-B, Phalaborwa, 1391',tiles:[]),
        BasicTile(title: '{PEP STORE 0157810108} 13 Eden Square Cnr Sealene &, Palm St, Phalaborwa, 1390',tiles:[]),
      ]),
      BasicTile(title: 'Polokwane',tiles:[
        BasicTile(title: '{PEP STORE 0153284348} SHOP NO 14; MODJADJI PLAZA; MAIN ROAD; MODJADJI; POLOKWANE; 0837',tiles:[]),
        BasicTile(title: '{PEP STORE 0152232563} Shop 5, City Centre Corner Bok Street &, Rissik St, Capricorn, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152912609} Shop Estamos Building, 106 President Paul Kruger St, Polokwane, 6990',tiles:[]),
        BasicTile(title: '{PEP STORE 0152971377} Shop 47, Limpopo Mall Corner of Rissik &, Kerk St, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152913163} Shop 30 Metropolitan Building, 30 Market St, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152972840} H/V Mark & Rissikstraat, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152970930} Shop 6 KFC Rissik St, Cnr President Paul Kruger St &, Rissik St, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152651379} Interchange, Shop L52 Mall OF THE North, R81 & N1, Polokwane, 0750',tiles:[]),
        BasicTile(title: '{PEP STORE 0152973045} shop.4, Smart Centre, 75a Market St, Polokwane Central, Polokwane, 0700',tiles:[]),
        BasicTile(title: '{PEP STORE 0152955675} Shop NO 5 Checkers Centre, CNR OF Grobbler & Hans VAN, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152955675} Shop 23, City Centre, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152957127} Shop 203&204 Astra Building, 61 Landdros Mare St, Street, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152970807} Shop 30 City Centre, 103 Bok St, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0219372300} Shop 19A Limpopo Mall, Market St, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152976928} Shop No 7 Devenish 13c Cnr Generaal Joubert &, Devenish St, Polokwane, 0700',tiles:[]),
        BasicTile(title: '{PEP STORE 0152651069} Shop L16, Mall Of The North Cnr R81 &, N1, Polokwane, 0750',tiles:[]),
        BasicTile(title: '{PEP STORE 0153073427} Shop No 1 Ramongoana Shopping Centre, Dendron Rd, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152959422} Shop 15A Metropolitan Building, Market St, Polokwane, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152912707} Shop 10 Pioneer Building, Landdros Mare St, Polokwane, 0700',tiles:[]),
        BasicTile(title: '{PEP STORE 0152912609} Shop 4-5B Library Gardens, Corner Grobler Street &, Hans Van Rensburg St, Polokwane, 0699',tiles:[]),
      ]),
      BasicTile(title: 'Mokopane',tiles:[
        BasicTile(title: '{PEP STORE 0154918307} Shop 28A Mokopane Mall, 62 Thabo Mbeki Dr, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0154912380} Shop 9, The Crossing Mall Corner Nelson Mandela Drive &, Ruiter Rd, Ga, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0154913891} Shop 46, 48 Retief St, Mokopane, 0600',tiles:[]),
        BasicTile(title: '{PEP STORE 0154914277} 59 Thabo Mbeki Dr, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0154912380} Corner Nelson Mandela Drive &, Ruiter Rd, Mokopane, 0601',tiles:[]),
        BasicTile(title: '{PEP STORE 0154831187} Shop 17 Mahwelereng Shopping Centre, Mokopane, 0600',tiles:[]),
        BasicTile(title: '{PEP STORE 0127243037} Shop No 4 Katale Square Motogane Street, Mokopane, 0437',tiles:[]),
      ]),
      BasicTile(title: 'Seshego',tiles:[
        BasicTile(title: '{PEP STORE 0152235934} Shop NO 8, Seshego Circle, Seshego-B, 0742',tiles:[]),
        BasicTile(title: '{PEP STORE 0216712948} Shop 17 Seshego Plaza, New Era Dr, Seshego-B, 0699',tiles:[]),
        BasicTile(title: '{PEP STORE 0152235937} Shop 12 Seshego Circle, Ditlou St, Seshego-B, Polokwane, 0742',tiles:[]),
      ]),
      BasicTile(title: 'Thabazimbi',tiles:[
        BasicTile(title: '{PEP STORE 0147771865} Shop 5 Shoprite Centre, Van Der Bijl St, Thabazimbi, 0381',tiles:[]),
        BasicTile(title: '{PEP STORE 0215104136} Shop 48 Thaba Mall, Warmbad Weg Rd, Thabazimbi, 0380',tiles:[]),
        BasicTile(title: '{PEP STORE 0147771164} Shop 4, Thaba Mall, Warmbad Weg Rd, R510, Thabazimbi, 0387',tiles:[]),
      ]),
      BasicTile(title: 'Thohoyandou',tiles:[
        BasicTile(title: '{PEP STORE 0159624339} Shop 1, Ellerine Building, Short St, Thohoyandou, 0945',tiles:[]),
        BasicTile(title: '{PEP STORE 0159620176} Shop B1,venda Plaza Cnr Main Road &, Casino Blvd, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159624339} Thohoyandou Shopping Centre Mphephu Street, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159620798}  Shop No L9, Thavhani Mall, R524, Thohoyandou, 0952',tiles:[]),
        BasicTile(title: '{PEP STORE 0159625011} Shop 1 L A Rambuda Complex, Short St, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159625499} Shop 4 PEP Cell, Sanlam Building, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159621350} U43a Thavhani Mall, R524, Thohoyandou, 0952',tiles:[]),
        BasicTile(title: '{PEP STORE 0159620096} Portion A OF ERF 439, Shop NO 4, Pangami Mall, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159620257} Shop 6 Game Centre, Mphetu St, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159632003} Shop 29, Spar Centre, Sibasa, Thohoyandou, 0945',tiles:[]),
        BasicTile(title: '{PEP STORE 0159626232} Plaza, Shop Ad06, Venda, Thohoyandou, 0945',tiles:[]),
        BasicTile(title: '{PEP STORE 0159625773} Shop 22 Mutsindo Mall, Tshanduko Street, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159620873} L 58A Thavhani Mall, R524, Thohoyandou, 0952',tiles:[]),
        BasicTile(title: '{PEP STORE } Tshivhase St, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0832979524} Shop NO 2 Sanlam Building, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE } Tshivhase St, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159620065} Shop B1, Capricorn Plaza, Tshanduko St, Thohoyandou, 0950',tiles:[]),
        BasicTile(title: '{PEP STORE 0159631358} Shop B6, Shoprite Checkers Building, Sibasa, 0970',tiles:[]),
        BasicTile(title: '{PEP STORE 0159635128} Shop 9/10/11 Village Walk Nutale Road, Mukula, Thohoyandou, 0978',tiles:[]),
        BasicTile(title: '{PEP STORE } Casino Blvd, Thohoyandou-F, Thohoyandou, 0950',tiles:[]),
      ]),
      BasicTile(title: 'Tzaneen',tiles:[
        BasicTile(title: '{PEP STORE 0153076465} Shop 26A Tzaneng Mall, 26 Danie Joubert St, Arbor Park, Tzaneen, 0850',tiles:[]),
        BasicTile(title: '{PEP STORE 0153073427} 345 Joseph Centre, 4 Danie Joubert St, Tzaneen, 0850',tiles:[]),
        BasicTile(title: '{PEP STORE 0153060151} Shop NO M16 Tzaneng Mall, 24-26 Danie Joubert, Tzaneen, 0850',tiles:[]),
        BasicTile(title: '{PEP STORE 0153071603} Shop 24 Tzaneen Crossing Lydenburg Road, Arbor Park, Tzaneen, 0850',tiles:[]),
        BasicTile(title: '{PEP STORE 0153073127} Plaza, Shop 6 Maake, Tzaneen, 0850',tiles:[]),
      ]),
      BasicTile(title: 'Zebedeila',tiles:[
        BasicTile(title: '{PEP STORE 0156423787} Shop No 12 Zebediela Plaza, R519, Zebediela, 0631',tiles:[]),
        BasicTile(title: '{PEP STORE 0156423787} Shop 17, Zebediela Plaza, R519, Zebediela, 0737',tiles:[]),
        BasicTile(title: '{PEP STORE 0156335982} Shop 7A Metlife Plaza Cnr Zebediela R518 &, R579, Lebowakgomo, 0737',tiles:[]),
      ]),
    ]);
    tiles.add(limpopo);

    return tiles;
  }
}