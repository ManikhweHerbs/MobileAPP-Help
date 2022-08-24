import 'package:manikhwe_herbs/models/healing_tought/involvement_type.dart';

class MeanthFor{

  final MAX_NUMBER_OF_INVOLVEMENT = 25;
  InvolvementType involvementType;

  final PLANTS_ONLY_PRICE_PER_INVOLVEMENT = 10.0;
  final ANIMALS_ONLY_PRICE_PER_INVOLVEMENT = 20.0;
  final EVERYTHING_INVOLVED_PRICE_PER_INVOLVEMENT = 30.0;

  int numberOfInvolvements;
  late double knowledgePrice;

  

  MeanthFor({
    required this.involvementType,
    required this.numberOfInvolvements,
  }){
    calculateKnowledgePrice();
  }

  void calculateKnowledgePrice(){
    
    switch(involvementType){
      case InvolvementType.Plants_Only: 
      knowledgePrice = PLANTS_ONLY_PRICE_PER_INVOLVEMENT*numberOfInvolvements;
      break;
      case InvolvementType.Animals_Only: 
      knowledgePrice = ANIMALS_ONLY_PRICE_PER_INVOLVEMENT*numberOfInvolvements;
      break;
      case InvolvementType.Everything_Involved: 
      knowledgePrice = EVERYTHING_INVOLVED_PRICE_PER_INVOLVEMENT*numberOfInvolvements;
      break;
    }
  }

}