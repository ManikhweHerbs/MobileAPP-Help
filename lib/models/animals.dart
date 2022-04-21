import '../Ingredient.dart';

abstract class Animal extends Ingredient{

  Set<String> animalBehavior = {};
  String zuluName;
  

  Animal(this.zuluName):super(part:'Umzimba Wonke'){
    addAnimalBehavior();
    addAnimalNames();
  }

  Map<String, dynamic> toMap() {
    return {
      'animal__names ': names,
      'animal_part ': part,
      'animal_behavior ': animalBehavior,
      'animal_description ' : description
    };
  }

  void addAnimalBehavior();
  void addAnimalNames();
}

class Umnyovu extends Animal{
  Umnyovu():super('Umnyovu');

  void addAnimalBehavior(){
    animalBehavior.add('Uyatinyela');
    animalBehavior.add('Uyanakana Noma Uwuphebeza Awuhambi Uloku Ulana');
  }

  void addAnimalNames(){
    names['English'] = 'Wasp';
    names['Xhosa'] = 'Unomeva';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = 'Bobi';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = 'La guêpe';
    names['Spanish'] = 'La avispa';
    
  }
}

class Ulamthuthu extends Animal{
  Ulamthuthu():super('Ulamthuthu');

  void addAnimalBehavior(){
    animalBehavior.add('Uyathithiza');
    
  }

  void addAnimalNames(){
    names['English'] = 'Hen';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class InkanyeziYolwandle extends Animal{
  InkanyeziYolwandle():super('InkanyeziYolwandle');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Star Fish';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inhlwathi extends Animal{
  Inhlwathi():super('Inhlwathi');

  void addAnimalBehavior(){
    animalBehavior.add('Iyazelapha Umangabe Ilimele');
    
  }

  void addAnimalNames(){
    names['English'] = 'Anaconda';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imvubu extends Animal{
  Imvubu():super('Imvubu');

  void addAnimalBehavior(){
    animalBehavior.add('Iyadonsa');
    
  }

  void addAnimalNames(){
    names['English'] = 'Hippo';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imamba extends Animal{
  String umbala='Akucaciswanga';
  Imamba({String? umbala}):super('Imamba');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Mamba';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ndlulamithi extends Animal{
  Ndlulamithi():super('Ndlulamithi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Giraffe';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Umneke extends Animal{
  Umneke():super('Umneke');

  void addAnimalBehavior(){
    animalBehavior.add('Uyanyanyisa');
    animalBehavior.add('Uhamba Kancane');
    
  }

  void addAnimalNames(){
    names['English'] = 'Snail';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ibululu extends Animal{
  Ibululu():super('Ibululu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Puff Adder';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imfene extends Animal{
  Imfene():super('Imfene');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Baboon';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Impunzi extends Animal{
  Impunzi():super('Impunzi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Buck';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inyengelezi extends Animal{
  Inyengelezi():super('Inyengelezi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'African Striped Weasel';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imbuzi extends Animal{
  Imbuzi():super('Imbuzi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Goat';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ihhashi extends Animal{
  Ihhashi():super('Ihhashi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Horse';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Umkhovu extends Animal{
  Umkhovu():super('Umkhovu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Tikoloshe extends Animal{
  Tikoloshe():super('Tikoloshe');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ingwe extends Animal{
  Ingwe():super('Ingwe');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Leopard';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Iskhova extends Animal{
  Iskhova():super('Iskhova');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Owl';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Cobra extends Animal{
  Cobra():super('Cobra');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Cobra';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Iselesele extends Animal{
  Iselesele():super('Iselesele');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Frog';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Izinyosi extends Animal{
  Izinyosi():super('Izinyosi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Bees';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Izibonkolo extends Animal{
  Izibonkolo():super('Izibonkolo');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Ants';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ikati extends Animal{
  Ikati():super('Ikati');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Cat';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class IqhudeElibovu extends Animal{
  IqhudeElibovu():super('IqhudeElibovu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Red Rooster';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ingungumbane extends Animal{
  Ingungumbane():super('Ingungumbane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Cape Porcupine';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Isphikeleli extends Animal{
  Isphikeleli():super('Isphikeleli');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = 'Pygmy Kingfisher';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}
//////////////////////////Images For All The Above Animals Have Been Collected/////////////////////////////
class Umantindane extends Animal{
  Umantindane():super('Umantindane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Indlovu extends Animal{
  Indlovu():super('Indlovu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ufudu extends Animal{
  Ufudu():super('Ufudu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Umkhoma extends Animal{
  Umkhoma():super('Umkhoma');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inyathi extends Animal{
  Inyathi():super('Inyathi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ibhubesi extends Animal{
  Ibhubesi():super('Ibhubesi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Inkosazane extends Animal{
  Inkosazane():super('Inkosazane'){
    part = 'Oil';
  }

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class SpantshFly extends Animal{
  SpantshFly():super('Inkosazane'){
    part = 'Oil';
  }

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ukhozi extends Animal{
  Ukhozi():super('Ukhozi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Umathananazane extends Animal{
  Umathananazane():super('Umathananazane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Phiyano extends Animal{
  Phiyano():super('Phiyano');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Mhlakuva extends Animal{
  Mhlakuva():super('Mhlakuva');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Nkwazi extends Animal{
  Nkwazi():super('Nkwazi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Nkosiyezinyosi extends Animal{
  Nkosiyezinyosi():super('Nkosiyezinyosi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inhloli extends Animal{
  Inhloli():super('Inhloli');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ubhejane extends Animal{
  Ubhejane():super('Ubhejane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imbabala extends Animal{
  Imbabala():super('Imbabala');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ingulube extends Animal{
  Ingulube():super('Ingulube');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inja extends Animal{
  Inja():super('Inja');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ingwenya extends Animal{
  Ingwenya():super('Ingwenya');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class Mthini extends Animal{
  Mthini():super('Mthini');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Lesi Isihlahla Akusona Islwane
class ImbabazaneAnimal extends Animal{
  ImbabazaneAnimal():super('Imbabazane Animal');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

// Images Not Available
class UmbuneAnimal extends Animal{
  UmbuneAnimal():super('Umbune Animal');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Impangele extends Animal{
  Impangele():super('Impangele');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Isambane extends Animal{
  Isambane():super('Isambane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inqe extends Animal{
  Inqe():super('Inqe');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Igwababa extends Animal{
  Igwababa():super('Igwababa');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ihansi extends Animal{
  Ihansi():super('Ihansi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ukwazi extends Animal{
  Ukwazi():super('Ukwazi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imvukuzane extends Animal{
  Imvukuzane():super('Imvukuzane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inhlolamvula extends Animal{
  Inhlolamvula():super('Inhlolamvula');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inkosiyezinyosi extends Animal{
  Inkosiyezinyosi():super('Inkosiyezinyosi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Indlondlo extends Animal{
  Indlondlo():super('Indlondlo');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Umvemve extends Animal{
  Umvemve():super('Umvemve');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ibhele extends Animal{
  Ibhele():super('Ibhele');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Nkosazane extends Animal{
  Nkosazane():super('Nkosazane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ivondwe extends Animal{
  Ivondwe():super('Ivondwe');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Umvuthamini extends Animal{
  Umvuthamini():super('Umvuthamini');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Amahlala extends Animal{
  Amahlala():super('Amahlala');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imbongolo extends Animal{
  Imbongolo():super('Imbongolo');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class InkukhuYamaqanda extends Animal{
  InkukhuYamaqanda():super('Inkukhu Yamaqanda');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imbila extends Animal{
  Imbila():super('Imbila');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imfezi extends Animal{
  Imfezi():super('Imfezi');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inkawu extends Animal{
  Inkawu():super('Inkawu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Imbulu extends Animal{
  Imbulu():super('Imbulu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inkwe extends Animal{
  Inkwe():super('Inkwe');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Phane extends Animal{
  Phane():super('Phane');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Insuze extends Animal{
  Insuze():super('Insuze');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Insele extends Animal{
  Insele():super('Insele');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Ufezela extends Animal{
  Ufezela():super('Ufezela');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}

class Inkukhu extends Animal{

  String umbala;

  Inkukhu({required this.umbala}):super('Inkukhu');

  void addAnimalBehavior(){
    animalBehavior.add('');
    
  }

  void addAnimalNames(){
    names['English'] = '';
    names['Xhosa'] = '';
    names['Tsonga'] = '';
    names['Tswane'] = '';
    names['Sotho'] = '';
    names['Swati'] = '';
    names['Venda'] = '';
    names['French'] = '';
    names['Spanish'] = '';
  }
}