import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/product_management.dart';
import 'package:manikhwe_herbs/widgets/orders/category_selector.dart';
import 'package:manikhwe_herbs/widgets/orders/order_screen.dart';
import 'package:manikhwe_herbs/widgets/page_navigation.dart';
import 'package:manikhwe_herbs/widgets/orders/shopping_list_item.dart';

import '../second drawer/navigation_drawer.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList(this.languageIndex, {required this.phoneNumber, Key? key})
      : super(key: key);

  List<Product> products = [];
  final int languageIndex;
  final String phoneNumber;
  int numberOfCustomersInStore = 1500;

  void increaseNumberOfCustomersInStore() {
    numberOfCustomersInStore++;
  }

  void decreaseNumberOfCustomersInStore() {
    numberOfCustomersInStore--;
  }

  // The framework calls createState the first time
  // a widget appears at a given location in the tree.
  // If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework re-uses
  // the State object instead of creating a new State object.

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _shoppingCart = <Product>[];

  @override
  void initState() {
    _changeCategory(0 /*Random().nextInt(23)*/);
    updateCustomersInStore();

    super.initState();
  }

  void _addRemoveProduct(Product product, bool inCart) {
    setState(() {
      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  void _changeCategory(int categoryIndex) {
    setState(() {
      switch (categoryIndex) {
        case 0:
          widget.products = Language.ezomsamu(widget.languageIndex);
          break;
        case 1:
          widget.products = Language.ezemali(widget.languageIndex);
          break;
        case 2:
          widget.products = Language.ezempumelelo(widget.languageIndex);
          break;
        case 3:
          widget.products = Language.ezothando(widget.languageIndex);
          break;
        case 4:
          widget.products = Language.ezokuthakathwa(widget.languageIndex);
          break;
        case 5:
          widget.products = Language.ezenhlanhla(widget.languageIndex);
          break;
        case 6:
          widget.products = Language.ezabesilisa(widget.languageIndex);
          break;
        case 7:
          widget.products = Language.ezabesifazane(widget.languageIndex);
          break;
        case 8:
          widget.products = Language.ezomsebenzi(widget.languageIndex);
          break;
        case 9:
          widget.products = Language.ezamabhisinisi(widget.languageIndex);
          break;
        case 10:
          widget.products = Language.ezobusoka(widget.languageIndex);
          
          break;
        case 11:
          widget.products = Language.ezesikhumba(widget.languageIndex);
          break;
        case 12:
          widget.products = Language.ezedliso(widget.languageIndex);
          break;
        case 13:
          widget.products = Language.ezokuyeka(widget.languageIndex);
          break;
        case 14:
          widget.products = Language.ezokufa(widget.languageIndex);
          break;
        case 15:
          widget.products = Language.ezokucupha(widget.languageIndex);
          break;
        case 16:
          widget.products = Language.ezabagulayo(widget.languageIndex);
          break;
        case 17:
          widget.products = Language.ezomndeni(widget.languageIndex);
          break;
        case 18:
          widget.products = Language.ezezikweletu(widget.languageIndex);
          break;
        case 19:
          widget.products = Language.ezesilwane(widget.languageIndex);
          break;
        case 20:
          widget.products = Language.ezezitha(widget.languageIndex);
          break;
        case 21:
          widget.products = Language.ezokuthandeka(widget.languageIndex);
          break;
        case 22:
          widget.products = Language.ezamacala(widget.languageIndex);
          break;
        case 23:
          widget.products = Language.ezesichitho(widget.languageIndex);
          break;
      }
    });
  }

  updateCustomersInStore() {
    int waitingPeriod = 5;
    final _random = Random();

    Timer.periodic(Duration(seconds: waitingPeriod), (timer) {
      setState(() {
        if (_random.nextInt(2) == 0) {
          widget.increaseNumberOfCustomersInStore();
        } else {
          widget.decreaseNumberOfCustomersInStore();
        }
        print(DateTime.now());
        waitingPeriod = 5 + _random.nextInt(16 - 5);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidger(widget.languageIndex),
        appBar: AppBar(
          elevation: 0,
          
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(CustomPageRoute(
                    child: OrderScreen(
                        languageIndex: widget.languageIndex,
                        phoneNumber: widget.phoneNumber,
                        boughtItems: _shoppingCart),
                  ));
                },
                tooltip: 'Cart',
                icon: const Icon(Icons.add_shopping_cart),
                iconSize: 30.0,
                color: Colors.white),
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(onCategoryChanged: _changeCategory),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                children: widget.products.map((Product product) {
                  return ShoppingListItem(
                    product: product,
                    productIndex: widget.products.indexOf(product) + 1,
                    inCart: _shoppingCart.contains(product),
                    onCartChanged: _addRemoveProduct,
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}

class Language {

  static List<Product> ezomsamu(int languageIndex) {
    List<Product> list = [];

    list.add(GezaUmsamo(languageIndex));
    list.add(Bhemuphuphe(languageIndex));
    list.add(Mndenongaxabani(languageIndex));
    list.add(Mndenozwanayo(languageIndex));
    /*list.add(Ozalwembethe(languageIndex));
    list.add(Vulidlozi(languageIndex));
    list.add(Maqaqabebophile(languageIndex));
    list.add(Weqiziko(languageIndex));
    list.add(Khulumisidlozi(languageIndex));
    list.add(VulidloziXXX(languageIndex));
    list.add(Labongidlozi(languageIndex));
    list.add(Sondezidlozi(languageIndex));
    list.add(Profetha(languageIndex));
    list.add(Bhekwayidlozi(languageIndex));
    list.add(Tholokufunayo(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezemali(int languageIndex) {
    List<Product> list = [];

    list.add(Belungubami(languageIndex));
    list.add(Thengani(languageIndex));
    list.add(Khanyisa(languageIndex));
    list.add(GezaUmsamo(languageIndex));
    list.add(Abakhokhe(languageIndex));
    list.add(Mpilemnandi(languageIndex));
    list.add(Donsamali(languageIndex));
    /*list.add(Malungabaleki(languageIndex));
    list.add(Qaqabethakathile(languageIndex));
    list.add(Gezamabhadi(languageIndex));
    list.add(IsibungeXXX(languageIndex));
    list.add(Ozalwembethe(languageIndex));
    list.add(Vulidlozi(languageIndex));
    list.add(OwenhlanhlaXXX(languageIndex));
    list.add(LahlokubiXXX(languageIndex));
    list.add(Uzozibonela(languageIndex));
    list.add(Labongidlozi(languageIndex));
    list.add(Buyisokwebiwe(languageIndex));
    list.add( Motengantshontshwa(languageIndex));
    list.add(Tholokufunayo(languageIndex));
    list.add(Manzendalo(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezothando(int languageIndex) {
    List<Product> list = [];

    list.add(Thandekile(languageIndex));
    list.add(Mehlothando(languageIndex));
    list.add(Thandeka(languageIndex));
    list.add(Safisithosami(languageIndex));
    list.add(Kuthole(languageIndex));
    list.add(Akabuye(languageIndex));
    list.add(Ngthandeni(languageIndex));
    list.add(Mndenongaxabani(languageIndex));
    list.add(Mndenozwanayo(languageIndex));
    /*list.add(SbambeleloXXX(languageIndex));
    list.add(Gezamabhadi(languageIndex));
    list.add(Azwewenefonini(languageIndex));
    list.add(Babambanokwezinja(languageIndex));
    list.add(Tholamawele(languageIndex));
    list.add(OshimileXXX(languageIndex));
    list.add(Uzozibonela(languageIndex));
    list.add(Angathinyaka(languageIndex));
    list.add(Intandoyasendlini(languageIndex));
    list.add(Ngikufunala(languageIndex));
    list.add(Mubuyise(languageIndex));
    list.add(Esogazi(languageIndex));
    list.add(Skhafulo123(languageIndex));
    list.add(DonsuthandoXYZ(languageIndex));
    list.add(Mlandengesthombesakhe(languageIndex));
    list.add(Asizwisane(languageIndex));
    list.add(Mthondowothando(languageIndex));
    list.add(Mfonele(languageIndex));
    list.add(Tholokufunayo(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezempumelelo(int languageIndex) {
    List<Product> list = [];

    list.add(Belungubami(languageIndex));
    list.add(Thengani(languageIndex));
    list.add(Belungubami(languageIndex));
    list.add(GezaUmsamo(languageIndex));
    list.add(Bhemuphuphe(languageIndex));
    list.add(Abakhokhe(languageIndex));
    list.add(Bolisa(languageIndex));
    list.add(Mpilemnandi(languageIndex));
    list.add(Hambamthakathi(languageIndex));
    list.add(Donsamali(languageIndex));
    list.add(Malungabaleki(languageIndex));
    list.add(Qaqabethakathile(languageIndex));
    list.add(Gezamabhadi(languageIndex));
    /*list.add(Ozalwembethe(languageIndex));
    list.add(Vulidlozi(languageIndex));
    list.add(OwenhlanhlaXXX(languageIndex));
    list.add(LahlokubiXXX(languageIndex));
    list.add(Ngfunumsebenzi(languageIndex));
    list.add(Khulumisidlozi(languageIndex));
    list.add(Owemfuyo(languageIndex));
    list.add(Labongidlozi(languageIndex));
    list.add(Sondezidlozi(languageIndex));
    list.add(Mfuyeningi(languageIndex));
    list.add(Gezelesgangeni(languageIndex));
    list.add(Madida(languageIndex));
    list.add(Mabeze(languageIndex));
    list.add(IsibungeSomsebenzi(languageIndex));
    list.add(Mawuyitoho(languageIndex));
    list.add(Yekisiwunga(languageIndex));
    list.add(Gadamoto(languageIndex));
    list.add(Tholokufunayo(languageIndex));
    list.add(Manzendalo(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezokuthakathwa(int languageIndex) {
    List<Product> list = [];

    list.add(Safisithosami(languageIndex));
    list.add(Zashamthakathi(languageIndex));
    list.add(Ngphuphe(languageIndex));
    list.add(Sikimi(languageIndex));
    list.add(Usemndenini(languageIndex));
    list.add(Asiphephe(languageIndex));
    list.add(Mabeze(languageIndex));
    list.add(Asisinde(languageIndex));
    list.add(Mndenongaxabani(languageIndex));
    list.add(Mndenozwanayo(languageIndex));
    list.add(Hambamthakathi(languageIndex));
    list.add(Hambamoyombi(languageIndex));
    list.add(Ubelethiswane(languageIndex));
    list.add(Qaqabethakathile(languageIndex));
    list.add(Gezamabhadi(languageIndex));
    /*list.add(NyokaEsiswini(languageIndex));
    list.add(Vulidlozi(languageIndex));
    list.add(Bohlasisu(languageIndex));
    list.add(BohlasisuXXX(languageIndex));
    list.add(SusaschithoXXX(languageIndex));
    list.add(Phindisa(languageIndex));
    list.add(Shayizitha(languageIndex));
    list.add(Cuphathuna(languageIndex));
    list.add(Olalwayisilwane(languageIndex));
    list.add(Inkingineswane(languageIndex));
    list.add(Phumaschitho(languageIndex));
    list.add(Gezelesgangeni(languageIndex));
    list.add(Bethela(languageIndex));
    list.add(Gezumndeni(languageIndex));
    list.add(Yonezizwe(languageIndex));
    list.add(Qedizizwe(languageIndex));
    list.add(Asisinde(languageIndex));
    list.add(Asiphephe(languageIndex));
    list.add(Qedazintwala(languageIndex));
    list.add(Bulalalumbo(languageIndex));
    list.add(Ngavalwa(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezenhlanhla(int languageIndex) {
    List<Product> list = [];

    list.add(Qalala(languageIndex)); // Required
    list.add(Sukakimi(languageIndex)); // Required
    list.add(Khanyisa(languageIndex));
    list.add(Mpilemnandi(languageIndex));
    /*list.add(Mpilemnandi(languageIndex));
    list.add(Qaqabethakathile(languageIndex));
    list.add(Gezamabhadi(languageIndex));
    list.add(Ozalwembethe(languageIndex));
    list.add(Vulidlozi(languageIndex));
    list.add(OwenhlanhlaXXX(languageIndex));
    list.add(Maqaqabebophile(languageIndex));
    list.add(Uzozibonela(languageIndex));
    list.add(Labongidlozi(languageIndex));
    list.add(Esogazi(languageIndex));
    list.add(Tholokufunayo(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezabesifazane(int languageIndex) {
    List<Product> list = [];


    list.add(Safisithosami(languageIndex));
    list.add(Nkomemnandi(languageIndex));
    list.add(Mitha(languageIndex));
    list.add( Mhlonipheni(languageIndex));
    list.add(Sabeka(languageIndex));
    list.add(Mhloniphe(languageIndex));
    list.add(Kuthole(languageIndex));
    list.add(Akondle(languageIndex));
    list.add(Ozalwembethe(languageIndex));
    list.add(Azwewenefonini(languageIndex));
    /*list.add(LahlokubiXXX(languageIndex));
    list.add(Maqaqabebophile(languageIndex));
    list.add(Qedanduna(languageIndex));
    list.add(Babambanokwezinja(languageIndex));
    list.add(Tholamawele(languageIndex));
    list.add(ThandekaABC(languageIndex));
    list.add(Weqiziko(languageIndex));
    list.add(Yakhumuzi(languageIndex));
    list.add(Angathinyaka(languageIndex));
    list.add(Intandoyasendlini(languageIndex));
    list.add(Ngikufunala(languageIndex));
    list.add(Mubuyise(languageIndex));
    list.add(Ngiseliwe(languageIndex));
    list.add(Chathanje(languageIndex));
    list.add(Ziphuzelenje(languageIndex));
    list.add(Mlandengesthombesakhe(languageIndex));
    list.add(Mfonele(languageIndex));
    list.add(Hlanzisinya(languageIndex));
    list.add(Khulelwa(languageIndex));
    list.add(Qedazintwala(languageIndex));

    list.add(Asiphephe(languageIndex));
    list.add(Asisinde(languageIndex));
    list.add(Mabeze(languageIndex));
    list.add(Syamthanda(languageIndex));
    list.add(MyNo1(languageIndex));
    list.add(Mhloniphe(languageIndex));
    list.add(UmakotiLo(languageIndex));
    list.add(Siyakuvumela(languageIndex));
    list.add(Madida(languageIndex));
    list.add(Zashamthakathi(languageIndex));

    list.add(Uhlezekhathele(languageIndex));
    list.add(Ugezinkomo(languageIndex));
    list.add(Tholokufunayo(languageIndex));
    list.add(Qedaslumo(languageIndex));
    list.add(Zwakalekhaya(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezabesilisa(int languageIndex) {
    List<Product> list = [];

    list.add(Asiphephe(languageIndex));
    list.add(Asisinde(languageIndex));
    list.add(Mabeze(languageIndex));
    list.add(Syamthanda(languageIndex));
    list.add(MyNo1(languageIndex));
    list.add(Mhloniphe(languageIndex));
    list.add(Siyakuvumela(languageIndex));
    list.add(Madida(languageIndex));
    /*list.add(Zashamthakathi(languageIndex));

    list.add(Qalala(languageIndex)); // Required
    list.add(Sukakimi(languageIndex)); // Required
    list.add(Safisithosami(languageIndex));
    list.add(Mhlonipheni(languageIndex));
    list.add(Sabeka(languageIndex));
    list.add(Kuthole(languageIndex));
    list.add(Isigqabosothando(languageIndex));
    list.add(Qinanduku(languageIndex));
    list.add(Vikasbhamu(languageIndex));
    list.add(SbambeleloXXX(languageIndex));
    list.add(Ozalwembethe(languageIndex));
    list.add(Azwewenefonini(languageIndex));
    list.add(LahlokubiXXX(languageIndex));
    list.add(Maqaqabebophile(languageIndex));
    list.add(Qedanduna(languageIndex));
    list.add(Vukanduku(languageIndex));
    list.add(Babambanokwezinja(languageIndex));
    list.add(Tholamawele(languageIndex));
    list.add(OshimileXXX(languageIndex));
    list.add(ThandekaABC(languageIndex));
    list.add(Weqiziko(languageIndex));
    list.add(Yakhumuzi(languageIndex));
    list.add(Angathinyaka(languageIndex));
    list.add(Intandoyasendlini(languageIndex));
    list.add(Ngikufunala(languageIndex));
    list.add(Mubuyise(languageIndex));
    list.add(Ngiseliwe(languageIndex));
    list.add(Qhanyelwa(languageIndex));
    list.add(Chathanje(languageIndex));
    list.add(Liyavukala(languageIndex));
    list.add(Ziphuzelenje(languageIndex));
    list.add(Mlandengesthombesakhe(languageIndex));
    list.add(Mabeze(languageIndex));
    list.add(Mthondowothando(languageIndex));
    list.add(Mfonele(languageIndex));
    list.add(Osheshachame(languageIndex));
    list.add(Qedazintwala(languageIndex));
    list.add(Mthondwehhashi(languageIndex));
    list.add(Uhlezekhathele(languageIndex));
    list.add(Ndukengami(languageIndex));
    list.add(Wisanduku(languageIndex));
    list.add(Tholokufunayo(languageIndex));
    list.add(Zwakalekhaya(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezamabhisinisi(int languageIndex) {
    List<Product> list = [];

    list.add(Qalala(languageIndex)); // Required
    list.add(Sukakimi(languageIndex)); // Required
    list.add(Khanyisa(languageIndex));
    list.add(Thengani(languageIndex));
    list.add(GezaUmsamo(languageIndex));
    list.add(Abakhokhe(languageIndex));
    list.add( Vikasbhamu(languageIndex));
    list.add(Mpilemnandi(languageIndex));
    /*list.add(Hambamthakathi(languageIndex));
    list.add(Donsamali(languageIndex));
    list.add(Malungabaleki(languageIndex));
    list.add(Qaqabethakathile(languageIndex));
    list.add(IsibungeXXX(languageIndex));
    list.add(Ozalwembethe(languageIndex));
    list.add(Vulidlozi(languageIndex));
    list.add(Azwewenefonini(languageIndex));
    list.add(OwenhlanhlaXXX(languageIndex));
    list.add(Maqaqabebophile(languageIndex));
    list.add(Amafuthebhanoyi(languageIndex));
    list.add(Owemfuyo(languageIndex));
    list.add(Labongidlozi(languageIndex));
    list.add(Mfuyeningi(languageIndex));
    list.add(Gezelesgangeni(languageIndex));
    list.add(Bethela(languageIndex));
    list.add(Mabeze(languageIndex));
    list.add(Ngavalwa(languageIndex));
    list.add(Gadamoto(languageIndex));
    list.add(Tholokufunayo(languageIndex));
    list.add(Manzendalo(languageIndex));*/

    list.shuffle();
    return list;
  }

  static List<Product> ezesikhumba(int languageIndex) {
    List<Product> list = [];

    list.add(Qalala(languageIndex)); // Required
    list.add(Sukakimi(languageIndex)); // Required
    list.add(Safisithosami(languageIndex));
    list.add(Tholokufunayo(languageIndex));

    list.shuffle();
    return list;
  }

  static List<Product> ezobusoka(int languageIndex) {
    List<Product> list = [];

    Thandekile thandekile = Thandekile(languageIndex);
    Mehlothando mehlothando = Mehlothando(languageIndex);
    Thandeka thandeka = Thandeka(languageIndex);
    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Kuthole kuthole = Kuthole(languageIndex);
    Isigqabosothando isigqabosothando = Isigqabosothando(languageIndex);
    Ngthandeni ngthandeni = Ngthandeni(languageIndex);
    SbambeleloXXX sbambeleloXXX = SbambeleloXXX(languageIndex);
    SbambeleloXYZ sbambeleloXYZ = SbambeleloXYZ(languageIndex);
    Azwewenefonini azwewenefonini = Azwewenefonini(languageIndex);
    Qedanduna qedanduna = Qedanduna(languageIndex);
    Vukanduku vukanduku = Vukanduku(languageIndex);
    OshimileXXX oshimileXXX = OshimileXXX(languageIndex);
    /*ThandekaABC thandekaABC = ThandekaABC(languageIndex);
    Donsabafazi donsabafazi = Donsabafazi(languageIndex);
    Uhlangalwabo uhlangalwabo = Uhlangalwabo(languageIndex);
    IsikhafuloBMW isikhafuloBMW = IsikhafuloBMW(languageIndex);
    Uzozibonela uzozibonela = Uzozibonela(languageIndex);
    Skhafulo123 skhafulo123 = Skhafulo123(languageIndex);
    Liyavukala liyavukala = Liyavukala(languageIndex);
    Sesheli sesheli = Sesheli(languageIndex);
    Sokalamanyala sokalamanyala = Sokalamanyala(languageIndex);
    Mlandengesthombesakhe mlandengesthombesakhe =
        Mlandengesthombesakhe(languageIndex);
    Asizwisane asizwisane = Asizwisane(languageIndex);
    Owezishimane owezishimane = Owezishimane(languageIndex);
    Mthondowothando mthondowothando = Mthondowothando(languageIndex);
    Osheshachame osheshachame = Osheshachame(languageIndex);
    Mthondwehhashi mthondwehhashi = Mthondwehhashi(languageIndex);
    Ndukengami ndukengami = Ndukengami(languageIndex);
    Wisanduku wisanduku = Wisanduku(languageIndex);
    Mthintabemanzi mthintabemanzi = Mthintabemanzi(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Shelenezizwe shelenezizwe = Shelenezizwe(languageIndex);*/


    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(thandekile);
    list.add(mehlothando);
    list.add(thandeka);
    list.add(kuthole);
    list.add(isigqabosothando);
    list.add(ngthandeni);
    list.add(sbambeleloXXX);
    list.add(sbambeleloXYZ);
    list.add(azwewenefonini);
    list.add(qedanduna);
    list.add(vukanduku);
    list.add(oshimileXXX);
    /*list.add(thandekaABC);
    list.add(donsabafazi);
    list.add(uhlangalwabo);
    list.add(isikhafuloBMW);
    list.add(uzozibonela);
    list.add(skhafulo123);
    list.add(liyavukala);
    list.add(sesheli);
    list.add(sokalamanyala);
    list.add(mlandengesthombesakhe);
    list.add(asizwisane);
    list.add(owezishimane);
    list.add(mthondowothando);
    list.add(osheshachame);
    list.add(mthondwehhashi);
    list.add(ndukengami);
    list.add(wisanduku);
    list.add(mthintabemanzi);
    list.add(tholokufunayo);
    list.add(shelenezizwe);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezedliso(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Bolisa bolisa = Bolisa(languageIndex);
    Bulalalumbo bulalalumbo = Bulalalumbo(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(bolisa);
    list.add(bulalalumbo);
    list.add(tholokufunayo);

    list.shuffle();
    return list;
  }

  static List<Product> ezokuyeka(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Yekisiwunga yekisiwunga = Yekisiwunga(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(yekisiwunga);
    list.add(tholokufunayo);
    

    list.shuffle();
    return list;
  }

  static List<Product> ezokufa(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Safisithosami safisithosami = Safisithosami(languageIndex);
    NyokaEsiswini nyokaEsiswini = NyokaEsiswini(languageIndex);
    Cuphathuna cuphathuna = Cuphathuna(languageIndex);
    Bulalalumbo bulalalumbo = Bulalalumbo(languageIndex);
    Yekisiwunga yekisiwunga = Yekisiwunga(languageIndex);
    Ngiyafunwa ngiyafunwa = Ngiyafunwa(languageIndex);
    GovuEladlumthakathi govuEladlumthakathi = GovuEladlumthakathi(languageIndex);
    Bambiswane bambiswane = Bambiswane(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(safisithosami);
    list.add(nyokaEsiswini);
    list.add(cuphathuna);
    list.add(bulalalumbo);
    list.add(yekisiwunga);
    list.add(ngiyafunwa);
    list.add(govuEladlumthakathi);
    list.add(bambiswane);
    list.add(tholokufunayo);

    list.shuffle();
    return list;
  }

  static List<Product> ezokucupha(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Safisithosami safisithosami = Safisithosami(languageIndex);
    Vikasbhamu vikasbhamu = Vikasbhamu(languageIndex);
    Hambamthakathi hambamthakathi = Hambamthakathi(languageIndex);
    Lumbanxeba lumbanxeba = Lumbanxeba(languageIndex);
    Cuphathuna cuphathuna = Cuphathuna(languageIndex);
    /*Owemfuyo owemfuyo = Owemfuyo(languageIndex);
    Bethela bethela = Bethela(languageIndex);
    Buyisokwebiwe buyisokwebiwe = Buyisokwebiwe(languageIndex);
    Motengantshontshwa motengantshontshwa = Motengantshontshwa(languageIndex);
    Ngavalwa ngavalwa = Ngavalwa(languageIndex);
    Gadamoto gadamoto = Gadamoto(languageIndex);
    GovuEladlumthakathi govuEladlumthakathi = GovuEladlumthakathi(languageIndex);
    Ungathakatheki ungathakatheki = Ungathakatheki(languageIndex);
    Bambiswane bambiswane = Bambiswane(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);*/

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(safisithosami);
    list.add(vikasbhamu);
    list.add(hambamthakathi);
    list.add(lumbanxeba);
    list.add(cuphathuna);
    /*list.add(owemfuyo);
    list.add(bethela);
    list.add(buyisokwebiwe);
    list.add(motengantshontshwa);
    list.add(ngavalwa);
    list.add(gadamoto);
    list.add(govuEladlumthakathi);
    list.add(ungathakatheki);
    list.add(bambiswane);
    list.add(tholokufunayo);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezomsebenzi(languageIndex) {
    List<Product> list = [];

    Belungubami belungubami = Belungubami(languageIndex);
    Thandekile thandekile = Thandekile(languageIndex);
    Mehlothando mehlothando = Mehlothando(languageIndex);
    Thandeka thandeka = Thandeka(languageIndex);
    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Labongidlozi labongidlozi = Labongidlozi(languageIndex);
    /*Skhundla skhundla = Skhundla(languageIndex);
    GezaUmsamo gezaUmsamo = GezaUmsamo(languageIndex);
    Kuthole kuthole = Kuthole(languageIndex);
    Ngthandeni ngthandeni = Ngthandeni(languageIndex);
    Mpilemnandi mpilemnandi = Mpilemnandi(languageIndex);
    Donsamali donsamali = Donsamali(languageIndex);
    Malungabaleki malungabaleki = Malungabaleki(languageIndex);
    Qaqabethakathile qaqabethakathile = Qaqabethakathile(languageIndex);
    Gezamabhadi gezamabhadi = Gezamabhadi(languageIndex);
    Ozalwembethe ozalwembethe = Ozalwembethe(languageIndex);
    Vulidlozi vulidlozi = Vulidlozi(languageIndex);
    Azwewenefonini azwewenefonini = Azwewenefonini(languageIndex);
    OwenhlanhlaXXX owenhlanhlaXXX = OwenhlanhlaXXX(languageIndex);
    Maqaqabebophile maqaqabebophile = Maqaqabebophile(languageIndex);
    Ngfunumsebenzi ngfunumsebenzi = Ngfunumsebenzi(languageIndex);
    Ngiseliwe ngiseliwe = Ngiseliwe(languageIndex);
    Esogazi esogazi = Esogazi(languageIndex);
    IsibungeSomsebenzi isibungeSomsebenzi = IsibungeSomsebenzi(languageIndex);
    Mawuyitoho mawuyitoho = Mawuyitoho(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Manzendalo mpumelelefihliwe = Manzendalo(languageIndex);*/

    list.add(qalala); // Required
    list.add(sukakimi); // Required

    list.add(belungubami);
    list.add(thandekile);
    list.add(mehlothando);
    list.add(thandeka);
    list.add(labongidlozi);
    /*list.add(skhundla);
    list.add(gezaUmsamo);
    list.add(kuthole);
    list.add(ngthandeni);
    list.add(mpilemnandi);
    list.add(donsamali);
    list.add(malungabaleki);
    list.add(qaqabethakathile);
    list.add(gezamabhadi);
    list.add(ozalwembethe);
    list.add(vulidlozi);
    list.add(azwewenefonini);
    list.add(owenhlanhlaXXX);
    list.add(maqaqabebophile);
    list.add(ngfunumsebenzi);
    list.add(ngiseliwe);
    list.add(esogazi);
    list.add(Syamthanda(languageIndex));
    list.add(MyNo1(languageIndex));
    list.add(Siyakuvumela(languageIndex));
    list.add(isibungeSomsebenzi);
    list.add(mawuyitoho);
    list.add(tholokufunayo);
    list.add(mpumelelefihliwe);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezabagulayo(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Safisithosami safisithosami = Safisithosami(languageIndex);
    Bolisa bolisa = Bolisa(languageIndex);
    Hambamthakathi hambamthakathi = Hambamthakathi(languageIndex);
    Hambamoyombi hambamoyombi = Hambamoyombi(languageIndex);
    NyokaEsiswini nyokaEsiswini = NyokaEsiswini(languageIndex);
    Bohlasisu bohlasisu = Bohlasisu(languageIndex);
    Qedanduna qedanduna = Qedanduna(languageIndex);
    BohlasisuXXX bohlasisuXXX = BohlasisuXXX(languageIndex);
    Owezilonda owezilonda = Owezilonda(languageIndex);
    Chathanje chathanje = Chathanje(languageIndex);
    Antibiotics antibiotics = Antibiotics(languageIndex);
    Yonezizwe yonezizwe = Yonezizwe(languageIndex);
    /*Qedizizwe qedizizwe = Qedizizwe(languageIndex);
    Hlanzisinya hlanzisinya = Hlanzisinya(languageIndex);
    OwamaUlcer owamaUlcer = OwamaUlcer(languageIndex);
    Pholisazilonda pholisazilonda = Pholisazilonda(languageIndex);
    Qedibhande qedibhande = Qedibhande(languageIndex);
    Qedazintwala qedazintwala = Qedazintwala(languageIndex);
    Bulalalumbo bulalalumbo = Bulalalumbo(languageIndex);
    Vulasfuba vulasfuba = Vulasfuba(languageIndex);
    Uhlezekhathele uhlezekhathele = Uhlezekhathele(languageIndex);
    Yekisiwunga yekisiwunga = Yekisiwunga(languageIndex);
    Bambiswane bambiswane = Bambiswane(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Zingaphakathi zingaphakathi = Zingaphakathi(languageIndex);
    Qedisayinasi qedisayinasi = Qedisayinasi(languageIndex);
    Manzendalo mpumelelefihliwe = Manzendalo(languageIndex);*/

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(safisithosami);
    list.add(bolisa);
    list.add(hambamthakathi);
    list.add(hambamoyombi);
    list.add(nyokaEsiswini);
    list.add(bohlasisu);
    list.add(qedanduna);
    list.add(bohlasisuXXX);
    list.add(owezilonda);
    list.add(chathanje);
    list.add(antibiotics);
    list.add(yonezizwe);
    /*list.add(qedizizwe);
    list.add(hlanzisinya);
    list.add(owamaUlcer);
    list.add(pholisazilonda);
    list.add(qedibhande);
    list.add(qedazintwala);
    list.add(bulalalumbo);
    list.add(vulasfuba);
    list.add(uhlezekhathele);
    list.add(yekisiwunga);
    list.add(bambiswane);
    list.add(tholokufunayo);
    list.add(zingaphakathi);
    list.add(qedisayinasi);
    list.add(mpumelelefihliwe);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezomndeni(int languageIndex) {
    List<Product> list = [];

    Usemndenini usemndenini = Usemndenini(languageIndex);
    Qalala qalala = Qalala(languageIndex);
    /*Bolisa bolisa = Bolisa(languageIndex);
    Mndenongaxabani mndenongaxabani = Mndenongaxabani(languageIndex);
    Mndenozwanayo mndenozwanayo = Mndenozwanayo(languageIndex);
    Hambamthakathi hambamthakathi = Hambamthakathi(languageIndex);
    Ozalwembethe ozalwembethe = Ozalwembethe(languageIndex);
    Vulidlozi vulidlozi = Vulidlozi(languageIndex);
    Babambanokwezinja babambanokwezinja = Babambanokwezinja(languageIndex);
    Tholamawele tholamawele = Tholamawele(languageIndex);
    Cuphathuna cuphathuna = Cuphathuna(languageIndex);
    Khulumisidlozi khulumisidlozi = Khulumisidlozi(languageIndex);
    Owemfuyo owemfuyo = Owemfuyo(languageIndex);
    Bethela bethela = Bethela(languageIndex);
    Gezumndeni gezumndeni = Gezumndeni(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Zwakalekhaya zwakalekhaya = Zwakalekhaya(languageIndex);*/

    list.add(qalala); // Required
    list.add(usemndenini);
    /*list.add(bolisa);
    list.add(mndenongaxabani);
    list.add(mndenozwanayo);
    list.add(hambamthakathi);
    list.add(ozalwembethe);
    list.add(vulidlozi);
    list.add(babambanokwezinja);
    list.add(tholamawele);
    list.add(cuphathuna);
    list.add(khulumisidlozi);
    list.add(owemfuyo);
    list.add(bethela);
    list.add(gezumndeni);
    list.add(tholokufunayo);
    list.add(zwakalekhaya);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezesilwane(int languageIndex) {
    List<Product> list = [];

    Zashamthakathi zashamthakathi = Zashamthakathi(languageIndex);
    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Hambamoyombi hambamoyombi = Hambamoyombi(languageIndex);
    /*Ubelethiswane ubelethiswane = Ubelethiswane(languageIndex);
    NyokaEsiswini nyokaEsiswini = NyokaEsiswini(languageIndex);
    Olalwayisilwane olalwayisilwane = Olalwayisilwane(languageIndex);
    Inkingineswane inkingineswane = Inkingineswane(languageIndex);
    Bethela bethela = Bethela(languageIndex);
    Yonezizwe yonezizwe = Yonezizwe(languageIndex);
    Xoshaskhova xoshaskhova = Xoshaskhova(languageIndex);
    Ungathakatheki ungathakatheki = Ungathakatheki(languageIndex);
    Bambiswane bambiswane = Bambiswane(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Lahliswane lahliswane = Lahliswane(languageIndex);*/

    list.add(qalala); // Required
    list.add(sukakimi); // Required

    list.add(zashamthakathi);
    list.add(hambamoyombi);
    /*list.add(ubelethiswane);
    list.add(nyokaEsiswini);
    list.add(olalwayisilwane);
    list.add(inkingineswane);
    list.add(bethela);
    list.add(yonezizwe);
    list.add(xoshaskhova);
    list.add(ungathakatheki);
    list.add(bambiswane);
    list.add(tholokufunayo);
    list.add(lahliswane);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezezikweletu(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Abakhokhe abakhokhe = Abakhokhe(languageIndex);
    Donsamali donsamali = Donsamali(languageIndex);
    Malungabaleki malungabaleki = Malungabaleki(languageIndex);
    Uyangikweleta uyangikweleta = Uyangikweleta(languageIndex);

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(abakhokhe);
    list.add(donsamali);
    list.add(malungabaleki);
    list.add(uyangikweleta);

    list.shuffle();
    return list;
  }

  static List<Product> ezezitha(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Zashamthakathi zashamthakathi = Zashamthakathi(languageIndex);
    Bolisa bolisa = Bolisa(languageIndex);
    Vikasbhamu vikasbhamu = Vikasbhamu(languageIndex);
    Hambamthakathi hambamthakathi = Hambamthakathi(languageIndex);
    Hambamoyombi hambamoyombi = Hambamoyombi(languageIndex);
    /*Vulidlozi vulidlozi = Vulidlozi(languageIndex);
    LahlokubiXXX lahlokubiXXX = LahlokubiXXX(languageIndex);
    Maqaqabebophile maqaqabebophile = Maqaqabebophile(languageIndex);
    SusaschithoXXX susaschithoXXX = SusaschithoXXX(languageIndex);
    Lumbanxeba lumbanxeba = Lumbanxeba(languageIndex);
    Shayizitha shayizitha = Shayizitha(languageIndex);
    Cuphathuna cuphathuna = Cuphathuna(languageIndex);
    Nqobazitha nqobazitha = Nqobazitha(languageIndex);
    QinaXXX qinaXXX = QinaXXX(languageIndex);
    Olalwayisilwane olalwayisilwane = Olalwayisilwane(languageIndex);
    Bethela bethela = Bethela(languageIndex);
    Yonezizwe yonezizwe = Yonezizwe(languageIndex);
    Buyisokwebiwe buyisokwebiwe = Buyisokwebiwe(languageIndex);
    Motengantshontshwa motengantshontshwa = Motengantshontshwa(languageIndex);
    Ngavalwa ngavalwa = Ngavalwa(languageIndex);
    Xoshaskhova xoshaskhova = Xoshaskhova(languageIndex);
    Gadamoto gadamoto = Gadamoto(languageIndex);
    Ngiyafunwa ngiyafunwa = Ngiyafunwa(languageIndex);
    GovuEladlumthakathi govuEladlumthakathi = GovuEladlumthakathi(languageIndex);
    Ungathakatheki ungathakatheki = Ungathakatheki(languageIndex);
    Bambiswane bambiswane = Bambiswane(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Manzendalo mpumelelefihliwe = Manzendalo(languageIndex);*/

    list.add(Asisinde(languageIndex));

    list.add(qalala); // Required
    list.add(sukakimi); // Required
    list.add(zashamthakathi); // Suka Deda
    list.add(bolisa);
    list.add(vikasbhamu);
    list.add(hambamthakathi);
    list.add(hambamoyombi);
    /*list.add(vulidlozi);
    list.add(lahlokubiXXX);
    list.add(maqaqabebophile);
    list.add(susaschithoXXX);
    list.add(lumbanxeba);
    list.add(shayizitha);
    list.add(cuphathuna);
    list.add(nqobazitha);
    list.add(qinaXXX);
    list.add(olalwayisilwane);
    list.add(bethela);
    list.add(yonezizwe);
    list.add(buyisokwebiwe);
    list.add(motengantshontshwa);
    list.add(ngavalwa);
    list.add(xoshaskhova);
    list.add(gadamoto);
    list.add(ngiyafunwa);
    list.add(govuEladlumthakathi);
    list.add(ungathakatheki);
    list.add(bambiswane);
    list.add(tholokufunayo);
    list.add(mpumelelefihliwe);*/

    return list;
  }

  static List<Product> ezokuthandeka(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Thandeka thandeka = Thandeka(languageIndex);
    Thandekile thandekile = Thandekile(languageIndex);
    Mehlothando mehlothando = Mehlothando(languageIndex);
    Ngthandeni ngthandeni = Ngthandeni(languageIndex);
    Gezamabhadi gezamabhadi = Gezamabhadi(languageIndex);
    Azwewenefonini azwewenefonini = Azwewenefonini(languageIndex);
    Qedanduna qedanduna = Qedanduna(languageIndex);
    /*OshimileXXX oshimileXXX = OshimileXXX(languageIndex);
    ThandekaABC thandekaABC = ThandekaABC(languageIndex);
    Intandoyasendlini intandoyasendlini = Intandoyasendlini(languageIndex);
    Angathinyaka angathinyaka = Angathinyaka(languageIndex);
    Esogazi esogazi = Esogazi(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);
    Shelenezizwe shelenezizwe = Shelenezizwe(languageIndex);*/

    list.add(qalala); // Required
    list.add(thandeka);
    list.add(thandekile);
    list.add(mehlothando);
    list.add(ngthandeni);
    list.add(gezamabhadi);
    list.add(azwewenefonini);
    list.add(qedanduna);
    /*list.add(oshimileXXX);
    list.add(thandekaABC);
    list.add(intandoyasendlini);
    list.add(angathinyaka);
    list.add(esogazi);
    list.add(Syamthanda(languageIndex));
    list.add(tholokufunayo);
    list.add(shelenezizwe);*/

    list.shuffle();
    return list;
  }

  static List<Product> ezamacala(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Alingathethwa alingathethwa = Alingathethwa(languageIndex);
    Qedacala qedacala = Qedacala(languageIndex);
    Nqobacala nqobacala = Nqobacala(languageIndex);
    Maqaqabebophile maqaqabebophile = Maqaqabebophile(languageIndex);
    QinaXXX qinaXXX = QinaXXX(languageIndex);
    Buyisokwebiwe buyisokwebiwe = Buyisokwebiwe(languageIndex);
    Motengantshontshwa motengantshontshwa = Motengantshontshwa(languageIndex);
    Ngiyafunwa ngiyafunwa = Ngiyafunwa(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);

    list.add(qalala);
    list.add(sukakimi);
    list.add(alingathethwa);
    list.add(qedacala);
    list.add(nqobacala);
    list.add(maqaqabebophile);
    list.add(qinaXXX);
    list.add(buyisokwebiwe);
    list.add(motengantshontshwa);
    list.add(ngiyafunwa);
    list.add(tholokufunayo);

    list.shuffle();
    return list;
  }

  static List<Product> ezesichitho(int languageIndex) {
    List<Product> list = [];

    Qalala qalala = Qalala(languageIndex);
    Usemndenini usemndenini = Usemndenini(languageIndex);
    Sukakimi sukakimi = Sukakimi(languageIndex);
    Asisinde asisinde = Asisinde(languageIndex);
    Asiphephe asiphephe = Asiphephe(languageIndex);
    Mabeze mabeze = Mabeze(languageIndex);
    Zashamthakathi zashamthakathi = Zashamthakathi(languageIndex);
    Safisithosami safisithosami = Safisithosami(languageIndex);
    Sikimi sikimi = Sikimi(languageIndex);
    /*Sisegcekeni sisegcekeni = Sisegcekeni(languageIndex);
    Bolisa bolisa = Bolisa(languageIndex);
    Mndenongaxabani mndenongaxabani = Mndenongaxabani(languageIndex);
    Mndenozwanayo mndenozwanayo = Mndenozwanayo(languageIndex);
    Hambamthakathi hambamthakathi = Hambamthakathi(languageIndex);
    Gezamabhadi gezamabhadi = Gezamabhadi(languageIndex);
    NyokaEsiswini nyokaEsiswini = NyokaEsiswini(languageIndex);
    Maqaqabebophile maqaqabebophile = Maqaqabebophile(languageIndex);
    Qedanduna qedanduna = Qedanduna(languageIndex);
    SusaschithoXXX susaschithoXXX = SusaschithoXXX(languageIndex);
    Gezumndeni gezumndeni = Gezumndeni(languageIndex);
    Qedazintwala qedazintwala = Qedazintwala(languageIndex);
    Bulalalumbo bulalalumbo = Bulalalumbo(languageIndex);
    Ngavalwa ngavalwa = Ngavalwa(languageIndex);
    GovuEladlumthakathi govuEladlumthakathi = GovuEladlumthakathi(languageIndex);
    Ungathakatheki ungathakatheki = Ungathakatheki(languageIndex);
    Tholokufunayo tholokufunayo = Tholokufunayo(languageIndex);*/

    list.add(Asiphephe(languageIndex));

    list.add(usemndenini);
    list.add(asisinde);
    list.add(asiphephe);
    list.add(mabeze);
    list.add(qalala);
    list.add(sukakimi);
    list.add(zashamthakathi);
    list.add(safisithosami);
    list.add(sikimi);
    /*list.add(sisegcekeni);
    list.add(bolisa);
    list.add(mndenongaxabani);
    list.add(mndenozwanayo);
    list.add(hambamthakathi);
    list.add(gezamabhadi);
    list.add(nyokaEsiswini);
    list.add(maqaqabebophile);
    list.add(qedanduna);
    list.add(susaschithoXXX);
    list.add(gezumndeni);
    list.add(Mabeze(languageIndex));
    list.add(qedazintwala);
    list.add(bulalalumbo);
    list.add(ngavalwa);
    list.add(govuEladlumthakathi);
    list.add(ungathakatheki);
    list.add(tholokufunayo);*/

    list.shuffle();
    return list;
  }

}
