abstract class Ingredient{
  
  Map<String,String> names = new Map();
  String part;
  String description = '';

  Ingredient({required this.part});


  Map<String, dynamic> toMap();
}