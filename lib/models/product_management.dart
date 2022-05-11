

import 'dart:math';
import 'package:manikhwe_herbs/models/animals.dart';
import 'package:manikhwe_herbs/models/how_to_use.dart';
import 'package:manikhwe_herbs/models/results/products_results.dart';
import 'package:manikhwe_herbs/models/results/trees_results.dart';
import 'package:manikhwe_herbs/models/trees.dart';

import 'language_management.dart';
import 'dart:io' show Platform;


abstract class Product{
  String name;
  double price;
  String language;
  int languageIndex;
  String type = 'Umuthi';
  
  bool iyagquma;
  bool iyageza;
  bool iyaphalaza;
  bool iyachela;
  bool iyachatha;
  bool iyaphuzwa;

  Product(this.languageIndex,{
    this.name = '',
    this.price = 150.0,
    this.language = 'Zulu',
    this.iyagquma = false,
    this.iyageza = false,
    this.iyaphalaza = false,
    this.iyachela = false,
    this.iyachatha = false,
    this.iyaphuzwa = false
  }){
    switch(language){
      case 'Zulu':languageIndex = 0;break;

    }
    price = Platform.isAndroid?150:250;
  }

  Product.fromJson(Map<String, dynamic> json): 
  name = json['name'], 
  price = json['price'], 
  type = json['type'],
  language = json['language'],
  iyagquma = json['iyagquma'],
  iyageza = json['iyageza'],
  iyaphalaza = json['iyaphalaza'],
  iyachatha = json['iyachatha'],
  iyaphuzwa = json['iyaphuzwa'],
  iyachela = json['iyachela'],
  languageIndex = json['languageIndex'];

  Map<String, dynamic> toJson() {
    return {
      'name ': name,
      'price ': price,
      'type ': type,
      'result ': findPurpose().toString(),
      'how_to_use ': howToUse()
    };
  
  }

  // What are the consiquences of using this product?
  List<String> findPurpose();
  // Directions of using this products.
  String howToUse();
}

abstract class Isiwasho extends Product{
  late Owner owner;
  var indredients = [];

  Isiwasho(String name,int languageIndex,this.indredients) : super(languageIndex,name:name){
    type = 'Isiwasho';
  }

}


class Asisinde extends Isiwasho{

  Asisinde(int languageIndex) : super('Asisinde',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu kayellow bone', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '1 yellow and 1 pink powder.']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaAsisinde[0][languageIndex],
      ProductResultLanguage.imiphumelaAsisinde[1][languageIndex],
      ProductResultLanguage.imiphumelaAsisinde[2][languageIndex],
    ];
  }

  @override 
  String howToUse(){
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class Asiphephe extends Isiwasho{

  Asiphephe(int languageIndex) : super('Asiphephe',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu kayellow bone', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '3 strong green powder.']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String>  findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaAsiphephe[0][languageIndex],
      ProductResultLanguage.imiphumelaAsiphephe[1][languageIndex],
      ProductResultLanguage.imiphumelaAsiphephe[2][languageIndex],
      
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class Mabeze extends Isiwasho{

  Mabeze(int languageIndex) : super('Mabeze',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu (imamatheka, umzaneno,iwoza woza, uvuma), ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '3 ink/purple and 1 black powder']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String>  findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaMabeze[0][languageIndex],
      ProductResultLanguage.imiphumelaMabeze[1][languageIndex],
      ProductResultLanguage.imiphumelaMabeze[2][languageIndex],
      
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class Syamthanda extends Isiwasho{

  Syamthanda(int languageIndex) : super('Syamthanda',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu (imamatheka, umzaneno,iwoza woza, uvuma), ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '3 light green powder']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String>  findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaSyamthanda[0][languageIndex],
      ProductResultLanguage.imiphumelaSyamthanda[1][languageIndex],
      ProductResultLanguage.imiphumelaSyamthanda[2][languageIndex],
     
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class MyNo1 extends Isiwasho{

  MyNo1(int languageIndex) : super('MyNo1',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu (imamatheka, umzaneno,iwoza woza, uvuma), ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '1-3 ink powder']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaMyNo1[0][languageIndex],
      ProductResultLanguage.imiphumelaMyNo1[1][languageIndex],
      ProductResultLanguage.imiphumelaMyNo1[2][languageIndex],
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class UmakotiLo extends Isiwasho{

  UmakotiLo(int languageIndex) : super('UmakotiLo',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu (imamatheka, umzaneno,iwoza woza, uvuma), ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '1-3 red blood powder']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaUmakotiLo[0][languageIndex],
      ProductResultLanguage.imiphumelaUmakotiLo[1][languageIndex],
      ProductResultLanguage.imiphumelaUmakotiLo[2][languageIndex],
   
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class Mhloniphe extends Isiwasho{

  Mhloniphe(int languageIndex) : super('Mhloniphe',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu ka Yellow Bone, ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '1-3 yellow powder']){
    iyageza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaMhloniphe[0][languageIndex],
      ProductResultLanguage.imiphumelaMhloniphe[1][languageIndex],
      ProductResultLanguage.imiphumelaMhloniphe[2][languageIndex],
   
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[1][languageIndex];
  }
}

// Fodo Finish
class Siyakuvumela extends Isiwasho{

  Siyakuvumela(int languageIndex) : super('Siyakuvumela',languageIndex,[
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    'Imvuthu Ye(mamatheka, vuma, woza woza, umzaneno)', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    '?']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaSiyakuvumela[0][languageIndex],
      ProductResultLanguage.imiphumelaSiyakuvumela[1][languageIndex],
      ProductResultLanguage.imiphumelaSiyakuvumela[2][languageIndex],
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

// Mpukane
class Madida extends Isiwasho{

  Madida(int languageIndex) : super('Madida',languageIndex, [
    '50 kg Sea Salt', 
    '4-6 camphor capsules', 
    '?', 
    '?',
    'umlotha wamandiya omude', 
    '?']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaMadida[0][languageIndex],
      ProductResultLanguage.imiphumelaMadida[1][languageIndex],
      ProductResultLanguage.imiphumelaMadida[2][languageIndex],
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class Esogazi extends Isiwasho{

  Esogazi(int languageIndex) : super('Esogazi',languageIndex, [
    
    'camphor capsules', 
    'Umkhando Pink',
    'Umcako',
    'Ilula',
    'Uzamlandela', 
    'Jabula Powder']){
    iyageza = true;
    iyaphalaza = true;
    iyagquma = true;

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaEsodazi[0][languageIndex],
      ProductResultLanguage.imiphumelaEsodazi[1][languageIndex],
      ProductResultLanguage.imiphumelaEsodazi[2][languageIndex],
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[0][languageIndex];
  }
}

class Sukadeda extends Isiwasho{

  Sukadeda(int languageIndex) : super('Sukadeda',languageIndex, [
    'Sea Salt(Omahhadla)', 
    'Damba(Unendoda Nebhubesi)', 
    'Spirit', 
    'Black Powder',
    'Yellow Bone Umuthi',
    'Patrol',
    'Paraffin',
    'Shibhoshi',
    'Powder Pelepele'
    'Pelepele',
    'Magwaza Ucaca', 
    ]){

    iyachela = true;
    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [
      ProductResultLanguage.imiphumelaSukadeda[0][languageIndex],
      ProductResultLanguage.imiphumelaSukadeda[1][languageIndex],
      ProductResultLanguage.imiphumelaSukadeda[2][languageIndex],
    ];
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.howToUseSukadeda[languageIndex];
  }
}

class Uzozibonela extends Isiwasho{

  Uzozibonela(int languageIndex) : super('Uzozibonela',languageIndex, [
    'Umkhando Yellow 1 Teaspoon', 
    'Umkhando White 1 Teaspoon', 
    'Umkhando Purple 1 Teaspoon', 
    'Umkhando Orange 1 Teaspoon',
    'Umkhando Green 1 Teaspoon',
    'Cremora 2 Teaspoon',
    'White Sugar 2 Teaspoon',
    'Camphor Block 1',
    'Umlotha Wamandiya',
    '1 Pupperment Sweet',
    ]){

    iyachela = true;
    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [ProductResultLanguage.imiphumelaUzozibonela[languageIndex]];
    
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.gezaPhalazaMuthiDirections[languageIndex];
  }
}

class Mpumelelefihliwe extends Isiwasho{

  Mpumelelefihliwe(int languageIndex) : super('Mpumelelefihliwe',languageIndex, [
    'Amanzi Esiphethu Abuya Entabeni', 
    'Amakhandlela Amane(Blue, Yellow, White, Pink', 
    'Ama-CD', 
    ]){

    iyachela = true;
    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return [ProductResultLanguage.imiphumelaMpumelelefihliwe[languageIndex]];
    
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}


class Supplier{
  String name;
  String location;
  Supplier({required this.location,required this.name});
}

///////////////////////////////////////////////////////////////////////////////////

class Owner{
  String fullName  = "Lwandile Ganyile";
  bool isMale = true;
  String address = "Mayville Cato Crest 6257";

  Owner(this.fullName, this.address,this.isMale);

  Map<String, dynamic> toMap() {
    return {
      'owner_name ': fullName,
      'owner_gender ': isMale?'Male':'Female',
      'owner_address': address,
    };
  }
}

abstract class Umuthi extends Product{
  late Owner owner;
  List<Tree> amakhubalo = [];
  Set<Animal> animals = {};
  List<String> extras = [];
 
  Umuthi(String name,int languageIndex):super(languageIndex,name:name);
  
  @override
  Map<String, dynamic> toMap() {
    return {
      'name ': name,
      'price ': price,
      'type ': type,
      'result ': findPurpose(),
      'how_to_use ': howToUse(),
      'trees ' : _getTrees(),
      'animals ': animals,
      'extras ': _getExtras(),
      'owner ': owner.toMap()
    };
  }

  
  Set<String> _getTrees(){
    Set<String> nicknames = {};

    for(int i = 0; i < amakhubalo.length;i++){
      nicknames.add(amakhubalo[i].nickname);
    }

    return nicknames;
  }

  Set<String> _getExtras(){
    Set<String> otherThings = {};

    for(int i = 0; i < extras.length;i++){
      otherThings.add(extras[i]);
    }

    return otherThings;
  }

  void addTree(Tree tree){
    amakhubalo.add(tree);
  }


  void generateName(){
    Random id = Random();
    int randomNumber = id.nextInt(9999);
    name = randomNumber.toString();
  }

  
}

///////////////////////////////////////////////////////////////////////////////////

class Thandeka extends Umuthi{

  Thandeka(int languageIndex):super('Thandeka',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?180:320;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Umabelejongosi());
    amakhubalo.add(Impathampatha());
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaUmabelejongosi[languageIndex],
      TreeResultLanguage.imiphumelaImpathampatha[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class ThandekaSiwasho extends Isiwasho{

  late Thandeka thandeka;

  ThandekaSiwasho(int languageIndex) : super('Thandeka',languageIndex,[
    'Sea Salt', 
    'camphor capsules', 
    'Imvuthu ka Thandeka Umuthi, ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    'Umkhando Pink']){
    iyageza = true;
    iyagquma = true;
    iyaphalaza = true;
    thandeka = Thandeka(languageIndex);

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return thandeka.findPurpose();
     
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[1][languageIndex];
  }
}

class Thandekile extends Umuthi{

  Thandekile(int languageIndex):super('Thandekile',languageIndex){

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
    price = Platform.isAndroid?180:350;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Umabelejongosi());
    amakhubalo.add(Impathampatha());
    amakhubalo.add(Umzaneno());
    amakhubalo.add(Imamatheka());
    amakhubalo.add(Uvuma());
    amakhubalo.add(Iwozawoza());
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaUmabelejongosi[languageIndex],
      TreeResultLanguage.imiphumelaImpathampatha[languageIndex], 
      TreeResultLanguage.imiphumelaUmzaneno[languageIndex],
      TreeResultLanguage.imiphumelaImamatheka[languageIndex],
      TreeResultLanguage.imiphumelaUvuma[languageIndex],
      TreeResultLanguage.imiphumelaIwozawoza[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class ThandekileSiwasho extends Isiwasho{

  late Thandekile thandekile;

  ThandekileSiwasho(int languageIndex) : super('Thandekile',languageIndex,[
    'Sea Salt', 
    'camphor capsules', 
    'Imvuthu ka Thandekile Umuthi, ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    'Umkhando Ink']){
    iyageza = true;
    iyagquma = true;
    iyaphalaza = true;
    thandekile = Thandekile(languageIndex);

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return thandekile.findPurpose();
     
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[1][languageIndex];
  }
}

class Mehlothando extends Umuthi{

  Mehlothando(int languageIndex):super('Mehlothando',languageIndex){

    Owner makhuzwayo = Owner("Makhuzwayo", "Dalton", false);
    owner = makhuzwayo;
    price = Platform.isAndroid?180:250;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Ukalumuzi());
    amakhubalo.add(Unukani(true)); // Either true or false is ok.
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaMehlothando[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex] + ' 3 days.';
  }
}

class MehlothandoSiwasho extends Isiwasho{

  late Mehlothando mehlothando;

  MehlothandoSiwasho(int languageIndex) : super('Mehlothando',languageIndex,[
    'Sea Salt', 
    'camphor capsules', 
    'Imvuthu ka Mehlothando Umuthi, ', 
    'Isiqhabo senhlanhla amafutha abovu',
    'umlotha wamandiya omude', 
    'Umkhando blood red']){
    iyageza = true;
    iyagquma = true;
    iyaphalaza = true;
    mehlothando = Mehlothando(languageIndex);

    Owner ganyile = Owner("Lwandile Ganyile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
  }

  @override 
  List<String> findPurpose(){
    
    return mehlothando.findPurpose();
     
  }

  @override 
  String howToUse(){
    
    return HowToUseLanguage.isiwashoDirections[1][languageIndex];
  }
}


class Thengani extends Umuthi{

  Thengani(int languageIndex):super('Thengani',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?200:350;

    iyachela = true;

    amakhubalo.add(Umthathe());

    extras.add('Brown Sugar');
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaThengani[languageIndex],
      
    ];
  }

  @override
  String howToUse() {
    
    return 'Hlanganisa Lomuthi, Namanzi Owakhe Emfuleni Ohambayo, Chele Impahla Oyidayisayo, Usule Nobuso Ngawo Mawuqeda Ukuchela.';
  }
}

class Khanyisa extends Umuthi{

  Khanyisa(int languageIndex):super('Khanyisa',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?200:400;

    iyaphalaza = true;
    amakhubalo.add(IphakamaLamanzi());
    amakhubalo.add(IphakamaLentaba());
    amakhubalo.add(Izibu());

    animals.add(InkanyeziYolwandle());
    
  }

  @override
  List<String> findPurpose() {

    return [
      
      TreeResultLanguage.imiphumelaKhanyisa[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.phalazaUbandaMuthiDirections[languageIndex];
  }
}

class Belungubami extends Umuthi{

  Belungubami(int languageIndex):super('Belungubami',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?300:650;
    
    amakhubalo.add(Uskhundla());
    amakhubalo.add(Umyezane());
    amakhubalo.add(Umabusane());
    amakhubalo.add(UmusaOmkhulu());
    amakhubalo.add(Umdatshukelwa());
    amakhubalo.add(Umunyu());
    amakhubalo.add(Undlelazimhlophe());
    amakhubalo.add(Ikhokhelo());
    amakhubalo.add(Insulansula());
    amakhubalo.add(Ibheka());
    amakhubalo.add(Uzeneke());
    amakhubalo.add(Imfingo());
    amakhubalo.add(Umnyamathi());
    amakhubalo.add(Unhlanhlemhlophe());
    amakhubalo.add(Umklele());
    amakhubalo.add(Uguleni());
    amakhubalo.add(Uqhumelwabafazi());
    amakhubalo.add(UvumaOmhlophe());

    Inhlwathi inhlwathi = Inhlwathi();
    inhlwathi.part = 'Oil';
    animals.add(inhlwathi);

    Imamba imamba = Imamba();
    imamba.part = 'Oil';
    animals.add(imamba);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    extras.add('Ibheka Oil');
    extras.add('Inhlanhla Oil');
    
  }

  @override
  List<String> findPurpose() {

    return [
      
      ProductResultLanguage.imiphumelaBelungubami[languageIndex],
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Usemndenini extends Umuthi{

  Usemndenini(int languageIndex):super('Usemndenini',languageIndex){

    Owner makhuzwayo = Owner("Makhuzwayo", "Dalton", false);
    owner = makhuzwayo;
    price = Platform.isAndroid?150:300;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Umanzamnyama());
    
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaUmanzamnyama[languageIndex],
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Sukakimi extends Umuthi{

  Sukakimi(int languageIndex):super('Sukakimi',languageIndex){

    Owner magumede = Owner("Magumede", "Dalton", false);
    owner = magumede;
    price = Platform.isAndroid?150:300;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Umsanka());
    
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaUmsanka[languageIndex],
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Qalala extends Umuthi{

  Qalala(int languageIndex):super('Qalala',languageIndex){

    Owner ganyile = Owner("Ganyile Lwandile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
    price = Platform.isAndroid?150:250;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Inhlambamanzi());
    
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaInhlambamanzi[languageIndex],
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseInhlambamanzi[languageIndex];
  }
}


class Safisithosami extends Umuthi{

  Safisithosami(int languageIndex):super('Safisithosami',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?360:560;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Vuka());
    amakhubalo.add(Umkhondweni()); 
    amakhubalo.add(Icishamlilo());

    Umneke umneke = Umneke();
    umneke.part = 'Igobolondo';
    animals.add(umneke);
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaSafisithosami[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseSafisithosami[languageIndex];
  }
}

class Sikimi extends Umuthi{

  Sikimi(int languageIndex):super('Sikimi',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?150:250;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;

    Isiqunga isiqunga = Isiqunga();
    isiqunga.description = 'Step 1 - Gquma, Phalaza 3 Days';
    amakhubalo.add(isiqunga); // 3 days
    Unukani unukani = Unukani(false);
    unukani.description = 'Step 2 - Gquma, Phalaza 3 Days';
    amakhubalo.add(unukani); // 3 days
    Velabahleke velabahleke = Velabahleke();
    velabahleke.description = 'Step 3 - Uwuhlanganisa Nomavulakuvaliwe Gquma, Phalaza 3 Days';
    amakhubalo.add(velabahleke); // 3 days Velabahleke and Mavulakuvaliwe
    amakhubalo.add(Mavulakuvaliwe()); 

    
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaIsiqunga[languageIndex],
      TreeResultLanguage.imiphumelaUnukani[languageIndex],
      TreeResultLanguage.imiphumelaMavulakuvaliwe[languageIndex],
      TreeResultLanguage.imiphumelaVelabahleke[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseSikimi[languageIndex];
  }
}

class Sisegcekeni extends Umuthi{

  Sisegcekeni(int languageIndex):super('Sisegcekeni',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?180:280;
    
    iyachela = true;
    amakhubalo.add(Sgenama(true)); // noma esinjani i'm not sure.
    amakhubalo.add(Mhlakazanhlansi()); 
    amakhubalo.add(Maphipha()); 
    
  }

  @override
  List<String> findPurpose() {

    return [
      //TreeResultLanguage.imiphumelaSgenama[languageIndex],
      TreeResultLanguage.imiphumelaMhlakazanhlansi[languageIndex] + LanguagesTable.words[6][languageIndex],
      TreeResultLanguage.imiphumelaUmaphipha[languageIndex] + LanguagesTable.words[6][languageIndex],
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseSisegcekeni[languageIndex];
  }
}

// Ngyawuhlanganisa
class Mzimboshisayo extends Umuthi{

  Mzimboshisayo(int languageIndex):super('Mzimboshisayo',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?200:450;
    
    amakhubalo.add(Ilabatheka(true)); 
    amakhubalo.add(Inguduza()); 
    amakhubalo.add(Ixhaphosi()); 
    amakhubalo.add(Umavumbuka());
    Umalenjane umalenjane = Umalenjane();
    umalenjane.part = 'Roots';
    amakhubalo.add(umalenjane);
    Ishaladilezenyoka ishaladilezenyoka = Ishaladilezenyoka();
    ishaladilezenyoka.part = 'Roots';
    amakhubalo.add(ishaladilezenyoka);
    amakhubalo.add(Inhlaba());
    amakhubalo.add(Ugobho());
    amakhubalo.add(Ukalumuzi());
    Ukotapeya ukotapeya = Ukotapeya();
    ukotapeya.part = 'Leaves';
    amakhubalo.add(ukotapeya); // leaves
    Uguava uguava = Uguava();
    uguava.part = 'Leaves';
    amakhubalo.add(uguava); // leaves

    extras.add('Alarm');
 
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaMzimboshisayo[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseMzimboshisayo[languageIndex];
  }
}

class Mitha extends Umuthi{

  Mitha(int languageIndex):super('Mitha',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?295:495;
    
    iyachela = true;
    amakhubalo.add(Ithombonkala()); 
    amakhubalo.add(Inguduza());    
    Intuma intuma = Intuma();
    intuma.description = 'Enkulu';
    amakhubalo.add(intuma);
    Umhlanga umhlanga = Umhlanga();
    umhlanga.part = 'Roots';
    amakhubalo.add(umhlanga);
    amakhubalo.add(Impila());
    amakhubalo.add(Sgenama(false));
    amakhubalo.add(Umathunga());
    amakhubalo.add(Ilabatheka(false)); 
 
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaMitha[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex] + '. Uchatha Ngamanzi Afudumele.';
  }
}

class Nkomemnandi extends Umuthi{

  Nkomemnandi(int languageIndex):super('Nkomemnandi',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?150:300;
    
    iyachela = true;
    amakhubalo.add(Ilabatheka( false)); 
    amakhubalo.add(Ishongwe()); 
    amakhubalo.add(Umathunga()); 
    amakhubalo.add(Umabopha());
   
 
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaNkomemnandi[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseNkomemnandi[languageIndex];
  }
}

class Labongidlozi extends Umuthi{

  Labongidlozi(int languageIndex):super('Labongidlozi',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?250:450;
    
    iyachela = true;
    amakhubalo.add(Umlahleni()); 
    amakhubalo.add(Umanzamhlophe()); 
    amakhubalo.add(Umlahlankosi()); 
    amakhubalo.add(Inhlambamanzi());
    amakhubalo.add(Isiqunga());
 
    extras.add('Umlotha Wasekhaya Owezinkuni, Hhhayi Owamaplangwe.');
    extras.add('Usu Inyama Yangaphakathi');
  
    Ulamthuthu ulamthuthu = Ulamthuthu();
    ulamthuthu.part = 'Inyongo, Udoti Wengingila, Isikhumba Sodoti Wengingila.';
    animals.add(ulamthuthu);

  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaLabongidlozi[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseLabongidlozi[languageIndex];
  }
}

class Skhundla extends Umuthi{

  Skhundla(int languageIndex):super('Skhundla',languageIndex){



    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?550:850;
    
    iyachela = true;
    amakhubalo.add(Unongamela()); 
    amakhubalo.add(Umayisaka('Omhlophe')); 
    amakhubalo.add(Umkhanyakude()); 

    Ndlulamithi indlulamithi = Ndlulamithi();
    indlulamithi.part = 'Oil';
    animals.add(indlulamithi);

    extras.add('Ungathola Negobandlovu Uligaye Ulibheme Uma Usuya Kulabo Ofuna Ukubagoba.');
  

  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaSkhundla[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class GezaUmsamo extends Umuthi{

  GezaUmsamo(int languageIndex):super('Gezumsamo',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?300:550;
    
    iyachela = true;
    amakhubalo.add(Umadlozane()); 
    amakhubalo.add(Isiqunga()); 
    amakhubalo.add(Mavulakuvaliwe()); 

    extras.add('Amakhandlela Awu-10 Imibala Eyehlukene.');
    extras.add('Umshanelo Omusha Wokuchela');

    Ulamthuthu ulamthuthu1 = Ulamthuthu();
    ulamthuthu1.part = 'Igazi Nenyongo';
    animals.add(ulamthuthu1);

    Ulamthuthu ulamthuthu2 = Ulamthuthu();
    ulamthuthu2.part = 'Igazi Nenyongo';
    animals.add(ulamthuthu2);
  

  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaGezaUmsamo[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseGezumsamu[languageIndex];
  }
}

class Bhemuphuphe extends Umuthi{

  Bhemuphuphe(int languageIndex):super('Bhemuphuphe',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?180:380;
    
    iyachela = true;
    amakhubalo.add(Umkhondweni()); 
    amakhubalo.add(Ubhinini()); 
    amakhubalo.add(Mkhwangu()); 
    amakhubalo.add(UvumaOmhlophe()); 
    amakhubalo.add(Velemoyeni()); 
    amakhubalo.add(Izazacacani()); 
 
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaBhemuphuphe[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseBhemuphuphe[languageIndex];
  }
}

class Mhlonipheni extends Umuthi{

  Mhlonipheni(int languageIndex):super('Mhlonipheni',languageIndex){

    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    price = Platform.isAndroid?250:495;
    
    iyachela = true;
    amakhubalo.add(Umnyamathi()); 
    amakhubalo.add(Insulansula()); 
    amakhubalo.add(Umashwilishwili()); 
    amakhubalo.add(Uminimini()); 
    amakhubalo.add(Uqhatha()); 
    amakhubalo.add(Impenduli()); 
    amakhubalo.add(Ibheka());
    amakhubalo.add(Iqhume());
    amakhubalo.add(Umabusane());
    amakhubalo.add(Umyezane());
 
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaMhlonipheni[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Sabeka extends Umuthi{

  Sabeka(int languageIndex):super('Sabeka',languageIndex){

    Owner ganyile = Owner("Ganyile Lwandile", "Mayville Cato Crest 6257", true);
    owner = ganyile;
    price = Platform.isAndroid?180:380;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    iyachela = true;
    amakhubalo.add(Umnyamathi()); 
    
  }

  @override
  List<String> findPurpose() {

    return [
      TreeResultLanguage.imiphumelaUmnyamathi[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Ngphuphe extends Umuthi{

  Ngphuphe(int languageIndex):super('Ngphuphe',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?150:320;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Intolwane()); 
    amakhubalo.add(Umlahlankosi()); 
    amakhubalo.add(Impathampatha()); 
    
    extras.add('Impepho');
    extras.add('Hlanganisa Lemithi Ngokulingana.');

    
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaNgphuphe[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Abakhokhe extends Umuthi{

  Abakhokhe(int languageIndex):super('Abakhokhe',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?250:550;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Intolwane()); 
    amakhubalo.add(Ingwavuma()); 
    amakhubalo.add(Ihluze()); 

    
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaAbakhokhe[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Uyangikweleta extends Umuthi{

  Uyangikweleta(int languageIndex):super('Uyangikweleta',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?280:520;

    amakhubalo.add(Intwalubombo()); 
    Umnqandane umnqandane = Umnqandane();
    umnqandane.part = 'Uswazi';
    amakhubalo.add(umnqandane); 

    Ibululu ibubulu = Ibululu();
    ibubulu.part = 'Oil';
    animals.add(ibubulu);

    
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaUyangikweleta[languageIndex],
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.howToUseUyangikweleta[languageIndex];
  }
}

class Mdayisiwecala extends Umuthi{

  Mdayisiwecala(int languageIndex):super('Mdayisiwecala',languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?1450:2850;

    iyagquma = true;
    iyaphalaza = true;
    iyageza = true;
    amakhubalo.add(Ikhathaza()); 
    amakhubalo.add(Ibheka()); 
    amakhubalo.add(Izwangomoya()); 

    amakhubalo.add(Umalala()); 
    amakhubalo.add(Umathithibala()); 
    amakhubalo.add(Iphamba()); 

    amakhubalo.add(Imfingo()); 
    amakhubalo.add(Isbhaha()); 
    amakhubalo.add(Idlula()); 

    amakhubalo.add(Umabopha()); 
    amakhubalo.add(Ibutho()); 
    amakhubalo.add(Uvukamalibeni()); 

    amakhubalo.add(Inkunguyentaba());
    amakhubalo.add(Umhlakaza());
    amakhubalo.add(Umwelela());

    Imfene imfene = Imfene();
    imfene.part = '1.Amakhala, 2.Umnyama';
    animals.add(imfene);

    Inyengelezi inyengelezi = Inyengelezi();
    inyengelezi.part = 'Oil';
    animals.add(inyengelezi);

    Impunzi impunzi = Impunzi();
    impunzi.part = 'Umnyama';
    animals.add(impunzi);

    
  }

  @override
  List<String> findPurpose() {

    return [
      ProductResultLanguage.imiphumelaMdayisiwecala[languageIndex],
      
      
    ];
  }

  @override
  String howToUse() {
    
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
}

class Kuthole extends Umuthi{
  
  Kuthole (int languageIndex, {forGoodUse =true}):
  super('Kuthole',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    iyagquma = true;
    iyageza = true; 

    price = Platform.isAndroid?180:395;

    amakhubalo.add(Umkhanyakude());
    amakhubalo.add(Iqhume());
    amakhubalo.add(Umthole());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaKuthole[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseKuthole[languageIndex];
  }
  
}

class Wozanibathengi extends Umuthi{
  
  Wozanibathengi (int languageIndex, {forGoodUse =true}):
  super('Wozanibathengi',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    iyagquma = true;
    iyageza = true; 
    price = Platform.isAndroid?450:685;

    // Lamakhubalo awaxutshwa nalomuthi, Kodwa uqale usebenzise wona.
    amakhubalo.add(Inhlambamanzi());
    amakhubalo.add(Umsanka());

    Ihhashi ihhashi = Ihhashi();
    ihhashi.part = 'Umhlapho';
    animals.add(ihhashi);

    Imbuzi imbuzi = Imbuzi();
    imbuzi.part = 'Umhlwehlwe';
    animals.add(imbuzi);

    extras.add('Impepho Yamakhehla');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWozanibathengi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseWozanibathengi[languageIndex];
  }
  
}

class Bolisa extends Umuthi{
  
  Bolisa (int languageIndex, {forGoodUse =true}):
  super('Bolisa',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?180:375;

    amakhubalo.add(Umbola());

    extras.add('I-Five Roses');
    extras.add('I-Honey');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBolisa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBolisa[languageIndex];
  }
  
}

class Zaqaqeka extends Umuthi{
  
  Zaqaqeka (int languageIndex, {forGoodUse =true}):
  super('Zaqaqeka',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?200:485;

    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Umqaqi());
    amakhubalo.add(Unhlanhlemhlophe());
    
  }

  @override
  List<String> findPurpose() {
    return [TreeResultLanguage.imiphumelaZaqaqeka[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Akabuye extends Umuthi{
  
  Akabuye (int languageIndex, {forGoodUse =true}):
  super('Akabuye',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?450:795;

    amakhubalo.add(Umbili());
    amakhubalo.add(Sukasambe());
    amakhubalo.add(Umazulazayithole());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Umwelela());
    amakhubalo.add(Impenduli());

    amakhubalo.add(Mhungulo());
    amakhubalo.add(Mampondomunyi());
    amakhubalo.add(Ndindibala());

    amakhubalo.add(Ndindibala());
    amakhubalo.add(Nhliziyonkulu());
    amakhubalo.add(Umoyawezwe());

    amakhubalo.add(Dakwa());
    amakhubalo.add(Uvukabonke());
    amakhubalo.add(Ungange());

    amakhubalo.add(Ungqangendlela());
    amakhubalo.add(Abangqongqozi());
    amakhubalo.add(Umazwahlabayo());

    Ingwe ingwe = Ingwe();
    ingwe.part = 'Oil';
    animals.add(ingwe);

    Iskhova iskhova = Iskhova();
    iskhova.part = 'Oil';
    animals.add(iskhova);

    Ihhashi ihhashi = Ihhashi();
    ihhashi.part = 'Oil';
    animals.add(ihhashi);

    Umkhovu umkhovu = Umkhovu();
    umkhovu.part = 'Oil';
    animals.add(umkhovu);

    Tikoloshe tikoloshe = Tikoloshe();
    tikoloshe.part = 'Bone';
    animals.add(tikoloshe);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAkabuye[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAkabuye[languageIndex];
  }
  
}

class Isigqabosothando extends Umuthi{
  
  Isigqabosothando (int languageIndex, {forGoodUse =true}):
  super('Isigqabosothando',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    iyagquma = true;
    iyageza = true; 

    price = Platform.isAndroid?180:345;

    amakhubalo.add(Umkhanyakude());
    amakhubalo.add(Velemoyeni());
    amakhubalo.add(Nginakile());
    amakhubalo.add(Ungibonisele());
    amakhubalo.add(Makhuthuka());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Umzaneno());
    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Impishimpishi());
    amakhubalo.add(Roslina());

    extras.add('Nkosazane Oil');
    extras.add('Blue Stone');
    extras.add('Mvubu Oil, Eyendoda, Neyesifazane');

    Imvubu femaleMvubu = Imvubu();
    femaleMvubu.part = 'Oil';
    femaleMvubu.description = 'Female Mvubu';
    animals.add(femaleMvubu);

    Imvubu maleMvubu = Imvubu();
    maleMvubu.part = 'Oil';
    maleMvubu.description = 'Male Mvubu';
    animals.add(maleMvubu);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaIsigqabosothando[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseIsigqabosothando[languageIndex];
  }
  
}

class Ngthandeni extends Umuthi{
  
  Ngthandeni (int languageIndex, {forGoodUse =true}):
  super('Ngthandeni',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    iyagquma = true;
    iyageza = true; 

    price = Platform.isAndroid?180:375;

    amakhubalo.add(Donsuthando());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Ibheka());
   

    extras.add('Zonke Izinhlobo Zempepho');
    extras.add('Zamlandela');
    extras.add('3 Types Of Belungu Stones Including, Please Call Me And Come To Me.');
    extras.add('Nkosazane Oil');
    extras.add('Umlotha Wamandiya');
    
  }

  @override
  List<String> findPurpose() {
    return [TreeResultLanguage.imiphumelaDonsuthando[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Akondle extends Umuthi{
  
  Akondle (int languageIndex, {forGoodUse =true}):
  super('Akondle',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
     
    price = Platform.isAndroid?200:350;

    amakhubalo.add(Umnyamathi());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Vuka());
    amakhubalo.add(IphakamaLaphezulu());
    amakhubalo.add(Umavumbuka());
    amakhubalo.add(Sukasambe());
    amakhubalo.add(Dumaphansi());
   

    extras.add('Ovuka Bonke');
    extras.add('Izinyembezi Zengane.');
    extras.add('Inkwethu Yolwimi Lwengane.');

    Isphikeleli isphikeleli = Isphikeleli();
    isphikeleli.part = 'Bones or Body';
    animals.add(isphikeleli);

    Umantindane umantindane = Umantindane();
    umantindane.part = 'Oil';
    animals.add(umantindane);

    Ingwe ingwe = Ingwe();
    ingwe.part = 'Bone';
    animals.add(ingwe);

    Indlovu indlovu = Indlovu();
    indlovu.part = 'Oil';
    animals.add(indlovu);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAkondle[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAkondle[languageIndex];
  }
  
}

class Masendamakhulu extends Umuthi{
  
  Masendamakhulu (int languageIndex, {forGoodUse =true}):
  super('Masendamakhulu',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?380:695;

    amakhubalo.add(Inkomfe());
    amakhubalo.add(Umahlokoloza());
    amakhubalo.add(Ilabatheka(true));
    amakhubalo.add(Intuma());
    amakhubalo.add(Ubhoqo());
    amakhubalo.add(Ishongwe());
    
    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMasendamakhulu[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMasendamakhulu[languageIndex];
  }
  
}

class Qinanduku extends Umuthi{
  
  Qinanduku (int languageIndex, {forGoodUse =true}):
  super('Qinanduku',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?200:385;

    amakhubalo.add(Ukhovithi());
    amakhubalo.add(Uqonsi());
    amakhubalo.add(Bangalala());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQinanduku[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMasendamakhulu[languageIndex];
  }
  
}

class Vikasbhamu extends Umuthi{
  
  Vikasbhamu (int languageIndex, {forGoodUse =true}):
  super('Vikasbhamu',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?1200:1985;

    amakhubalo.add(Mbizakayivuthwa());
    amakhubalo.add(Unkungwini()); 
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Ishaqa());

    Ufudu ufudu = Ufudu();
    ufudu.part = 'Igobolondo';
    animals.add(ufudu);

    Umkhoma umkhoma = Umkhoma();
    umkhoma.part = 'Oil';
    animals.add(umkhoma);

    extras.add('Umsizi Wesibhamu');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaVikasbhamu[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseVikasbhamu[languageIndex];
  }
  
}

class Alingathethwa extends Umuthi{
  
  Alingathethwa (int languageIndex, {forGoodUse =true}):
  super('Alingathethwa',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?1200:2500;

    amakhubalo.add(Umayisaka('obovu')); // Noma Imuphi Will Do It I Guess.
    amakhubalo.add(Ucalakalithethwa()); 
    amakhubalo.add(Umathithibala());
    amakhubalo.add(Ibheka());
    amakhubalo.add(Umlahlankosi());
    amakhubalo.add(Unyathelo());


    extras.add('Inyama');
    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAlingathethwa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAlingathethwa[languageIndex];
  }
  
}

class Qedacala extends Umuthi{
  
  Qedacala (int languageIndex, {forGoodUse =true}):
  super('Qedacala',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?1200:2395;

    amakhubalo.add(Mthunyelelwa()); 
    amakhubalo.add(Mayime());
    amakhubalo.add(Ucalakalithethwa()); 
    amakhubalo.add(Impishimpishi());
    amakhubalo.add(Ilabatheka(true)); // Noma Iliphi
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedacala[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseQedacala[languageIndex];
  }
  
}

class Nqobacala extends Umuthi{
  
  Nqobacala (int languageIndex, {forGoodUse =true}):
  super('Nqobacala',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?1200:1895;

    amakhubalo.add(Ucalakalithethwa()); 
    amakhubalo.add(Umhlakaza());
    amakhubalo.add(Umacashosizini()); 
    amakhubalo.add(Isdikili());
    amakhubalo.add(Isithuladu()); 
    
    extras.add('Isdikili Usifaka Kancane');
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNqobacala[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseNqobacala[languageIndex];
  }
  
}

class Mndenongaxabani extends Umuthi{
  
  Mndenongaxabani (int languageIndex, {forGoodUse =true}):
  super('Mndenongaxabani',
  languageIndex){

    Owner lwandile = Owner("Lwandile Ganyilse", "Ashwell Road 6257 Mayville CC", true);
    owner = lwandile;

    iyaphalaza = true;
    price = Platform.isAndroid?300:650;

    amakhubalo.add(Ibunda()); 
    amakhubalo.add(Mayime());
    amakhubalo.add(Umpikayiboni()); 
    amakhubalo.add(Sondeza());
    amakhubalo.add(Unhliziyonkulu()); 
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Ungqangendlela());
    amakhubalo.add(Umayihlanganise());

    Inyathi inyathi = Inyathi();
    inyathi.part = 'Oil';
    animals.add(inyathi);
    
    extras.add('Isihlabathi solwandle');
    extras.add('Usawoti Omahhadla');
    extras.add('Izinsipho Zesizulu Ekade Siphuzwa Kwenziwe Umsebenzi Wokugeza Umsamo.');
    extras.add('Imbubhu Yalezinkukhu Ezihlinzwe Kugezwa Umsamo.');
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMndenongaxabani[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMndenongaxabani[languageIndex];
  }
  
}

class Mndenozwanayo extends Umuthi{
  
  Mndenozwanayo (int languageIndex, {forGoodUse =true}):
  super('Mndenozwanayo',
  languageIndex){

    Owner ntshangase = Owner("Lwandile Ganyile", "Ashwell Road 6257 Mayville CC", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?275:575;

    amakhubalo.add(Untulwa()); 
    amakhubalo.add(Umganu());
    amakhubalo.add(Ibunda()); 
    amakhubalo.add(Isiqunga()); 
    
    extras.add('Impepho Emnyama');
    extras.add('Impepho Emhlophe(Inkondlwane/Impepho Yamawele)');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMndenozwanayo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMndenozwanayo[languageIndex];
  }
  
}

class Mpilemnandi extends Umuthi{
  
  Mpilemnandi (int languageIndex, {forGoodUse =true}):
  super('Mpilemnandi',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?300:575;

    amakhubalo.add(Imfeyenkawu()); 
    amakhubalo.add(IphakamaLogagane());
    amakhubalo.add(Inhlanhlemhlophe()); 
    amakhubalo.add(Ivulandlela()); 
    amakhubalo.add(Inqaqifindo());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMpilemnandi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Hambamthakathi extends Umuthi{
  
  Hambamthakathi (int languageIndex, {forGoodUse =true}):
  super('Hambamthakathi',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?350:575;

    amakhubalo.add(Qeduhlobo()); 
    amakhubalo.add(Mpikayihlangulwa());
    amakhubalo.add(Hlabazihlangane()); 
    amakhubalo.add(Isnama()); 
    amakhubalo.add(Dukanezwe());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaHambamthakathi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.chelaMuthiDirections[languageIndex];
  }
  
}

class Hambamoyombi extends Umuthi{
  
  Hambamoyombi (int languageIndex, {forGoodUse =true}):
  super('Hambamoyombi',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?255:455;

    amakhubalo.add(Umagwazucaca()); 
    amakhubalo.add(Impila());
    amakhubalo.add(Mdlandlovu()); 

    Imfene imfene = Imfene();
    imfene.part = 'Oil';
    animals.add(imfene);

    Ibhubesi ibhubesi = Ibhubesi();
    ibhubesi.part = 'Oil';
    animals.add(ibhubesi);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaHambamoyombi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.shisaMuthiDirections[languageIndex];
  }
  
}

class Ubelethiswane extends Umuthi{
  
  Ubelethiswane (int languageIndex, {forGoodUse =true}):
  super('Ubelethiswane',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?385:585;

    amakhubalo.add(Umhlakaza(umbala: 'Omnyama')); 
    amakhubalo.add(Unukani( true));
    amakhubalo.add(Unukani( false));
    amakhubalo.add(Intwalubombo());
    amakhubalo.add(Insonga()); 
    amakhubalo.add(Isiwisa()); 
    amakhubalo.add(Usukasambe()); 

    Umneke umneke = Umneke();
    umneke.part = 'Igobolondo';
    animals.add(umneke);

    Iselesele iselesele = Iselesele();
    iselesele.part = 'isikhumba';
    animals.add(iselesele);
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUbelethiswane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaMuthiDirections[languageIndex] + ' 6 days';
  }
  
}

class Donsamali extends Umuthi{
  
  Donsamali(int languageIndex, {forGoodUse =true}):
  super('Donsamali',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?345:565;

    amakhubalo.add(Iphuphuma()); 
    amakhubalo.add(Sondeza());
    amakhubalo.add(Uzifunele());
    amakhubalo.add(Ungelengele());
    amakhubalo.add(Iletha()); 
    amakhubalo.add(Undwendweni()); 
    amakhubalo.add(Umhlalanyosi()); 
    amakhubalo.add(Umazulazayithole()); 
    amakhubalo.add(Ibutha());
    amakhubalo.add(Iwozawoza()); 
    amakhubalo.add(Umhululuka()); 
    amakhubalo.add(Ishongwe());  

    extras.add('R5');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaDonsamali[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseDonsamali[languageIndex];
  }
  
}

class Malungabaleki extends Umuthi{
  
  Malungabaleki(int languageIndex, {forGoodUse =true}):
  super('Malungabaleki',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?225:495;

    amakhubalo.add(Isthaphuka()); 
    amakhubalo.add(Iletha());
    amakhubalo.add(Nginakile());
    amakhubalo.add(Umbhamabhama());  

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMalungabaleki[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaMuthiDirections[languageIndex];
  }
  
}

class SbambeleloXXX extends Umuthi{
  
  SbambeleloXXX(int languageIndex, {forGoodUse =true}):
  super('SbambeleloXXX',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?200:345;

    amakhubalo.add(Umathinta()); 
    amakhubalo.add(Umunyu());
    amakhubalo.add(Uvuma());
    amakhubalo.add(Umnyamathi()); 

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    Imamba greenMamba = Imamba(umbala:'Green');
    greenMamba.part = 'Oil';
    animals.add(greenMamba);

    Inkosazane inkosazane = Inkosazane();
    animals.add(inkosazane);

    SpantshFly spantshFly = SpantshFly();
    animals.add(spantshFly);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSbambeleloXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseSbambeleloXXX[languageIndex];
  }
  
}

class SbambeleloXYZ extends Umuthi{
  
  SbambeleloXYZ(int languageIndex, {forGoodUse =true}):
  super('SbambeleloXYZ',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?795:1020;

    amakhubalo.add(Uvutha()); 
    amakhubalo.add(Usokalakwazulu());
    amakhubalo.add(Untombikayibhinci());
    amakhubalo.add(Umgxhume()); 
    amakhubalo.add(Iletha()); // Bonke
    amakhubalo.add(Umalinga());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Usondela());
    amakhubalo.add(Uzililo());
    amakhubalo.add(Umababaza());
    amakhubalo.add(Uvuka());
    amakhubalo.add(Uvendle());
    amakhubalo.add(Umthunyelelwa());
    amakhubalo.add(Unhliziyongise());
    amakhubalo.add(Nginakile());
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Langa());
    amakhubalo.add(Usvumelwano());
    amakhubalo.add(Usmunyu(umbala:'Obovu'));
    amakhubalo.add(Umnandinoveshe());
    amakhubalo.add(Udelunina());
    amakhubalo.add(Dumaphansi());
    amakhubalo.add(Unkungwini());


    Umathananazane umathananazane = Umathananazane();
    umathananazane.part = 'Pubic Part';
    animals.add(umathananazane);

    //izilwane.add('Eyebrow Ubaba?');

    Tikoloshe tikoloshe = Tikoloshe();
    tikoloshe.part = 'Bone And Oil';
    animals.add(tikoloshe);

    Umkhovu umkhovu = Umkhovu();
    umkhovu.part = 'Bone And Oil';
    animals.add(umkhovu);

    Ukhozi ukhozi = Ukhozi();
    ukhozi.part = 'Nails';
    animals.add(ukhozi);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    SpantshFly spantshFly = SpantshFly();
    animals.add(spantshFly);

    Imamba greenMamba = Imamba(umbala:'Green');
    greenMamba.part = 'Oil';
    animals.add(greenMamba);

    Inkosazane inkosazane = Inkosazane();
    animals.add(inkosazane);

    Imamba blackMamba = Imamba(umbala:'Black');
    blackMamba.part = 'Oil';
    animals.add(blackMamba);

    Inhlwathi inhlwathi = Inhlwathi();
    inhlwathi.part = 'Oil';
    animals.add(inhlwathi);

    extras.add('Love Drop');
    extras.add('Pass Man'); 
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSbambeleloXYZ[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseSbambeleloXYZ[languageIndex];
  }
  
}

class Qaqabethakathile extends Umuthi{
  
  Qaqabethakathile(int languageIndex, {forGoodUse =true}):
  super('Qaqabethakathile',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?145:295;

    amakhubalo.add(Mavulakuvaliwe()); 
    amakhubalo.add(Phindemva());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Umqaqi());  
    amakhubalo.add(Mwohloza());
    amakhubalo.add(Solo());  
    amakhubalo.add(Maguqu()); 

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQaqabethakathile[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaMuthiDirections[languageIndex];
  }
  
}

class Gezamabhadi extends Umuthi{
  
  Gezamabhadi(int languageIndex, {forGoodUse =true}):
  super('Gezamabhadi',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?330:620;

    // Step 1 - Umuthi Wokuqala
    amakhubalo.add(Umhlakaza()); 
    amakhubalo.add(Umvuthuza());
    amakhubalo.add(Impila());
    amakhubalo.add(Impindamshaye());  
    amakhubalo.add(Umxoshe());
    amakhubalo.add(Isbhaha());  
    amakhubalo.add(Ugezamashwa()); 
    amakhubalo.add(Umanzamnyama()); 

    extras.add('Step 1 - Umhlakaza, Umvuthuza, Impila, Impindamshaye, Umxoshe, Isbhaha, Ugezamashwa, Umanzamnyama, Igazi Nenhlongo Yenkukhu Emhlophe.[Geza Emfuleni Ohambayo]');

    // Step 2 - Umuthi Wesibili
    amakhubalo.add(Umanzamhlophe()); 
    amakhubalo.add(Umthole()); 
    amakhubalo.add(Ukhanyisa()); 
    amakhubalo.add(Sehlulamanye()); 
    amakhubalo.add(Umadlozane()); 
    amakhubalo.add(Uphophoma()); 
    amakhubalo.add(Uqhume()); 
    amakhubalo.add(Mavulakuvaliwe()); 
    amakhubalo.add(Ivulandlela()); 
    amakhubalo.add(Iwozawoza()); 

    extras.add('Step 2 - Umanzamhlophe, Umthole, Ukhanyisa, Sehlulamanye, Umadlozane, Uphophoma, Uqhume, Mavulakuvaliwe, Ivulandlela, Iwozawoza.[Gquma, Geza, Phalaza]');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaGezamabhadi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaMuthiDirections[languageIndex];
  }
  
}

class IsibungeXXX extends Umuthi{
  
  IsibungeXXX(int languageIndex, {forGoodUse =true}):
  super('IsibungeXXX',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?1230:1800;


    amakhubalo.add(Ikhokhelo()); 
    amakhubalo.add(Usdumo());
    amakhubalo.add(Umzwilili());
    amakhubalo.add(Iletha());  
    amakhubalo.add(Umdatshukelwa());
    amakhubalo.add(Sondeza());  
    amakhubalo.add(Ismemo()); 
    amakhubalo.add(Ibutha()); 
    amakhubalo.add(Umzaneno()); 
    amakhubalo.add(Umalambakuphiwa()); 
    amakhubalo.add(Umhungulu()); 
    amakhubalo.add(Unukani(true)); // It Doesn't Matter.
    amakhubalo.add(Ufenisi());
    amakhubalo.add(Ingwavuma());
    amakhubalo.add(Umayisaka('Obovu'));
    amakhubalo.add(Umayisaka('Omhlophe'));
    amakhubalo.add(Uslepe(umbala:'Omhlophe'));
    amakhubalo.add(Umanzikagesi());

    extras.add('Amafutha Ebhanoyi');
    extras.add('Ikhekhe Lezinyosi');

    animals.add(SpantshFly());

    extras.add('Crush Money');
    extras.add('Izibi Zase-Mall, Eskoleni, Erank, Ebank');
    extras.add('Umhlabathi Waku-4 Ways');
    extras.add('Sea Soil');
    
    Phiyano phiyano = Phiyano();
    phiyano.part = 'Oil';
    animals.add(phiyano);

    animals.add(Inkosazane());

    Mhlakuva mhlakuva = Mhlakuva();
    mhlakuva.part = 'Oil';
    animals.add(mhlakuva);

    Nkwazi nkwazi = Nkwazi();
    nkwazi.part = 'Oil';
    animals.add(nkwazi);

    Nkosiyezinyosi nkosiyezinyosi = Nkosiyezinyosi();
    animals.add(nkosiyezinyosi);


    Ukhozi ukhozi = Ukhozi();
    ukhozi.part = 'Bone';
    animals.add(ukhozi);

    Isphikeleli isphikeleli = Isphikeleli();
    isphikeleli.part = 'Bone';
    animals.add(isphikeleli);

    Inhloli inhloli = Inhloli();
    inhloli.part = 'Bone';
    animals.add(inhloli);

    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaIsibungeXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseIsbungeXXX[languageIndex];
  }
  
}

class Ozalwembethe extends Umuthi{
  
  Ozalwembethe(int languageIndex, {forGoodUse =true}):
  super('Ozalwembethe',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?375:525;

    amakhubalo.add(Unhlanhlemhlophe()); 
      

    extras.add('Amakhandlela - White, Yellow, Blue, Red');
    extras.add('Imbasa Yehhashi');
    extras.add('Umhlapho Wehhashi');

    Ihhashi ihhashi = Ihhashi();
    ihhashi.part = 'Imbasa, Umhlapho';
    animals.add(ihhashi);



  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOzalwembethe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseOzalwembethe[languageIndex];
  }
  
}

class NyokaEsiswini extends Umuthi{
  
  NyokaEsiswini(int languageIndex, {forGoodUse =true}):
  super('NyokaEsiswini',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?395:535;

    Umqoqongo umqoqongo = Umqoqongo();
    umqoqongo.description = 'Impande';

    amakhubalo.add(umqoqongo); 
    amakhubalo.add(Iqonqo());
    amakhubalo.add(Isigoba());
    amakhubalo.add(Insontane());
    amakhubalo.add(InyokaIziphinda());
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNyokaEsiswini[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseNyokaEswini[languageIndex];
  }
  
}

class Kufogadlayo extends Umuthi{
  
  Kufogadlayo(int languageIndex, {forGoodUse =true}):
  super('Kufogadlayo',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?595:735;

    Ubhejane ubhejane = Ubhejane();
    ubhejane.part = 'Uphondo';
    animals.add(ubhejane);

    Inyathi inyathi = Inyathi();
    inyathi.part = 'Uphondo';
    animals.add(inyathi);

    Imbabala imbabala = Imbabala();
    imbabala.part = 'Uphondo';
    animals.add(imbabala);
 
    amakhubalo.add(Umbulalansingisi());
    amakhubalo.add(Phindemva());
    amakhubalo.add(Impindabathakathi());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Inyazangoma(umbala:'red'));
    amakhubalo.add(Solo());

    extras.add('Umkhovu Oil And Bone');

    Umkhovu umkhovu = Umkhovu();
    umkhovu.part = 'Oil And Bone';
    animals.add(umkhovu);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaKufogadlayo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseKufogadlayo[languageIndex];
  }
  
}

class VulidloziXXX extends Umuthi{
  
  VulidloziXXX(int languageIndex, {forGoodUse =true}):
  super('VulidloziXXX',
  languageIndex){

    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    iyagquma = true;
    price = Platform.isAndroid?160:320;
 
    amakhubalo.add(Umalibuye());
    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Umanzamhlophe());
    amakhubalo.add(Inhlambamanzi());
    amakhubalo.add(Ihlunguhlungu());
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaVulidloziXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex] + ' 5 days.';
  }
  
}

class Vulidlozi extends Umuthi{
  
  Vulidlozi(int languageIndex, {forGoodUse =true}):
  super('Vulidlozi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?360:655;

    Vuka vuka = Vuka();
    vuka.part = 'Ixolo';

    Ubhuma ubhuma = Ubhuma();
    ubhuma.part = 'Roots';

    Ibheka ibheka = Ibheka();
    ibheka.part = 'Roots';

    Iphamba iphamba = Iphamba(elingakanani:'Elikhulu');
 
    amakhubalo.add(Uqhume());
    amakhubalo.add(Izwangomoya());
    amakhubalo.add(Ungqangendlela());
    amakhubalo.add(Velemoyeni());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Iphunyuka());
    amakhubalo.add(vuka);
    amakhubalo.add(ubhuma);
    amakhubalo.add(Umlulama());
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Ucacane());
    amakhubalo.add(Indlulamithi());
    amakhubalo.add(Untumbadlozi());
    amakhubalo.add(Umadlozane());
    amakhubalo.add(Usondela());
    amakhubalo.add(Umalibuye());
    amakhubalo.add(Umzaneno());
    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Abaprofit());
    amakhubalo.add(Ummemezi(umbala:'Omhlophe'));
    amakhubalo.add(Ummemezi(umbala:'Obovu'));
    amakhubalo.add(Umayisaka('Obovu'));
    amakhubalo.add(Umkhanyakude());
    amakhubalo.add(Gwanyama());
    amakhubalo.add(ibheka);
    amakhubalo.add(Ukhanyisa());
    amakhubalo.add(Mazulazayithole());
    amakhubalo.add(Umampunzana());
    amakhubalo.add(iphamba);
    amakhubalo.add(Umqaqi());
    amakhubalo.add(Isambulo());
    amakhubalo.add(Inhlanhlemhlophe());
    amakhubalo.add(Uyizanazo());
    amakhubalo.add(UvumaOmhlophe());
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaVulidlozi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Azwewenefonini extends Umuthi{
  
  Azwewenefonini(int languageIndex, {forGoodUse =true}):
  super('Azwewenefonini',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?200:450;

    Indabulaluvalo indabulaluvalo = Indabulaluvalo();
    indabulaluvalo.description = 'Yonke';
 
    amakhubalo.add(Uvungulomoya());
    amakhubalo.add(Umayisaka('omhlophe'));
    amakhubalo.add(Umayisaka('obovu'));
    amakhubalo.add(Umnandinoveshe());
    amakhubalo.add(Umalilisa());
    amakhubalo.add(Uzililo());
    amakhubalo.add(Umusa());
    amakhubalo.add(Ummemezi(umbala:'Red'));
    amakhubalo.add(indabulaluvalo);
    amakhubalo.add(Umwelela());
    amakhubalo.add(Izwangomoya());
    amakhubalo.add(Abaphaphi());
    amakhubalo.add(Umthunyelelwa());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAzwewenefonini[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAzwewenefonini[languageIndex];
  }
  
}

class OwenhlanhlaXXX extends Umuthi{
  
  OwenhlanhlaXXX(int languageIndex, {forGoodUse =true}):
  super('OwenhlanhlaXXX',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?160:385;
 
    amakhubalo.add(Uslepe());
    amakhubalo.add(Umayisaka('omhlophe'));
    amakhubalo.add(Umayisaka('obovu'));
    amakhubalo.add(Unhlanhlemhlophe());
    amakhubalo.add(Uslonda());
    amakhubalo.add(Usnwazi());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOwenhlanhlaXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class LahlokubiXXX extends Umuthi{
  
  LahlokubiXXX(int languageIndex, {forGoodUse =true}):
  super('LahlokubiXXX',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    iyaphalaza = true;
    price = Platform.isAndroid?240:485;
 
    amakhubalo.add(Umganu());
    amakhubalo.add(Umnyamathi());
    amakhubalo.add(Isiqunga());
    amakhubalo.add(Umlahlankosi());

    Ulamthuthu ulamthuthu = Ulamthuthu();
    ulamthuthu.part = 'Inyongo';
    animals.add(ulamthuthu);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaLahlokubiXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseLahlokubiXXX[languageIndex];
  }
  
}

class Maqaqabebophile extends Umuthi{
  
  Maqaqabebophile(int languageIndex, {forGoodUse =true}):
  super('Maqaqabebophile',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?185:365;
 
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Phindemva());
    amakhubalo.add(Umwohloza());
    amakhubalo.add(Umqaqi());
    amakhubalo.add(Solo());
    amakhubalo.add(Maguqu());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMaqaqabebophile[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Bohlasisu extends Umuthi{
  
  Bohlasisu(int languageIndex, {forGoodUse =true}):
  super('Bohlasisu',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?585:795;
 
    Umbunga umbunga = Umbunga();
    umbunga.part = 'Roots';

    amakhubalo.add(Umlahlankosi());
    amakhubalo.add(umbunga);

    Ingulube ingulube = Ingulube();
    ingulube.part = 'Umswane';
    animals.add(ingulube);
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBohlasisu[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBohlasisu[languageIndex];
  }
  
}

class Qedanduna extends Umuthi{
  
  Qedanduna(int languageIndex, {forGoodUse =true}):
  super('Qedanduna',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?140:350;

    amakhubalo.add(Umgxamu());
    amakhubalo.add(Ihluze());
    amakhubalo.add(Intolwane());
    amakhubalo.add(Umavumbuka());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedanduna[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseQedanduna[languageIndex] ;
  }
  
}

class Vukanduku extends Umuthi{
  
  Vukanduku(int languageIndex, {forGoodUse =true}):
  super('Vukanduku',
  languageIndex){
    Owner ntshangase = Owner("Malume Thofo", "Emancwanini", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?245:475;

    amakhubalo.add(Ihlunguhlungu());
    amakhubalo.add(Iqhobolozela());
    amakhubalo.add(Umasendenja());
    
    extras.add('Long Life');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaVukanduku[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseVukanduku[languageIndex] ;
  }
  
}

class Webeleni extends Umuthi{
  
  Webeleni(int languageIndex, {forGoodUse =true}):
  super('Webeleni',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?345:565;

    amakhubalo.add(Phindemva());
    amakhubalo.add(Mthunyelelwa());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Impindamshaye());
    amakhubalo.add(Umathinta());
    amakhubalo.add(Umwelela());
    amakhubalo.add(Insulansula());
    amakhubalo.add(Usnwazi());
    amakhubalo.add(Usimanaye());
    amakhubalo.add(Umabuya());
    amakhubalo.add(Unkungwini());
    amakhubalo.add(Umavumbuka());
    amakhubalo.add(Umluthe());
    amakhubalo.add(Umthole());
    amakhubalo.add(Ufikalishona());

    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWebeleni[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseWebeleni[languageIndex] ;
  }
  
}
// Advertised By Screen Shot
class Babambanokwezinja extends Umuthi{
  
  Babambanokwezinja(int languageIndex, {forGoodUse =true}):
  super('Babambanokwezinja',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?285:425;

    Isnama isnama = Isnama();
    isnama.description = 'Zonke Izinhlobo Zesinama';


    amakhubalo.add(Umabopha());
    amakhubalo.add(Incamashela());
    amakhubalo.add(isnama);

    Inja  femaleDog = Inja();
    femaleDog.part = 'Insila Yengquza Yenja Nomchamo Wayo.';
    animals.add(femaleDog);

    Inja maleDog = Inja();
    maleDog.part = 'Insila Yepipi Lenja Nomchamo Wayo.';
    animals.add(maleDog);

    extras.add('Ithawula Enisula Ngalo Uma Nenza Ucansi.');
    extras.add('I-Okapi Entsha');
    extras.add('Magnet Omnyama'); // Uzibuthe Omnyama
    extras.add('Umchamo Womuntu Wakho');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBabambanokwezinja[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBabambanokwezinja[languageIndex];
  }
  
}

class Tholamawele extends Umuthi{
  
  Tholamawele(int languageIndex, {forGoodUse =true}):
  super('Tholamawele',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?385:650;


    amakhubalo.add(Udlutshani());
    amakhubalo.add(Icubudwane());
    amakhubalo.add(Umhlakula());
    amakhubalo.add(Ihlunguhlungu());
    
    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaTholamawele[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class BohlasisuXXX extends Umuthi{
  
  BohlasisuXXX(int languageIndex, {forGoodUse =true}):
  super('BohlasisuXXX',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?385:545;
 
    

    amakhubalo.add(Isnama());
    amakhubalo.add(Ibohlololo());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Uvuka());

    Iselesele iselesele = Iselesele();
    iselesele.part = 'Skin';
    animals.add(iselesele);

    Ingungumbane ingungumbane = Ingungumbane();
    ingungumbane.part = 'Skin';
    animals.add(ingungumbane);

    Ingwenya ingwenya = Ingwenya();
    ingwenya.part = 'Skin';
    animals.add(ingwenya);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBohlasisuXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaOnlyMuthiDirections[languageIndex];
  }
  
}

class OshimileXXX extends Umuthi{
  
  OshimileXXX(int languageIndex, {forGoodUse =true}):
  super('OshimileXXX',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?150:395;
 
    amakhubalo.add(Usmayedwa());
    amakhubalo.add(Ismemo());
    amakhubalo.add(Usondela());
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Ibheka());
    amakhubalo.add(Roslina());
    amakhubalo.add(Nginakile());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOshimileXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class SusaschithoXXX extends Umuthi{
  
  SusaschithoXXX(int languageIndex, {forGoodUse =true}):
  super('SusaschithoXXX',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?295:495;

    amakhubalo.add(Inhlambamanzi());
    amakhubalo.add(Maphipha());
    amakhubalo.add(Intolwane());
    amakhubalo.add(Isiqunga());
    Unukani unukani = Unukani(true);
    unukani.description = 'Male Or Female';
    amakhubalo.add(unukani); 
    amakhubalo.add(Umlahlankosi());
    Ilabatheka ilabatheka = Ilabatheka(true);
    ilabatheka.description = 'Elincane Or Elikhulu';
    amakhubalo.add(ilabatheka); 
    amakhubalo.add(Icishamlilo());
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Ishaladilezenyoka());
    amakhubalo.add(Ujundu());
    amakhubalo.add(Umlahleni());
    amakhubalo.add(Unsukumbili());
    amakhubalo.add(Umsuzwane());
    amakhubalo.add(Umvuthuza());
    amakhubalo.add(Ubhoqo());
    amakhubalo.add(Umnyamathi());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSusaschithoXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex] ;
  }
  
}

class ThandekaABC extends Umuthi{
  
  ThandekaABC(int languageIndex, {forGoodUse =true}):
  super('ThandekaABC',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?145:345;

    amakhubalo.add(Impathampatha());
    amakhubalo.add(Umbadlanga());
    amakhubalo.add(Undiyaza());
    amakhubalo.add(Impilane());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaThandekaABC[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex] ;
  }
  
}

class Phindisa extends Umuthi{
  
  Phindisa(int languageIndex, {forGoodUse =true}):
  super('Phindisa',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?195:385;

    amakhubalo.add(Umathithibala(omncaneNomaOmkhulu:'Omkhulu'));
    amakhubalo.add(Umathithibala(omncaneNomaOmkhulu:'Omncane'));
    amakhubalo.add(Iphamba(elingakanani: 'Elincane'));
    amakhubalo.add(Iphamba(elingakanani: 'Elikhulu'));
    amakhubalo.add(Ingevu());
    amakhubalo.add(Insulansula());
    amakhubalo.add(Ugibeleweni());
    amakhubalo.add(Dakwa());
    Uslepe uslephe1 = Uslepe(umbala: 'Omhlophe');
    uslephe1.description = 'Owabesuthu';
    Uslepe uslephe2 = Uslepe(umbala: 'Obovu');
    uslephe2.description = 'Owakwa Zulu';
    amakhubalo.add(uslephe1);
    amakhubalo.add(uslephe2);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaPhindisa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUsePhindisa[languageIndex] ;
  }
  
}

class Amafuthebhanoyi extends Umuthi{
  
  Amafuthebhanoyi(int languageIndex, {forGoodUse =true}):
  super('Amafuthebhanoyi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    price = Platform.isAndroid?195:385;

    amakhubalo.add(Umazulazayithole());
    amakhubalo.add(Ummemezi(umbala:'Obovu'));
    amakhubalo.add(Ummemezi(umbala:'Omhlophe'));
    amakhubalo.add(Umalibuye());
    amakhubalo.add(Ikhokhelo());
    amakhubalo.add(Iletha());
    amakhubalo.add(Ilanda());
    amakhubalo.add(Ibheka());
    amakhubalo.add(Ijabula());
    amakhubalo.add(Umzaneno());
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Ivulandlela());
    amakhubalo.add(Incamashela());
    amakhubalo.add(Ihlalanyosi());
    Uvuka uvuka = Uvuka();
    uvuka.description = 'Bonke';
    amakhubalo.add(uvuka);

    Inhlwathi inhlwathi = Inhlwathi();
    inhlwathi.part = 'Oil';
    animals.add(inhlwathi);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    Phiyano phiyano = Phiyano();
    phiyano.part = 'Oil';
    animals.add(phiyano);

    Umkhovu umkhovu = Umkhovu();
    umkhovu.part = 'Oil';
    animals.add(umkhovu);

    Umantindane umantindane = Umantindane();
    umantindane.part = 'Oil';
    animals.add(umantindane);

    Ndlulamithi ndlulamithi = Ndlulamithi();
    ndlulamithi.part = 'Oil';
    animals.add(ndlulamithi);

    extras.add('Zamlandela');
    extras.add('Imikhando');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAmafuthebhanoyi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAmafuthebhanoyi[languageIndex] ;
  }
  
}

class Weqiziko extends Umuthi{
  
  Weqiziko(int languageIndex, {forGoodUse =true}):
  super('Weqiziko',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    iyagquma = true;
    price = Platform.isAndroid?135:355;

    amakhubalo.add(Umadlozane());
    amakhubalo.add(Impila());
    amakhubalo.add(Isiqunga());
    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWeqiziko[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseWeqiziko[languageIndex] ;
  }
  
}

class Lumbanxeba extends Umuthi{
  
  Lumbanxeba(int languageIndex, {forGoodUse =true}):
  super('Lumbanxeba',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    iyagquma = true;
    price = Platform.isAndroid?335:565;

    amakhubalo.add(Uginakamagadlela());
    amakhubalo.add(Impindamshaye());
    amakhubalo.add(Imfingo());
    amakhubalo.add(Phindemva());
    amakhubalo.add(Isbhaha());
    amakhubalo.add(Ukhathibesonga());
    
    Mthini mthini = Mthini();
    mthini.part = 'Oil';
    animals.add(mthini);

    Ibhubesi ibhubesi = Ibhubesi();
    ibhubesi.part = 'Oil';
    animals.add(ibhubesi);

    Tikoloshe tikoloshe = Tikoloshe();
    tikoloshe.part = 'Oil';
    animals.add(tikoloshe);

    Umkhovu umkhovu = Umkhovu();
    umkhovu.part = 'Oil';
    animals.add(umkhovu);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaLumbanxeba[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseLumbanxeba[languageIndex] ;
  }
  
}

class Shayizitha extends Umuthi{
  
  Shayizitha(int languageIndex, {forGoodUse =true}):
  super('Shayizitha',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphalaza = true;
    iyagquma = true;
    price = Platform.isAndroid?335:595;

    amakhubalo.add(Udabulamafu());
    Uzililo uzililo = Uzililo();
    uzililo.description = 'Wonke';
    amakhubalo.add(uzililo);
    amakhubalo.add(Uzehlo());
    amakhubalo.add(Ujundu());
    amakhubalo.add(Inyazangoma(umbala: 'Elibovu'));
    amakhubalo.add(Inyazangoma(umbala: 'Elimnyama'));
    Umlahlankosi umlahlankosi = Umlahlankosi();
    umlahlankosi.part = 'Roots';
    amakhubalo.add(umlahlankosi);
    
    extras.add('Ilabatheka Elizobe Linezinaliti. Lona Alihlangene Nalemithi Ophalaza Noma Gquma Ngayo.');
    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaShayizitha[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseShayizitha[languageIndex] ;
  }
  
}

class Cuphathuna extends Umuthi{
  
  Cuphathuna(int languageIndex, {forGoodUse =true}):
  super('Cuphathuna',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?485:695;

    amakhubalo.add(Umathutha());
    amakhubalo.add(Uzikhungele());
    amakhubalo.add(Ugibeleweni());
    amakhubalo.add(Uzililo());
    amakhubalo.add(Usvumelwano());
    amakhubalo.add(Ungibonisele());
    amakhubalo.add(Muziwawula());
    Umhlakuva umhlakuva = Umhlakuva();
    umhlakuva.description = 'Angazi Noma Amafutha Yini.';
    amakhubalo.add(umhlakuva);
    amakhubalo.add(Uzulacwathile());
    amakhubalo.add(Isbhaha());
    amakhubalo.add(Umazulazayithole());
    amakhubalo.add(Usehlangengalo());

    
    extras.add('Umlotha Wasekhaya');
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaCuphathuna[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseCuphathuna[languageIndex] ;
  }
  
}

class Cuphasdumbu extends Umuthi{
  
  Cuphasdumbu(int languageIndex, {forGoodUse =true}):
  super('Cuphasdumbu',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyageza = true;

    price = Platform.isAndroid?385:575;

    amakhubalo.add(Unhliziyonkulu());
    amakhubalo.add(Muziwawula());
    amakhubalo.add(Umababaza());
    amakhubalo.add(Umahlabekufeni());
    amakhubalo.add(Isbhaha());
    Uvuka vuka = Uvuka();
    vuka.description = 'Bonke';
    amakhubalo.add(vuka);
    amakhubalo.add(Phindemva());
    Inyazangoma inyazangoma = Inyazangoma(umbala:'Elibovu');
    inyazangoma.description = 'Akushiwongo Elinjani';
    amakhubalo.add(inyazangoma);
    amakhubalo.add(Umthathe());

    Imamba imamba = Imamba();
    imamba.part = 'Oil';
    animals.add(imamba);
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaCuphasdumbu[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseCuphasdumbu[languageIndex] ;
  }
  
}

class Nqobazitha extends Umuthi{
  
  Nqobazitha(int languageIndex, {forGoodUse =true}):
  super('Nqobazitha',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?285:530;

    amakhubalo.add(Udabulamafu());
    amakhubalo.add(Umabopha());
    amakhubalo.add(Umhlakaza());
    amakhubalo.add(Ingwavuma());
    amakhubalo.add(Umsuzwane());
    amakhubalo.add(Ukhuhlu());
    Umayisaka umayisaka = Umayisaka('Red');
    umayisaka.description = 'Akushiwongo Onjani Umbala.';
    amakhubalo.add(umayisaka);

    amakhubalo.add(Umashweleshwele());
    amakhubalo.add(Undodemnyama());
    amakhubalo.add(Sehlulamanye());
    Unukani unukani = Unukani(true);
    unukani.description = 'Okucaciswanga Ukuthi Owendoda Noma Owesifazane.';
    amakhubalo.add(unukani);
    amakhubalo.add(Umyezane());
    amakhubalo.add(Umunyu());
    amakhubalo.add(Unkungwini());
    amakhubalo.add(Udlulabehlezi());
    amakhubalo.add(Umkhokhu());
    amakhubalo.add(Umnyamathi());

    Inja inja = Inja();
    inja.part = 'Uthuvi Osumhlophe';
    animals.add(inja); 

    Ihhashi ihhashi = Ihhashi();
    ihhashi.part = 'Uthivi';
    animals.add(ihhashi);
    

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNqobazitha[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseNqobazitha[languageIndex] ;
  }
  
}

class QinaXXX extends Umuthi{
  
  QinaXXX(int languageIndex, {forGoodUse =true}):
  super('QinaXXX',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?185:345;

    
    amakhubalo.add(Ukhathibesonga());
    amakhubalo.add(Uvendle());
    amakhubalo.add(Undabungehlele());
    amakhubalo.add(Isbhaha());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQinaXXX[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseQinaXXX[languageIndex] ;
  }
  
}

class Yakhumuzi extends Umuthi{
  
  Yakhumuzi(int languageIndex, {forGoodUse =true}):
  super('Yakhumuzi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?185:430;

    
    amakhubalo.add(Umabopha());
    Umbune umbune = Umbune();
    umbune.description = 'Angazi Noma Umuthi Noma Isilwane Lesi.';
    amakhubalo.add(umbune);
    Imbabazane imbabazane = Imbabazane();
    imbabazane.description = 'Angazi Noma Umuthi Noma Isilwane Lesi.';
    amakhubalo.add(imbabazane);

    Ufudu ufudu = Ufudu();
    ufudu.part = 'Neck Oil';
    animals.add(ufudu);

    UmbuneAnimal umbuneAsAnimal = UmbuneAnimal();
    umbuneAsAnimal.description = 'Angazi Noma Umuthi Noma Isilwane Lesi.';
    animals.add(umbuneAsAnimal);

    ImbabazaneAnimal imbabazaneAsAnimal = ImbabazaneAnimal();
    imbabazaneAsAnimal.description = 'Angazi Noma Umuthi Noma Isilwane Lesi.';
    animals.add(imbabazaneAsAnimal);

    
    extras.add('Milk Long Life');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaYakhumuzi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseYakhumuzi[languageIndex] ;
  }
  
}

class Ngfunumsebenzi extends Umuthi{
  
  Ngfunumsebenzi(int languageIndex, {forGoodUse =true}):
  super('Ngfunumsebenzi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?145:345;

    
    amakhubalo.add(Ingwavuma());
    amakhubalo.add(Umphumeleli());
    amakhubalo.add(Uskhundla());
    amakhubalo.add(UvumaOmhlophe());
    
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Unhlanhlemhlophe());
    amakhubalo.add(Umampunzana());
    amakhubalo.add(Ufikubuse());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNgfunumsebenzi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseNgfunumsebenzi[languageIndex] ;
  }
  
}

class Khulumisidlozi extends Umuthi{
  
  Khulumisidlozi(int languageIndex, {forGoodUse =true}):
  super('Khulumisidlozi',
  languageIndex){
    iyachela = true;

    price = Platform.isAndroid?345:555;

    
    amakhubalo.add(Ungqangendlela());
    amakhubalo.add(Uqhume());
    amakhubalo.add(Umadlozane());
    
    Inyathi inyathi = Inyathi();
    inyathi.part = 'Ishoba';
    animals.add(inyathi);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaKhulumisidlozi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseKhulumisidlozi[languageIndex] ;
  }
  
}

// How To Use?
class Hlola extends Umuthi{
  
  Hlola(int languageIndex, {forGoodUse =true}):
  super('Hlola',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?145:345;

    
    amakhubalo.add(Umhlahlo());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Ungibonisele());
    amakhubalo.add(Umusa());
    amakhubalo.add(Imamatheka());
    
    Inja inja = Inja();
    inja.part = 'Ikhala';
    animals.add(inja);
    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaHlola[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseHlola[languageIndex] ;
  }
  
}

class Donsabafazi extends Umuthi{
  
  Donsabafazi(int languageIndex, {forGoodUse =true}):
  super('Donsabafazi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?160:275;

    
    amakhubalo.add(Umathinta());
    amakhubalo.add(Uvuma());
    amakhubalo.add(Umnyamathi());
    amakhubalo.add(Umunyu());
    
    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    animals.add(SpantshFly());

    Imamba imamba = Imamba();
    imamba.part = 'Oil';
    animals.add(imamba);

    animals.add(Inkosazane());
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaDonsabafazi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseDonsabafazi[languageIndex] ;
  }
  
}

class Uhlangalwabo extends Umuthi{
  
  Uhlangalwabo(int languageIndex, {forGoodUse =true}):
  super('Uhlangalwabo',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?250:445;

    
    amakhubalo.add(Ushendelomkhwekazi());
    amakhubalo.add(Usheshelingene());
    Uqhume uqhume = Uqhume();
    uqhume.description = 'Umfazothethayo';
    amakhubalo.add(uqhume);
    amakhubalo.add(Uqhume());
    amakhubalo.add(Uzeneke());
    amakhubalo.add(Ilukuluku());
    amakhubalo.add(Umalinga());
    amakhubalo.add(Umalilisa());
    amakhubalo.add(Umdlandlovu());
    amakhubalo.add(Intolwane());
    amakhubalo.add(Umphumeleli());
    amakhubalo.add(Isiwisa());
    amakhubalo.add(Isiqomiso());
    
    animals.add(SpantshFly());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUhlangalwabo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseUhlangalwabo[languageIndex] ;
  }
  
}

class IsikhafuloBMW extends Umuthi{
  
  IsikhafuloBMW(int languageIndex, {forGoodUse =true}):
  super('IsikhafuloBMW',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?230:435;

    Uzililo uzililo = Uzililo();
    uzililo.description = 'Umkhulu';
    amakhubalo.add(uzililo);
    amakhubalo.add(Ummemezi(umbala:'Red'));
    amakhubalo.add(Ummemezi(umbala:'White'));
    amakhubalo.add(Ilukuluku());
    amakhubalo.add(Umayisaka('Red'));
    amakhubalo.add(Umalilisa());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Umazulazayithole());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Isbhaka());
    amakhubalo.add(Ugina());
    
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Umkhondweni());
    Indabulaluvalo indabulaluvalo = Indabulaluvalo();
    indabulaluvalo.description = 'Yonke';
    amakhubalo.add(Solo());
    amakhubalo.add(indabulaluvalo);
    amakhubalo.add(Uhhabiya());
    amakhubalo.add(Umthathe());
    amakhubalo.add(Abaphaphi());
    amakhubalo.add(Abangqongqozi());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaIsikhafuloBMW[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseIsikhafuloBMW[languageIndex] ;
  }
  
}

class Angathinyaka extends Umuthi{
  
  Angathinyaka(int languageIndex, {forGoodUse =true}):
  super('Angathinyaka',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?295:585;

    amakhubalo.add(Umabopha());
    amakhubalo.add(Ibheka());
    amakhubalo.add(Udelunina());
    amakhubalo.add(Izaza());
    amakhubalo.add(Intwalubombo());
    amakhubalo.add(Nginakile());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Umnandinoveshe());
    
    extras.add('Ziyamlandela');

    Ingwe ingwe = Ingwe();
    ingwe.part = 'Female Oil';
    animals.add(ingwe);

    animals.add(SpantshFly());


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAngathinyaka[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAngathinyaka[languageIndex] ;
  }
  
}

class Intandoyasendlini extends Umuthi{
  
  Intandoyasendlini(int languageIndex, {forGoodUse =true}):
  super('Intandoyasendlini',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?380:575;

    amakhubalo.add(Incamashela());
    amakhubalo.add(Ishobalendlela());
    amakhubalo.add(Isnama());
    amakhubalo.add(Umabusane());
    amakhubalo.add(Isphahluka());
    amakhubalo.add(Umyezane());
    amakhubalo.add(Mlomomnandi());
    
    extras.add('Insila Yakho Yonke');
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaIntandoyasendlini[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseIntandoyasendlini[languageIndex] ;
  }
  
}

class Ngikufunala extends Umuthi{
  
  Ngikufunala(int languageIndex, {forGoodUse =true}):
  super('Ngikufunala',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?235:455;

    Indabulaluvalo indabulaluvalo = Indabulaluvalo();
    indabulaluvalo.description = 'Yonke';
    amakhubalo.add(indabulaluvalo);
    amakhubalo.add(Indungulu());
    amakhubalo.add(Ummemezi(umbala: 'Obovu'));
    amakhubalo.add(Ummemezi(umbala: 'Omhlophe'));
    amakhubalo.add(Umondi());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Umoyawezwe());
    amakhubalo.add(Ungqangendlela());
    amakhubalo.add(Unhliziyonkulu());
    amakhubalo.add(Ugina());
    
    Impangele impangele = Impangele();
    impangele.part = 'Unyawo';
    animals.add(impangele);

    Umantindane mantindane = Umantindane();
    mantindane.part = 'Oil';
    animals.add(mantindane);

    extras.add('Isiphephetho');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNgikufunala[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseNgikufunala[languageIndex] ;
  }
  
}

// No Recipe, No How To Use Either
class Owemfuyo extends Umuthi{
  
  Owemfuyo(int languageIndex, {forGoodUse =true}):
  super('Owemfuyo',
  languageIndex){
    Owner thofo = Owner("Malume Thofo", "Emancwanini", true);
    owner = thofo;

    price = Platform.isAndroid?750:1200;

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOwemfuyo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseOwemfuyo[languageIndex] ;
  }
  
}

class Ukuzuqashwe extends Umuthi{
  
  Ukuzuqashwe(int languageIndex, {forGoodUse =true}):
  super('Ukuzuqashwe',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?150:350;

    extras.add('Step 1 Qguma - Umnyamathi, Umzungulu, Ubhubhubhu, Umganu, Umgwenya, Mavulakuvaliwe, Isiqunga');
    amakhubalo.add(Umnyamathi());
    amakhubalo.add(Umzungulu());
    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Umganu());
    amakhubalo.add(Umgwenya());
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Isiqunga());
    extras.add('Step 2 Phalaza - Nhlanhlemhlophe, Vumomhlophe, Sphahluluka, Mkhanyakude, Velemoyeni, Mavulakuvaliwe, Isiqunga');
    amakhubalo.add(Inhlanhlemhlophe());
    amakhubalo.add(UvumaOmhlophe());
    amakhubalo.add(Isphahluka());
    amakhubalo.add(Umkhanyakude());
    amakhubalo.add(Velemoyeni());
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Isiqunga());
    
    extras.add('Step 3 Qguma, Geza, Phalaza - Velabahleke, Mthole, Skhundla, Mlomomnandi, Ngwavuma, Mwelela, Munyu wonke, '
    'Mavumbuka, Phakama, Mkhondweni, Isehlulamanye, Umavulakuvaliwe, Ovuka bonke, Maguqu, Buyaliphethe, Khombakwenzeke');
    amakhubalo.add(Velabahleke());
    amakhubalo.add(Umthole());
    amakhubalo.add(Uskhundla());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Ingwavuma());
    amakhubalo.add(Umwelela());
    Umunyu umunyu = Umunyu();
    umunyu.description = 'Zonke Izinhlobo';
    amakhubalo.add(umunyu);
    amakhubalo.add(Umavumbuka());
    amakhubalo.add(IphakamaLaphezulu());
    amakhubalo.add(IphakamaLamanzi());
    amakhubalo.add(IphakamaLentaba());
    amakhubalo.add(IphakamaLogagane());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Mavulakuvaliwe());
    Vuka vuka = Vuka();
    vuka.description = 'Zonke Izinhlobo';
    amakhubalo.add(vuka);
    amakhubalo.add(Maguqu());
    amakhubalo.add(Ubuyaliphethe());
    amakhubalo.add(Ukhombakwenzeke());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUkuzuqashwe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex] ;
  }
  
}

class Mubuyise extends Umuthi{
  
  Mubuyise(int languageIndex, {forGoodUse =true}):
  super('Mubuyise',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?475:695;

    Umbiji umbiji = Umbiji();
    umbiji.description = 'Ikhubalo';
    amakhubalo.add(umbiji);
    amakhubalo.add(Sukasambe());
    amakhubalo.add(Umazulazayithole());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Umwelela());
    amakhubalo.add(Umphenduli());
    amakhubalo.add(Umhungulu());
    amakhubalo.add(Mampondomunyi());
    amakhubalo.add(Unhliziyonkulu());
    amakhubalo.add(Ndindibala());
    amakhubalo.add(Umoyawezwe());
    amakhubalo.add(Dakwa());
    Vuka vuka = Vuka();
    vuka.description = 'Bonke';
    amakhubalo.add(vuka);
    amakhubalo.add(Usondela());
    amakhubalo.add(Ungange());
    amakhubalo.add(Ungqangendlela());
    amakhubalo.add(Umazwahlabayo());
    amakhubalo.add(Abangqongqozi());
    
    Umkhovu umkhovu = Umkhovu();
    umkhovu.part = 'Oil';
    animals.add(umkhovu);

    Tikoloshe tikoloshe = Tikoloshe();
    tikoloshe.part = 'Bone';
    animals.add(tikoloshe);

    Iskhova iskhova = Iskhova();
    iskhova.part = 'Oil';
    animals.add(iskhova);

    Ingwe ingwe = Ingwe();
    ingwe.part = 'Oil';
    animals.add(ingwe);

    Ihhashi ihhashi = Ihhashi();
    ihhashi.part = 'Oil';
    animals.add(ihhashi);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMubuyise[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMubuyise[languageIndex] ;
  }
  
}

class Owezilonda extends Umuthi{
  
  Owezilonda(int languageIndex, {forGoodUse =true}):
  super('Owezilonda',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachatha = true;

    price = Platform.isAndroid?225:485;
    
    amakhubalo.add(Umvuthuza());
    Unukani unukani = Unukani(true);
    unukani.description = 'Akucaciswanga Ukuthi Muphi';
    amakhubalo.add(unukani);
    amakhubalo.add(Umlulama());
    Ilabatheka ilabatheka = Ilabatheka(true);
    ilabatheka.description = 'Akucaciswanga Ukuthi Iliphi';
    amakhubalo.add(ilabatheka);
    amakhubalo.add(Inguduza());
    amakhubalo.add(Umathunga());
    amakhubalo.add(Unsukumbili());


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOwezilonda[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseOwezilonda[languageIndex] ;
  }
  
}

// Not Registered, No Results Either
class Mayibamanzintombi extends Umuthi{
  
  Mayibamanzintombi(int languageIndex, {forGoodUse =true}):
  super('Mayibamanzintombi',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachatha = true;

    price = Platform.isAndroid?185:300;
    
    amakhubalo.add(Ugobho());

    Imfene imfene = Imfene();
    imfene.part = 'Inqaku';
    imfene.description = 'Kancane';
    animals.add(imfene);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMayibamanzintombi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMayibamanzintombi[languageIndex] ;
  }
  
}

class Ngiseliwe extends Umuthi{
  
  Ngiseliwe(int languageIndex, {forGoodUse =true}):
  super('Ngiseliwe',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyaphuzwa = true;

    price = Platform.isAndroid?185:375;
    
    amakhubalo.add(Ixhaphosi());
    amakhubalo.add(Unwele());
 
 
 
 
    amakhubalo.add(Unsukumbili());
    Ilabatheka ilabatheka = Ilabatheka(false);
    ilabatheka.description = 'Akucaciswanga';
    amakhubalo.add(ilabatheka);

    extras.add('Isibabuli');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNgiseliwe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaOnlyMuthiDirections[languageIndex] ;
  }
  
}

class Mkhontowezitha extends Umuthi{
  
  Mkhontowezitha(int languageIndex, {forGoodUse =true}):
  super('Mkhontowezitha',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyachela = true;

    price = Platform.isAndroid?145:345;
    
    amakhubalo.add(Umgadankawu());
    amakhubalo.add(Undabungehlele());
    amakhubalo.add(Umababaza());

    extras.add('Umkhonto Wokugovuza Lomuthi.');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMkhontowezitha[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMkhontowezitha[languageIndex] ;
  }
  
}

class Sondezidlozi extends Umuthi{
  
  Sondezidlozi(int languageIndex, {forGoodUse =true}):
  super('Sondezidlozi',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyagquma = true;

    price = Platform.isAndroid?145:385;
    
    amakhubalo.add(Malibuye());
    amakhubalo.add(Untumbadlozi());
    amakhubalo.add(Impila());


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSondezidlozi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaMuthiDirections[languageIndex] + ' 3 days.';
  }
  
}

class Olalwayisilwane extends Umuthi{
  
  Olalwayisilwane(int languageIndex, {forGoodUse =true}):
  super('Olalwayisilwane',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    iyagquma = true;

    price = Platform.isAndroid?150:320;
    
    amakhubalo.add(Umthombothi());
    amakhubalo.add(Umagwazucaca());
    amakhubalo.add(Unukani(false));


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOlalwayisilwane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseOlalwayisilwane[languageIndex];
  }
  
}

// Kunomuthi Ongafakwanga
class Inkingineswane extends Umuthi{
  
  Inkingineswane(int languageIndex, {forGoodUse =true}):
  super('Inkingineswane',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?250:475;
    
    amakhubalo.add(Umhlakaza());
    amakhubalo.add(Impila());
    amakhubalo.add(Phindemva());

    amakhubalo.add(Impindamshaye());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Umavikazaguqe());

    amakhubalo.add(Umpikayiboni());
    amakhubalo.add(Unkungwini());
    //amakhubalo.add(Isithe());

    Indlovu indlovu = Indlovu();
    indlovu.part = 'Bone';
    animals.add(indlovu);

    Imbongolo imbongolo = Imbongolo();
    imbongolo.part = 'Oil';
    animals.add(imbongolo);

    Inyathi inyathi = Inyathi();
    inyathi.part = 'Oil';
    animals.add(inyathi);

    Imamba imamba = Imamba(umbala:'black');
    imamba.part = 'Oil';
    animals.add(imamba);

    Inyengelezi inyengelezi = Inyengelezi();
    inyengelezi.part = 'Oil';
    animals.add(inyengelezi);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaInkingineswane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.chelaShunqisa[languageIndex];
  }
  
}

class Mfuyeningi extends Umuthi{
  
  Mfuyeningi(int languageIndex, {forGoodUse =true}):
  super('Mfuyeningi',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?450:645;

    extras.add('Khekhe Lezinyosi');
    extras.add('Izidleke Zikancede');

    Indlovu indlovu = Indlovu();
    indlovu.part = 'Bone';
    animals.add(indlovu);

    Ivondwe ivondwe = Ivondwe();
    ivondwe.part = 'Akushiwongo';
    animals.add(ivondwe);

    Ibululu ibululu = Ibululu();
    ibululu.part = 'Akushiwongo';
    animals.add(ibululu);

    Inhlwathi inhlwathi = Inhlwathi();
    inhlwathi.part = 'Akushiwongo';
    animals.add(inhlwathi);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Akushiwongo';
    animals.add(imvubu);

    Umvuthamini umvuthamini = Umvuthamini();
    umvuthamini.part = 'Amakhiwane';
    animals.add(umvuthamini);

    Amahlala amahlala = Amahlala();
    amahlala.part = 'Akushiwongo';
    animals.add(amahlala);

    
    

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMfuyeningi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMfuyeningi[languageIndex];
  }
  
}

class Skhafulo123 extends Umuthi{
  
  Skhafulo123(int languageIndex, {forGoodUse =true}):
  super('Skhafulo123',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?140:235;
    
    amakhubalo.add(Ummemezi(umbala:'Obovu'));
    amakhubalo.add(Ujikanelanga());
    amakhubalo.add(Iskhahlamezi());
    amakhubalo.add(Umwelela());
    amakhubalo.add(Umthathe());
    amakhubalo.add(Umthole());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSkhafulo123[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseSkhafulo123[languageIndex];
  }
  
}

class Phumaschitho extends Umuthi{
  
  Phumaschitho(int languageIndex, {forGoodUse =true}):
  super('Phumaschitho',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?180:300;
    
    amakhubalo.add(Umsanka());
    amakhubalo.add(Impindamshaye());
    amakhubalo.add(Ubanganise());
    amakhubalo.add(Umhlakaza());
    amakhubalo.add(Ibunda());
    amakhubalo.add(Isiqalaba());
    Unukani unukani = Unukani(false);
    unukani.description = 'Akushiwongo Muphi';
    amakhubalo.add(unukani);
    amakhubalo.add(Umgwenya());
    amakhubalo.add(Umavumbuka());

    extras.add('Umcako');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaPhumaschitho[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUsePhumaschitho[languageIndex];
  }
  
}

class Qhanyelwa extends Umuthi{
  
  Qhanyelwa(int languageIndex, {forGoodUse =true}):
  super('Qhanyelwa',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?200:350;
    
    amakhubalo.add(Uqonsi());
    amakhubalo.add(Bangalala());
    amakhubalo.add(Umlunge());
    amakhubalo.add(Undabungehlele());
    Isimengelezo isimengelezo = Isimengelezo();
    isimengelezo.description = 'Abantu Abawazi Lomuthi. Esikhundleni Sawo Ngifaka Umavumbuka.';
    amakhubalo.add(isimengelezo);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQhanyelwa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUsePhumaschitho[languageIndex];
  }
  
}

// Imiphumela Ayaziwa, Not Registered
class Umphuphutho extends Umuthi{
  
  Umphuphutho(int languageIndex, {forGoodUse =true}):
  super('Umphuphutho',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?145:230;
    
    amakhubalo.add(Umgadankawu());
    amakhubalo.add(Umayisaka('Omnyama'));
    amakhubalo.add(Umkhwangu());
    amakhubalo.add(Umkhondweni());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUmphuphutho[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class DonsuthandoXYZ extends Umuthi{
  
  DonsuthandoXYZ(int languageIndex, {forGoodUse =true}):
  super('DonsuthandoXYZ',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?230:430;
    
    amakhubalo.add(Donsuthando());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Iwozawoza());
    Ibheka ibheka = Ibheka();
    ibheka.description = 'Max';
    amakhubalo.add(ibheka);

    extras.add('Umlotha Wamandiya');
    extras.add('Uzamlandela');
    extras.add('Camphor Blocks');
    extras.add('3 Types Of Belungu Stones Including Please Call Me And Come To Me.');
    extras.add('Red Nkosazane Oil');
    extras.add('Imphepho (Zonke Izinhlobo)');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaDonsuthandoXYZ[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Chathanje extends Umuthi{
  
  Chathanje(int languageIndex, {forGoodUse =true}):
  super('Chathanje',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?140:230;

    amakhubalo.add(Udlutshani());
    amakhubalo.add(Umathunga());
    amakhubalo.add(Ugibizisila());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaChathanje[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.chathaMuthiDirections[languageIndex];
  }
  
}

class Liyavukala extends Umuthi{
  
  Liyavukala(int languageIndex, {forGoodUse =true}):
  super('Liyavukala',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?120:220;

    Ilabatheka ilabatheka = Ilabatheka(true);
    ilabatheka.description = 'Akucaciswanga';
    amakhubalo.add(ilabatheka);
    amakhubalo.add(Unsukumbili());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaLiyavukala[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaOnlyMuthiDirections[languageIndex];
  }
  
}

class Ziphuzelenje extends Umuthi{
  
  Ziphuzelenje(int languageIndex, {forGoodUse =true}):
  super('Ziphuzelenje',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?140:230;

    
    amakhubalo.add(Unwele());
    amakhubalo.add(Ixhaphosi());
    Ilabatheka ilabatheka = Ilabatheka(false);
    ilabatheka.description = 'Akucaciswanga';
    amakhubalo.add(Unsukumbili());

    extras.add('Isibabuli');
    extras.add('Alarm Kancane');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaZiphuzelenje[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaOnlyMuthiDirections[languageIndex];
  }
  
}

class Gezelesgangeni extends Umuthi{
  
  Gezelesgangeni(int languageIndex, {forGoodUse =true}):
  super('Gezelesgangeni',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?195:325;

    
    amakhubalo.add(Umzilanyoni());
    amakhubalo.add(Umsanka());
    Ilabatheka ilabatheka = Ilabatheka(false);
    ilabatheka.description = 'Akucaciswanga';
    amakhubalo.add(Inhlambamanzi());

    amakhubalo.add(Umvithi());
    amakhubalo.add(Undongana());
    amakhubalo.add(Umwohloza());

    amakhubalo.add(Insulansula());
    amakhubalo.add(Impila());
    amakhubalo.add(Umvuthuza());


    

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaGezelesgangeni[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseGezelesgangeni[languageIndex];
  }
  
}

class Sesheli extends Umuthi{
  
  Sesheli(int languageIndex, {forGoodUse =true}):
  super('Sesheli',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?150:290;

    amakhubalo.add(Umphumeleli());
    amakhubalo.add(Velemoyeni());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Umkhanyakude());
    amakhubalo.add(Roslina());
    amakhubalo.add(Ibheka());
    amakhubalo.add(Ujikanelanga());
    amakhubalo.add(Ijikantamo());

    Imvubu mvubu = Imvubu();
    mvubu.part = 'Oil';
    animals.add(mvubu);

    Nkosazane nkosazane = Nkosazane();
    nkosazane.part = 'Oil';
    animals.add(nkosazane);

    extras.add('Uzamlandela');
    

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSesheli[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseSesheli[languageIndex];
  }
  
}

class Sokalamanyala extends Umuthi{
  
  Sokalamanyala(int languageIndex, {forGoodUse =true}):
  super('Sokalamanyala',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?150:340;

    amakhubalo.add(Nginakile());
    amakhubalo.add(Udelunina());
    amakhubalo.add(Sondeza());
    amakhubalo.add(Intwalubombo());
    amakhubalo.add(Udumbakasbumbu());
    amakhubalo.add(Velabahleke());
    amakhubalo.add(UvumaOmhlophe());
    amakhubalo.add(Umusa());
    amakhubalo.add(Umyezane());
    amakhubalo.add(Umusa());
    amakhubalo.add(Roslina());
  
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaSokalamanyala[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseSokalamanyala[languageIndex];
  }
  
}

class Mlandengesthombesakhe extends Umuthi{
  
  Mlandengesthombesakhe(int languageIndex, {forGoodUse =true}):
  super('Mlandengesthombesakhe',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    

    price = Platform.isAndroid?130:240;

    extras.add('Amanzi Esiphethu');
    extras.add('Amanzi Olwandle');
    extras.add('Amanzi Omfula');
    extras.add('Isithombe Noma Impahla Yalowo Omfunayo.');
    extras.add('Iconsi Lomchamo Wakho');
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMlandengesthombesakhe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMlandengesthombesakhe[languageIndex];
  }
  
}

class Asizwisane extends Umuthi{
  
  Asizwisane(int languageIndex, {forGoodUse =true}):
  super('Asizwisane',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;

    price = Platform.isAndroid?530:740;

    amakhubalo.add(Umthunyelelwa());
    amakhubalo.add(Usokalakwazulu());
    amakhubalo.add(Undodemnyama());
    amakhubalo.add(Isivumelwano());
    amakhubalo.add(Uzililo());
    amakhubalo.add(Umjuluka());
    amakhubalo.add(Usondela());
    amakhubalo.add(Umalinga());
    amakhubalo.add(Umababaza());
    amakhubalo.add(Uvendlakavilaphi());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Udumaphansi());
    amakhubalo.add(Iwozawoza());
    amakhubalo.add(Uvuthamaxhumane());

    Indlovu indlovu = Indlovu();
    indlovu.part = 'Umsunu';
    animals.add(indlovu);

    Ukhozi ukhozi = Ukhozi();
    ukhozi.part = 'Amazipho';
    animals.add(ukhozi);

    Umvemve umvemve = Umvemve();
    umvemve.part = 'Oil';
    animals.add(umvemve);

    Ibhele ibhele = Ibhele();
    ibhele.part = 'Oil';
    animals.add(ibhele);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAsizwisane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Owezishimane extends Umuthi{
  
  Owezishimane(int languageIndex, {forGoodUse =true}):
  super('Owezishimane',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?130:240;

    amakhubalo.add(Isiqungasikatikoloshe());
    Umhlanga umhlanga = Umhlanga();
    umhlanga.description = 'Owomfula';
    umhlanga.part = 'Izimpande';
    amakhubalo.add(umhlanga);
    amakhubalo.add(Untombikayibhinci());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOwezishimane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex] + ' 3 days.';
  }
  
}

class Bethela extends Umuthi{
  
  Bethela(int languageIndex, {forGoodUse =true}):
  super('Bethela',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?3000:5000;

    amakhubalo.add(Umahlabazihlangane());
    Umyezane umyezane = Umyezane();
    umyezane.description = 'Ebhukweni Kubhalwe Umhlonishwa';
    amakhubalo.add(umyezane);
    amakhubalo.add(Umathithibala());

    Inyathi inyathi = Inyathi();
    inyathi.part = 'Ithambo';
    animals.add(inyathi);

    Indlondlo indlondlo = Indlondlo();
    indlondlo.part = 'Ikhanda';
    animals.add(indlondlo);

    Imamba imamba = Imamba(umbala: 'Awushiwongo Umbala');
    imamba.part = 'Ikhanda';
    animals.add(imamba);

    Inhlwathi inhlwathi = Inhlwathi();
    inhlwathi.part = 'Ikhanda';
    animals.add(inhlwathi);

    Inja inja = Inja();
    inja.part = 'Ithambo';
    animals.add(inja);

    extras.add('Mantindane\'s Stool');
    extras.add('Amatshe Omfula');
    extras.add('Amatshe Olwandle');
    extras.add('Amazambane Afakwe Izipikili Ezinde Eziyisiphambano Ezambaneni Lilodwa.');
    extras.add('Amaqanda');
    extras.add('Upetrol');
    extras.add('Ispirit');
    extras.add('Usawoti Omahhadla');


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBethela[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBethela[languageIndex] + ' 3 days.';
  }
  
}

class Antibiotics extends Umuthi{
  
  Antibiotics(int languageIndex, {forGoodUse =true}):
  super('Antibiotics',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?170:240;

    amakhubalo.add(Inhlaba());
    amakhubalo.add(Umathunga());
    amakhubalo.add(Unsukumbili());
    amakhubalo.add(Umahlabekufeni());
    amakhubalo.add(Umlulama());
    amakhubalo.add(Umathanjana());
    amakhubalo.add(Ibohlololo());
    amakhubalo.add(Umhlatshelo());
    amakhubalo.add(Inkomfe());
    
    extras.add('Garlic');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaAntibiotics[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseAntibiotics[languageIndex];
  }
  
}

class Profetha extends Umuthi{
  
  Profetha(int languageIndex, {forGoodUse =true}):
  super('Profetha',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?300:430;

    extras.add('Isidleke Sejuba Noma Inkonjane Noma Zombili');
    extras.add('Udaka Lwenkalankala');
    extras.add('Idlozilezizwe');
    extras.add('Umfula');
    extras.add('Impophomo');
    extras.add('Umthombo');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaProfetha[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseProfetha[languageIndex];
  }
  
}

class Gezumndeni extends Umuthi{
  
  Gezumndeni(int languageIndex, {forGoodUse =true}):
  super('Gezumndeni',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:350;
    
    amakhubalo.add(Umlahlabantu());
    amakhubalo.add(Umsanka());
    amakhubalo.add(Umagwazucaca());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaGezumndeni[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseGezumndeni[languageIndex];
  }
  
}

class Qedizizwe extends Umuthi{
  
  Qedizizwe(int languageIndex, {forGoodUse =true}):
  super('Qedizizwe',
  languageIndex){
    Owner mkhuluZikhali = Owner("mkhuluZikhali", "Mlazi H Ko4", true);
    owner = mkhuluZikhali;
    
    price = Platform.isAndroid?300:550;


    amakhubalo.add(Umbhangabhanga());
    Thangazani thangazani = Thangazani();
    thangazani.description = 'Ukhandi Insizi Ngalomuthi Eyokugcaba Nokukhotha';
    amakhubalo.add(thangazani);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedizizwe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseQedizizwe[languageIndex];
  }
  
}

class Yonezizwe extends Umuthi{
  
  Yonezizwe(int languageIndex, {forGoodUse =true}):
  super('Yonezizwe',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?4800:7000;
    
    amakhubalo.add(Umoyawezwe());
    amakhubalo.add(Uvungulomoya());
    amakhubalo.add(Injula());
    amakhubalo.add(Inhlamva());
    amakhubalo.add(Umkhondweni());
    amakhubalo.add(Umkhanyakude());
    amakhubalo.add(Uskhanyisele());
    amakhubalo.add(Umhlahlo());
    amakhubalo.add(Umpholofethi());
    amakhubalo.add(Umagwazucaca());
    amakhubalo.add(Isbhaha());
    Vuka vuka = Vuka();
    vuka.description = 'Bonke';
    amakhubalo.add(vuka);
    amakhubalo.add(Ivulandlela());
    Indlulamithi indlulamithi = Indlulamithi();
    indlulamithi.description = 'Yonke';
    amakhubalo.add(indlulamithi);
    amakhubalo.add(Umagedegede());

    Imfene imfene = Imfene();
    imfene.part = 'Isandla';
    animals.add(imfene);

    Isambane isambane = Isambane();
    isambane.part = 'Isandla';
    animals.add(isambane);

    Inqe inqe = Inqe();
    inqe.part = 'Ubuchopho';
    animals.add(inqe);

    Ihhashi ihhashi = Ihhashi();
    ihhashi.part = 'Ubuchopho';
    animals.add(ihhashi);

    Igwababa igwababa = Igwababa();
    igwababa.part = 'Ubuchopho';
    animals.add(igwababa);

    Ihansi ihansi = Ihansi();
    ihansi.part = 'Ubuchopho';
    animals.add(ihansi);

    Ukwazi ukwazi = Ukwazi();
    ukwazi.part = 'Ubuchopho';
    animals.add(ukwazi);

    Ingwenya ingwenya = Ingwenya();
    ingwenya.part = 'Ukhakhanyi Namathambo';
    animals.add(ingwenya);

    Ibhubesi ibhubesi = Ibhubesi();
    ibhubesi.part = 'Ukhakhanyi Namathambo';
    animals.add(ibhubesi);

    Imvukuzane imvukuzane = Imvukuzane();
    imvukuzane.part = 'Ukhakhanyi Namathambo';
    animals.add(imvukuzane);

    Inhlolamvula inhlolamvula = Inhlolamvula();
    inhlolamvula.part = 'Ukhakhayi Namathambo';
    animals.add(inhlolamvula);

    Inkosiyezinyosi inkosiyezinyosi = Inkosiyezinyosi();
    inkosiyezinyosi.part = 'Ukhakhayi Namathambo';
    animals.add(inkosiyezinyosi);

    Imamba imamba = Imamba(umbala:'Emnyama');
    imamba.part = 'Ikhanda';
    animals.add(imamba);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaYonezizwe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseYonezizwe[languageIndex];
  }
  
}

class Mthondowothando extends Umuthi{
  
  Mthondowothando(int languageIndex, {forGoodUse =true}):
  super('Mthondowothando',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?300:500;
    
    amakhubalo.add(Umahogwe());
    amakhubalo.add(Unukani(false));
    amakhubalo.add(Ibheka());
    amakhubalo.add(Nginakile());
    amakhubalo.add(Umkhalelwa());
    amakhubalo.add(Sehlulamanye());
    Usimanaye simanaye = Usimanaye();
    simanaye.description = 'Ebhukwini Kubhalwe Umanaye Female';
    amakhubalo.add(simanaye);
    Umanaye umanaye = Umanaye(true);
    umanaye.description = 'Angazi Noma Into Eyodwa NoSimanaye';
    amakhubalo.add(umanaye);

    Cobra cobra = Cobra();
    cobra.part = 'Oil';
    cobra.description = 'Just A Drop';
    animals.add(cobra);

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMthondowothando[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMthondowothando[languageIndex];
  }
  
}

class Buyisokwebiwe extends Umuthi{
  
  Buyisokwebiwe(int languageIndex, {forGoodUse =true}):
  super('Buyisokwebiwe',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:450;
    
    amakhubalo.add(Umakhukhumesane());
    amakhubalo.add(Umathinta());
    Ivezinhlanhla ivezinhlanhla = Ivezinhlanhla();
    ivezinhlanhla.description = 'Amavezinhlanhla Zonke';
    amakhubalo.add(ivezinhlanhla);
    Uvutha uvutha = Uvutha();
    uvutha.description = 'Stone';
    amakhubalo.add(uvutha);
    amakhubalo.add(Uvutha());

    extras.add('Umazibuthe');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBuyisokwebiwe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBuyisokwebiwe[languageIndex];
  }
  
}

class Motengantshontshwa extends Umuthi{
  
  Motengantshontshwa(int languageIndex, {forGoodUse =true}):
  super('Motengantshontshwa',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?1600:2000;
    
    amakhubalo.add(Umavumbuka());
    amakhubalo.add(Umvithi());
    amakhubalo.add(Uvendle());
    amakhubalo.add(Umazwahlabayo());
    amakhubalo.add(Impindekhaligazi());
    amakhubalo.add(Umkhondweni());
    Uvukamalibeni uvukamalibeni = Uvukamalibeni();
    uvukamalibeni.description = 'Wonke';
    amakhubalo.add(uvukamalibeni);
    amakhubalo.add(Indabulaluvalo());
    amakhubalo.add(Usgidi());

    Izibonkolo izibonkolo = Izibonkolo();
    izibonkolo.description = 'Izintuthwane Ezincinzayo';
    animals.add(izibonkolo);

    Izinyosi izinyosi = Izinyosi();
    izinyosi.description = 'Ezincinzayo';
    animals.add(izinyosi);

    Ikati ikati = Ikati();
    ikati.part = 'Left Hand';
    animals.add(ikati);

    IqhudeElibovu iqhudeElibovu1 = IqhudeElibovu();
    iqhudeElibovu1.part = 'Heart';
    animals.add(iqhudeElibovu1);

    IqhudeElibovu iqhudeElibovu2 = IqhudeElibovu();
    iqhudeElibovu2.part = 'Heart';
    animals.add(iqhudeElibovu2);

    IqhudeElibovu iqhudeElibovu3 = IqhudeElibovu();
    iqhudeElibovu3.part = 'Heart';
    animals.add(iqhudeElibovu3);

    Iskhova iskhova = Iskhova();
    iskhova.part = 'Oil';
    animals.add(iskhova);

    Ingungumbane ingungumbane = Ingungumbane();
    ingungumbane.part = 'Oil';
    animals.add(ingungumbane);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMotengantshontshwa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMotengantshontshwa[languageIndex];
  }
  
}

class Mfonele extends Umuthi{
  
  Mfonele(int languageIndex, {forGoodUse =true}):
  super('Motengantshontshwa',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?150:340;
    
    amakhubalo.add(Isphahluka());
    amakhubalo.add(Umayisaka('red'));
    amakhubalo.add(Mlomomnandi());
    Indungulu indungulu = Indungulu();
    indungulu.description = 'Kancane';
    amakhubalo.add(indungulu);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMfonele[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMfonele[languageIndex];
  }
  
}

class Osheshachame extends Umuthi{
  
  Osheshachame(int languageIndex, {forGoodUse =true}):
  super('Osheshachame',
  languageIndex){
    Owner ntshangase = Owner("Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?220:350;
    
    amakhubalo.add(Uqonsi());
    amakhubalo.add(Bangalala());
    amakhubalo.add(Umathunga());
    amakhubalo.add(Inkomfe());
    amakhubalo.add(Umdubu());
    Solo solo = Solo();
    solo.description = 'Kancane';
    amakhubalo.add(solo);
    Maguqu umaguqu = Maguqu();
    umaguqu.description = 'Kancane';
    amakhubalo.add(umaguqu);
    Intuma intuma = Intuma();
    intuma.description = 'Igaqa Nezinhlamvu';
    amakhubalo.add(intuma);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaOsheshachame[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.chathaMuthiDirections[languageIndex];
  }
  
}

class Hlanzisinya extends Umuthi{
  
  Hlanzisinya(int languageIndex, {forGoodUse =true}):
  super('Hlanzisinya',
  languageIndex){
    Owner ebhizana = Owner("Khemesi", "Bizana", true);
    owner = ebhizana;
    
    price = Platform.isAndroid?200:500;

    Imfene imfene = Imfene();
    imfene.part = 'Umchamo';
    animals.add(imfene);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaHlanzisinya[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class Khulelwa extends Umuthi{
  
  Khulelwa(int languageIndex, {forGoodUse =true}):
  super('Khulelwa',
  languageIndex){
    Owner mkhuluZikhali = Owner("Lwandile Ganyile", "Mlazi H Ko3", true);
    owner = mkhuluZikhali;
    
    price = Platform.isAndroid?285:430;

    amakhubalo.add(UhlamvuLomfana());
    amakhubalo.add(UhlamvuLomfana());
    Umlunge umlunge = Umlunge();
    umlunge.description = 'Kancane';
    amakhubalo.add(umlunge);

    extras.add('Izindlubu');
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaKhulelwa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class OwamaUlcer extends Umuthi{
  
  OwamaUlcer(int languageIndex, {forGoodUse =true}):
  super('OwamaUlcer',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:430;

    amakhubalo.add(Ishlehle());
    amakhubalo.add(Umathanjana());
    amakhubalo.add(Umdladlatho());
    amakhubalo.add(Isbhaka());

    extras.add('Isbabuli');
    extras.add('Umanyazini');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaKhulelwa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseOwamaUlcer[languageIndex];
  }
  
}

class Pholisazilonda extends Umuthi{
  
  Pholisazilonda(int languageIndex, {forGoodUse =true}):
  super('Pholisazilonda',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:430;

    amakhubalo.add(Unsukumbili());
    amakhubalo.add(Umlulama());
    amakhubalo.add(Unwele());
    amakhubalo.add(Insangu());
    amakhubalo.add(Inguduza());
    amakhubalo.add(Ibohlololo());
    amakhubalo.add(Icucudwane());
    amakhubalo.add(Isphahluluka());
    amakhubalo.add(Uqonsi());
    amakhubalo.add(Umahlabekufeni());
    amakhubalo.add(Iningizimu());
    amakhubalo.add(Umsuzwane());
    

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaPholisazilonda[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class Qedibhande extends Umuthi{
  
  Qedibhande(int languageIndex, {forGoodUse =true}):
  super('Qedibhande',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?500:750;

    amakhubalo.add(Untongazizibo());
    amakhubalo.add(Imvana());
    Impindamshaye impindamshaye = Impindamshaye();
    impindamshaye.description = 'Kuthiwe \'Impinda Ebovu\'. Angazi Noma Impinda Bathakathi Noma Impindamshaye.';
    amakhubalo.add(impindamshaye);
    amakhubalo.add(Usphondo());
    Ilabatheka ilabatheka = Ilabatheka(true);
    ilabatheka.description = 'Insizi, Akushiwongo Liphi Ilabatheka.';
    amakhubalo.add(ilabatheka);
    amakhubalo.add(Inhlaba());

    extras.add('Ihanatira Ewujeri');

    Inhloli inhloli = Inhloli();
    inhloli.part = 'Oil';
    animals.add(inhloli);

    Inhlwathi inhlwathi = Inhlwathi();
    inhlwathi.part = 'Oil';
    animals.add(inhlwathi);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedibhande[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseQedibhande[languageIndex];
  }
  
}

class IsibungeSomsebenzi extends Umuthi{
  
  IsibungeSomsebenzi(int languageIndex, {forGoodUse =true}):
  super('Isibunge Somsebenzi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?500:350;

    amakhubalo.add(Ivulandlela());
    Umphumeleli umphumeleli = Umphumeleli();
    umphumeleli.description = 'Kubhalwe Ukuthi Umpumelelo Ebhukwini';
    amakhubalo.add(umphumeleli);
    Iwozawoza iwozawoza = Iwozawoza();
    iwozawoza.description = 'Ikhubalo';
    amakhubalo.add(iwozawoza);
    amakhubalo.add(Abaxokozeli());

    InkukhuYamaqanda inkukhu = InkukhuYamaqanda();
    inkukhu.part = 'Amafutha';
    animals.add(inkukhu);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaIsibungeSomsebenzi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseIsibungeSomsebenzi[languageIndex];
  }
  
}

class Qedazintwala extends Umuthi{
  
  Qedazintwala(int languageIndex, {forGoodUse =true}):
  super('Qedazintwala',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:350;

    amakhubalo.add(Maphipha());

    extras.add('Cutty Cura');
    extras.add('Coca Cola');
    extras.add('Black Vinegar Teaspoon');
    extras.add('Isneff');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedazintwala[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseQedazintwala[languageIndex];
  }
  
}

class Bulalalumbo extends Umuthi{
  
  Bulalalumbo(int languageIndex, {forGoodUse =true}):
  super('Bulalalumbo',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?900:1550;

    extras.add('Sbabuli');
    extras.add('Blue Stone');
    extras.add('Alarm Kancane');
    extras.add('sbibsekula'); // ????????????????????

    amakhubalo.add(Isdikili());
    amakhubalo.add(Ikhathaza());
    amakhubalo.add(Umahlabekufeni());
    amakhubalo.add(Isbhaha());

    Inkawu inkawu = Inkawu();
    inkawu.part = 'Amasende';
    animals.add(inkawu);

    Inyathi inyathi = Inyathi();
    inyathi.part = 'Inyongo';
    animals.add(inyathi);

    Imvukuzane imvukuzane = Imvukuzane();
    animals.add(imvukuzane);

    Imbila imbila = Imbila();
    animals.add(imbila);

    Imfezi imfezi = Imfezi();
    animals.add(imfezi);

    Inhlwathi inhlwathi = Inhlwathi();
    animals.add(inhlwathi);

    Imamba imamba1 = Imamba(umbala:'Black');
    animals.add(imamba1);

    Imamba imamba2 = Imamba(umbala:'Green');
    animals.add(imamba2);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBulalalumbo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBulalalumbo[languageIndex];
  }
  
}

class Mthondwehhashi extends Umuthi{
  
  Mthondwehhashi(int languageIndex, {forGoodUse =true}):
  super('Mthondwehhashi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:350;

    extras.add('Iblue Sean Uvaselina');

    amakhubalo.add(Umlulama());
    amakhubalo.add(Umvongothi());
    amakhubalo.add(Uqhume());
    amakhubalo.add(Umthweshu());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMthondowehhashi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMthondowehhashi[languageIndex];
  }
  
}

class Mawuyitoho extends Umuthi{
  
  Mawuyitoho(int languageIndex, {forGoodUse =true}):
  super('Mawuyitoho',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?350:550;

    amakhubalo.add(Uzikhundla());
    amakhubalo.add(Umganu());
    amakhubalo.add(Umhlala());
    amakhubalo.add(InkononoEbovu());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMawuyitoho[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phalazaMuthiDirections[languageIndex];
  }
  
}

class Vulasfuba extends Umuthi{
  
  Vulasfuba(int languageIndex, {forGoodUse =true}):
  super('Vulasfuba',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?300:450;

    amakhubalo.add(Hlabamamponjwana());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaVulasfuba[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseVulasfuba[languageIndex];
  }
  
}

class Uhlezekhathele extends Umuthi{
  
  Uhlezekhathele(int languageIndex, {forGoodUse =true}):
  super('Uhlezekhathele',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:350;

    amakhubalo.add(Unsukumbili());
    amakhubalo.add(Inkomfe());
    Ugobho ugobho = Ugobho();
    ugobho.description = 'Kancane';
    amakhubalo.add(ugobho);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUhlezekhathele[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseUhlezekhathele[languageIndex];
  }
  
}

class Ugezinkomo extends Umuthi{
  
  Ugezinkomo(int languageIndex, {forGoodUse =true}):
  super('Ugezinkomo',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:430;

    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Ishaqa());
    amakhubalo.add(Umnandinoveshe());
    amakhubalo.add(Umondi());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUgezinkomo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseUgezinkomo[languageIndex];
  }
  
}

class Yekisiwunga extends Umuthi{
  
  Yekisiwunga(int languageIndex, {forGoodUse =true}):
  super('Yekisiwunga',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?325:590;

    amakhubalo.add(Umathithibala ());
    amakhubalo.add(Umabopha());
    amakhubalo.add(Isphahluluka());
    amakhubalo.add(Umlahlankosi());
    amakhubalo.add(Icishamlilo());
    amakhubalo.add(Umadlozane());
    amakhubalo.add(Isiqunga());
    Unukani unukani = Unukani(true);
    unukani.description = 'Akucaciswanga ukuthi imuphi unukani';
    amakhubalo.add(unukani);
    amakhubalo.add(Umsasane());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Ithombonkala());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaYekisiwunga[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseYekisiwunga[languageIndex];
  }
  
}

class Ngavalwa extends Umuthi{
  
  Ngavalwa(int languageIndex, {forGoodUse =true}):
  super('Ngavalwa',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?265:475;

    amakhubalo.add(Umzaneno());
    amakhubalo.add(Untumbadlozi());
    amakhubalo.add(Umalibuye());
    amakhubalo.add(Umabuya());
    amakhubalo.add(Ummemezi(umbala:'Omhlophe'));
    amakhubalo.add(Umadlozane());
    amakhubalo.add(UvumaOmhlophe());
    Inhlambamanzi umhlambamanzi =Inhlambamanzi();
    umhlambamanzi.description = 'omhlophe wamanzi';
    amakhubalo.add(umhlambamanzi);
    Umwelela umwelela = Umwelela();
    umwelela.description = 'wamanzi';
    amakhubalo.add(umwelela);
    amakhubalo.add(Mazulazayithole());
    amakhubalo.add(Umlahlankosi());

    amakhubalo.add(Hlabazihlangane());
    Iphamba iphamba = Iphamba();
    iphamba.description = 'Elomlahlankosi';
    amakhubalo.add(iphamba);
    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Umqalothi());
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Udumaphansi());
    Uqhume uqhume = Uqhume();
    uqhume.description = 'Umfazothethayo';
    amakhubalo.add(uqhume);

    extras.add('3 Yellow Candles');
    extras.add('3 Blue Candles');
    extras.add('3 Green Candles');
    extras.add('3 White Candles');
    extras.add('1 Red Candle');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNgavalwa[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseNgavalwa[languageIndex];
  }
  
}

class Ndukengami extends Umuthi{
  
  Ndukengami(int languageIndex, {forGoodUse =true}):
  super('Ndukengami',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?265:455;

    amakhubalo.add(Udlutshani());
    amakhubalo.add(Icubudwane());
    amakhubalo.add(Uqonsi());
    amakhubalo.add(Umasethole());
    Intuma intuma = Intuma();
    intuma.description = 'Izimpande';
    amakhubalo.add(intuma);
    amakhubalo.add(Bangalala());
    amakhubalo.add(Umathendele());
    amakhubalo.add(Inguduza());
    amakhubalo.add(Umathanjana());
    amakhubalo.add(Umasendenja());
    amakhubalo.add(Inkomfe());
    Unwele unwele = Unwele();
    unwele.description = 'Kubhalwe Unwele Lomlungu';
    amakhubalo.add(unwele);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaNdukengami[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class Wisanduku extends Umuthi{
  
  Wisanduku(int languageIndex, {forGoodUse =true}):
  super('Wisanduku',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?265:595;

    amakhubalo.add(Umavumbuka());
    amakhubalo.add(Ibohlololo());
    Banana banana = Banana();
    banana.description = 'Ikhasi';
    amakhubalo.add(banana);
    amakhubalo.add(Umasethole());
    Intuma intuma = Intuma();
    intuma.description = 'Izimpande';
    amakhubalo.add(intuma);
    amakhubalo.add(Ihluze());
    amakhubalo.add(Umdlavuza());
    amakhubalo.add(Ingwavuma());
    amakhubalo.add(Umathanjana());

    Imbulu imbulu = Imbulu();
    imbulu.part = 'Oil';
    animals.add(imbulu);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWisanduku[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseWisanduku[languageIndex];
  }
  
}

class Mthintabemanzi extends Umuthi{
  
  Mthintabemanzi(int languageIndex, {forGoodUse =true}):
  super('Mthintabemanzi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?425:600;
  
    amakhubalo.add(Uvutha());
    amakhubalo.add(Umathinta());
    amakhubalo.add(Ilukuluku());
    amakhubalo.add(Udumbakasbumbu());
    amakhubalo.add(Ihlalanyosi());
    amakhubalo.add(Umayisaka('Red'));
    amakhubalo.add(Uzeneke());

    Imvubu imvubu = Imvubu();
    imvubu.part = 'Oil';
    animals.add(imvubu);

    Inkwe inkwe = Inkwe();
    inkwe.part = 'Left Hand';
    animals.add(inkwe);

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMthintabemanzi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseMthintabemanzi[languageIndex];
  }
  
}

class Xoshaskhova extends Umuthi{
  
  Xoshaskhova(int languageIndex, {forGoodUse =true}):
  super('Xoshaskhova',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?165:350;

    amakhubalo.add(Umzunywa());
    amakhubalo.add(Umhlakaza());
    amakhubalo.add(Umfusamvu());

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaXoshaskhova[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseXoshaskhova[languageIndex];
  }
  
}

class Gadamoto extends Umuthi{
  
  Gadamoto(int languageIndex, {forGoodUse =true}):
  super('Gadamoto',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?480:780;
    /*ikhathaza, unkungwini, umathithibala, ilabatheka, umlahleni, sehlulamanye, impila, umgadankawu, tikoloshe oil, bhubesi oil, instr: kugaye kube  fine ukufake ebhodleleni elizolenga esibukweni semoto */
    amakhubalo.add(Ikhathaza());
    amakhubalo.add(Unkungwini());
    amakhubalo.add(Umathithibala());
    amakhubalo.add(Ilabatheka(true));
    amakhubalo.add(Umlahleni());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Impila());
    amakhubalo.add(Umgadankawu());

    Tikoloshe tikoloshe = Tikoloshe();
    tikoloshe.part = 'Oil';
    animals.add(tikoloshe);

    Ibhubesi bhubesi = Ibhubesi();
    bhubesi.part = 'Oil';
    animals.add(bhubesi);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaGadamoto[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseGadamoto[languageIndex];
  }
  
}

class Ngiyafunwa extends Umuthi{
  
  Ngiyafunwa(int languageIndex, {forGoodUse =true}):
  super('Ngiyafunwa',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?220:450;
    /*ikhathaza, unkungwini, umathithibala, ilabatheka, umlahleni, sehlulamanye, impila, umgadankawu, tikoloshe oil, bhubesi oil, instr: kugaye kube  fine ukufake ebhodleleni elizolenga esibukweni semoto */
    amakhubalo.add(Unkungwini());
    amakhubalo.add(Umpikayiboni());
    amakhubalo.add(Impishimpishi());
    amakhubalo.add(Phindemva());
    Impindamshaye impindamshaye = Impindamshaye();
    impindamshaye.description = 'Emnyama';
    amakhubalo.add(impindamshaye);
    amakhubalo.add(Isbhaha());
    amakhubalo.add(Ugodide());
    amakhubalo.add(Ujundumlahleni());

    Umkhovu mkhovu = Umkhovu();
    mkhovu.part = 'Oil';
    animals.add(mkhovu);

    Phane phane = Phane();
    phane.part = 'Oil';
    animals.add(phane);

    Inyengelezi nyengelezi = Inyengelezi();
    nyengelezi.part = 'Oil';
    animals.add(nyengelezi);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaGadamoto[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseGadamoto[languageIndex];
  }
  
}

class GovuEladlumthakathi extends Umuthi{
  
  GovuEladlumthakathi(int languageIndex, {forGoodUse =true}):
  super('GovuEladlumthakathi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?550:860;

    amakhubalo.add(Ilukuluku());
    amakhubalo.add(Isbhaha());
    amakhubalo.add(Umhlahlo());

    extras.add('Impande Nomangabe Eyani Eyeqiwa Endleleni.');
    extras.add('Izinsila Zabantu Balapha Ekhaya');

    Ufezela ufezela = Ufezela();
    ufezela.part = 'Umzimba Wonke';
    animals.add(ufezela);

    Inqe inqe = Inqe();
    inqe.part = 'Ikhanda';
    animals.add(inqe);

    Insele insele = Insele();
    insele.part = 'Isikhumba';
    animals.add(insele);

    Insuze insuze = Insuze();
    insuze.part = 'Ikhanda';
    animals.add(insuze);

    Imamba imamba = Imamba();
    imamba.description = 'Akucaciswanga Enjani Kodwa Kuthiwe Eyabafazi';
    imamba.part = 'Ikhanda';
    animals.add(imamba);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaGovuEladlumthakathi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseGovuEladlumthakathi[languageIndex];
  }
  
}

class Ungathakatheki extends Umuthi{
  
  Ungathakatheki(int languageIndex, {forGoodUse =true}):
  super('Ungathakatheki',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?550:780;

    amakhubalo.add(Indluyabaloyi());
    amakhubalo.add(Intwalubombo());
    amakhubalo.add(Umabopha());
    amakhubalo.add(Uzifele());
    amakhubalo.add(Umthathe());
    amakhubalo.add(Sehlulamanye());
    amakhubalo.add(Umakotogayile());
    amakhubalo.add(Undiyaza());
    amakhubalo.add(Umankunkunku());
    amakhubalo.add(Umgogi());
    amakhubalo.add(Umphenduli());
    amakhubalo.add(Umnyamathi());

    Imamba imamba = Imamba(umbala:'Black');
    imamba.part = 'Ikhanda';
    animals.add(imamba);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaUngathakatheki[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseUngathakatheki[languageIndex];
  }
  
}

class Bambiswane extends Umuthi{
  
  Bambiswane(int languageIndex, {forGoodUse =true}):
  super('Bambislwane',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?350:560;

    Umathithibala umathithibala1 = Umathithibala();
    umathithibala1.description = 'Omncane';
    amakhubalo.add(umathithibala1);
    Umathithibala umathithibala2 = Umathithibala();
    umathithibala2.description = 'Omkhulu';
    amakhubalo.add(umathithibala2);
    
    Iphamba iphamba1 = Iphamba();
    iphamba1.description = 'Elincane';
    amakhubalo.add(iphamba1);

    Iphamba iphamba2 = Iphamba();
    iphamba2.description = 'Elikhulu';
    amakhubalo.add(iphamba2);

    amakhubalo.add(Ingevu());
    amakhubalo.add(Mayime());
    amakhubalo.add(Insulansula());
    amakhubalo.add(Ugibeleweni());
    amakhubalo.add(Dakwa());
    amakhubalo.add(Uslepe());


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBambislwane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBambiswane[languageIndex];
  }
  
}

class Bhekwayidlozi extends Umuthi{
  
  Bhekwayidlozi(int languageIndex, {forGoodUse =true}):
  super('Bhekwayidlozi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?175:375;

    amakhubalo.add(Umadlozane());
    amakhubalo.add(Ubhubhubhu());
    amakhubalo.add(Umthole());
    Ugagane ugagane = Ugagane();
    ugagane.part = 'Roots';
    amakhubalo.add(ugagane);
    amakhubalo.add(Ungibonisele());
    amakhubalo.add(Umlulama());


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaBhekwayidlozi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseBhekwayidlozi[languageIndex];
  }
  
}

class Tholokufunayo extends Umuthi{
  
  Tholokufunayo(int languageIndex, {forGoodUse =true}):
  super('Tholokufunayo',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?175:350;

    Amabhimbi amabhimbi = Amabhimbi();
    amabhimbi.part = 'Roots';
    amabhimbi.description = 'uphatha ushimi ngengabe uyozikha uyazicela';
    amakhubalo.add(amabhimbi);


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaTholokufunayo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseTholokufunayo[languageIndex];
  }
  
}

class Qedaslumo extends Umuthi{
  
  Qedaslumo(int languageIndex, {forGoodUse =true}):
  super('Qedaslumo',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?160:320;

    Imfene imfene = Imfene();
    imfene.part = 'Umchamo';
    animals.add(imfene);

    extras.add('adco-mefenamic acid 250mg');


  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedaslumo[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaOnlyMuthiDirections[languageIndex];
  }
  
}

class Zwakalekhaya extends Umuthi{
  
  Zwakalekhaya(int languageIndex, {forGoodUse =true}):
  super('Zwakalekhaya',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?160:340;

    amakhubalo.add(Umabusane());
    amakhubalo.add(Mlomomnandi());
    amakhubalo.add(Umazwahlabayo());
    amakhubalo.add(Uzigizendoda());
    Indabulaluvalo indabulaluvalo = Indabulaluvalo();
    indabulaluvalo.description = 'Ewuhasha';
    amakhubalo.add(indabulaluvalo);
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaZwakalekhaya[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseZwakalekhaya[languageIndex];
  }
  
}

class Zingaphakathi extends Umuthi{
  
  Zingaphakathi(int languageIndex, {forGoodUse =true}):
  super('Zingaphakathi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:450;

    amakhubalo.add(Unsukumbili());
    amakhubalo.add(Maphipha());
    amakhubalo.add(Ilabatheka(false));
    amakhubalo.add(Ishaqa());
    amakhubalo.add(Umonti());
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaZingaphakathi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseZingaphakathi[languageIndex];
  }
  

}

class Shelenezizwe extends Umuthi{
  
  Shelenezizwe(int languageIndex, {forGoodUse =true}):
  super('Shelenezizwe',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:455;

    Umsilinga umsilinga = Umsilinga();
    umsilinga.part = 'Izimpande';
    amakhubalo.add(umsilinga);
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaShelenezizwe[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phalazaMuthiDirections[languageIndex];
  }
  
}

class Lahliswane extends Umuthi{
  
  Lahliswane(int languageIndex, {forGoodUse =true}):
  super('Lahliswane',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?650:995;

    amakhubalo.add(Umhlakaza()); amakhubalo.add(Phindemva()); amakhubalo.add(Umganu());
    amakhubalo.add(Ugodide()); amakhubalo.add(Impindamshaye()); amakhubalo.add(Isgqikisomkhovu());
    amakhubalo.add(Umvithi()); amakhubalo.add(Udabulamafu()); amakhubalo.add(Umlahleni());
    amakhubalo.add(Imboziso()); amakhubalo.add(Umthunyelelwa()); amakhubalo.add(Isdikili());
    amakhubalo.add(Ubulibazi()); amakhubalo.add(Umthunyelelwa()); amakhubalo.add(Ugekho());

    amakhubalo.add(Umlulama()); amakhubalo.add(Umanzamnyama()); amakhubalo.add(Umagwazucaca());
    amakhubalo.add(Ilabatheka(true)); amakhubalo.add(Uvimbukhalo()); amakhubalo.add(Umsuzwane());
    amakhubalo.add(Umthathe()); amakhubalo.add(Undodemnyama());
     
    amakhubalo.add(Umnyamathi()); amakhubalo.add(Unkungwini()); amakhubalo.add(Ugezamashwa());
    amakhubalo.add(Impila()); amakhubalo.add(Ikhathaza()); amakhubalo.add(Maphipha());
    amakhubalo.add(Sehlulamanye()); amakhubalo.add(Isbhaka()); amakhubalo.add(Umthwebulo());
    Unukani unukani = Unukani(true); Umayisaka umayisaka = Umayisaka('Black'); amakhubalo.add(Ingwavuma());
    unukani.description = 'Akucaciswanga'; umayisaka.description = 'Black Or Red';
    amakhubalo.add(unukani); amakhubalo.add(umayisaka);

    Inkukhu inkukhu = Inkukhu(umbala:'Emnyama');
    inkukhu.part = 'Inyongo, Igazi Kanye Nomswane';
    animals.add(inkukhu);

    extras.add('Ikhandlela Elibovu Elinezinaliti');

  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaLahliswane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseLahliswane[languageIndex];
  }
  
}

class Qedisayinasi extends Umuthi{
  
  Qedisayinasi(int languageIndex, {forGoodUse =true}):
  super('Qedisayinasi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?200:450;

    amakhubalo.add(Ikhathaza());
    Isbhaha isbhaha = Isbhaha();
    isbhaha.description = 'Kancane';
    amakhubalo.add(isbhaha);
    amakhubalo.add(Ukalumuzi());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaQedisayinasi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phalazaMuthiDirections[languageIndex];
  }
  
}

/////////////////////////Add All Below Products////////////////////////

class Wonomkhuhlane extends Umuthi{
  
  Wonomkhuhlane(int languageIndex, {forGoodUse =true}):
  super('Wonomkhuhlane',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?120:150;

    amakhubalo.add(Umhlonyane());
    amakhubalo.add(Isbhaha());
    amakhubalo.add(Ukalumuzi());

    extras.add('Lamon');
    extras.add('Ginger');
    extras.add('Garlic');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWonomkhuhlane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Khiphasnyama extends Umuthi{
  
  Khiphasnyama(int languageIndex, {forGoodUse =true}):
  super('Khiphasnyama',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?220:320;

    Umathunzentaba umathunzentaba = Umathunzentaba();
    umathunzentaba.description = 'Step 1 - Uqale Usebenzise Yona Kanye Nempindamshaye(3 days gquma, geza, phalaza)';
    amakhubalo.add(umathunzentaba);
    Impindamshaye impindamshaye = Impindamshaye();
    impindamshaye.description = 'Step 1 - Uqale Usebenzise Yona Kanye Nomathunzentaba(3 days gquma, geza, phalaza)';
    Inhlanhlemhlophe inhlanhlemhlophe = Inhlanhlemhlophe();
    inhlanhlemhlophe.description = 'Step 2 - Usebenzisa Lomuthi, ubhubhubhu, ibuya, izimpande zogagane(5 days gquma, geza, phalaza)';
    amakhubalo.add(inhlanhlemhlophe);
    Ubhubhubhu ubhubhubhu = Ubhubhubhu();
    ubhubhubhu.description = 'Step 2 - Usebenzisa Lomuthi, inhlanhlemhlophe, ibuya, izimpande zogagane(5 days gquma, geza, phalaza)';
    amakhubalo.add(ubhubhubhu);
    Ugagane ugagane = Ugagane();
    ugagane.part = 'roots';
    ugagane.description = 'Step 2 - Usebenzisa Lomuthi, inhlanhlemhlophe, ibuya, ubhubhubhu(5 days gquma, geza, phalaza)';
    amakhubalo.add(ugagane);
    Ibuya ibuya = Ibuya();
    ibuya.description = 'Step 2 - Usebenzisa Lomuthi, inhlanhlemhlophe, izimpande zogagane, ubhubhubhu(5 days gquma, geza, phalaza)';
    amakhubalo.add(ibuya);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaKhiphasnyama[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Gadamfazi extends Umuthi{
  
  Gadamfazi(int languageIndex, {forGoodUse =true}):
  super('Gadamfazi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?450:750;

    amakhubalo.add(Umalala());
    amakhubalo.add(Ikhathaza());
    amakhubalo.add(Icishamlilo());
    amakhubalo.add(Umsilawengwe());

    extras.add('Inhlabathi Yemvukuzane');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWonomkhuhlane[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Mvusankunzi extends Umuthi{
  
  Mvusankunzi(int languageIndex, {forGoodUse =true}):
  super('Mvusankunzi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?560:750;

    amakhubalo.add(Uqonsi());
    amakhubalo.add(Bangalala());
    amakhubalo.add(Umfusamvu());
    amakhubalo.add(Udlutshani());
    Uphondolukabhejane uphondolukabhejane = Uphondolukabhejane();
    uphondolukabhejane.description = 'Lona Oyikhubalo';
    amakhubalo.add(uphondolukabhejane);
    amakhubalo.add(Umayihlanganise());
    amakhubalo.add(Uhlozafukwe());
    amakhubalo.add(Umsilawengwe());

    Inkomo inkomo = Inkomo();
    inkomo.description = 'Inkonyane';
    inkomo.part = 'Idolo Nomqathe';
    animals.add(inkomo);

    Imbabala imbabala = Imbabala();
    imbabala.part = 'Ipipi';
    animals.add(imbabala);

    Impala impala = Impala();
    impala.part ='Ipipi';
    animals.add(impala);

    
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaMvusankunzi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.phuzaChathaMuthiDirections[languageIndex];
  }
  
}

class DoublePay extends Umuthi{
  
  DoublePay(int languageIndex, {forGoodUse =true}):
  super('DoublePay',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?450:750;

    amakhubalo.add(Umathithibala());
    amakhubalo.add(Umabopha());
    amakhubalo.add(Ikhathaza());
    amakhubalo.add(Nginakile());
    amakhubalo.add(Inkomankoma());
    amakhubalo.add(Ishoshozela());
    amakhubalo.add(Undlelazimhlophe());
    amakhubalo.add(Umlandeni());
    amakhubalo.add(Inhlungunyembe());

    extras.add('Umlotha We-Payslip Yakho Endala, Bhala Igama Lenkampane.');
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaDoublePay[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  
}

class Hleziqaphile extends Umuthi{
  
  Hleziqaphile(int languageIndex, {forGoodUse =true}):
  super('Hleziqaphile',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?550:750;

    amakhubalo.add(Uzifele());
    amakhubalo.add(Uphunyukabemphethe());
    amakhubalo.add(Isbhaha());
    amakhubalo.add(Indabulaluvalo());

    extras.add('Ukhamba Oluqhephukile');
    
    Ijuba ijuba = Ijuba();
    ijuba.part = 'Iqanda';
    animals.add(ijuba);

    Umzwili umzwili = Umzwili();
    umzwili.part = 'ikhanda';
    animals.add(umzwili);

    Unwabu unwabu = Unwabu();
    unwabu.part = 'Amehlo';
    animals.add(unwabu);

    Ibhubesi ibhubesi = Ibhubesi();
    ibhubesi.part = 'Oil';
    animals.add(ibhubesi);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaHlezuqaphile[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaPhalazaMuthiDirections[languageIndex];
  }
  

}

class Wenkanuko extends Umuthi{
  
  Wenkanuko(int languageIndex, {forGoodUse =true}):
  super('Wenkanuko',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?350:450;

    amakhubalo.add(Isnama());
    amakhubalo.add(Unkanuko());

    
    Indlovu indlovu = Indlovu();
    indlovu.part = 'Umsunu';
    animals.add(indlovu);
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaWenkanuko[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.howToUseWenkanuko[languageIndex];
  }
  

}

class Hlambululidlozi extends Umuthi{
  
  Hlambululidlozi(int languageIndex, {forGoodUse =true}):
  super('Hlambululidlozi',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?350:450;

    Umlahlankosi umphafa = Umlahlankosi();
    umphafa.part = 'Roots';
    amakhubalo.add(umphafa);
    amakhubalo.add(Umganu());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaHlambululidlozi[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gqumaGezaMuthiDirections[languageIndex];
  }
  

}

class Vulezakho extends Umuthi{
  
  Vulezakho(int languageIndex, {forGoodUse =true}):
  super('Vulezakho',
  languageIndex){
    Owner ntshangase = Owner("Mdu Ntshangase", "Mlazi DX1", true);
    owner = ntshangase;
    
    price = Platform.isAndroid?350:450;

    Unukani unukani = Unukani(false);
    unukani.description ='Akucaciswanga';
    amakhubalo.add(unukani);
    amakhubalo.add(Mavulakuvaliwe());
    amakhubalo.add(Ifembo());
    
  }

  @override
  List<String> findPurpose() {
    return [ProductResultLanguage.imiphumelaVulezakho[languageIndex]];
  }

  @override
  String howToUse() {
    return HowToUseLanguage.gezaPhalazaMuthiDirections[languageIndex];
  }
  

}
