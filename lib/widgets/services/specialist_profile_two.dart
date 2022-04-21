import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/customer_management.dart';
import 'package:manikhwe_herbs/models/service_management.dart';

class SpecialistProfile2 extends StatelessWidget{
  
  final Customer customer;
  final Specialist specialist;

  final int extraLikes = 100;
  final int extraRequests = 200;

  const SpecialistProfile2(this.specialist, this.customer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
            children: [
              Column(
                children: [
                  // E.g. - Uhlobo Lomsizi - Inyanga
                  Row(
                    children: [
                      Text(Language.types[specialist.specialistLanguageIndex]),
                      Text(' ' + Language.specialistTypes[specialist.type.index][customer.languageIndex]),
                    ],
                  ),
                  // Inani Lasebesiziwe - 45
                  Row(
                    children: [
                      Text(Language.recievedReqeusts[specialist.specialistLanguageIndex]),
                      Text(' - ' + (specialist.numberOfRequests+extraRequests).toString()),
                    ],
                  ),
                  // Inani Labamthandayo - 75
                  Row(
                    children: [
                      Text(Language.likesByCustomers[specialist.specialistLanguageIndex]),
                      Text(' - ' + (specialist.numberOfLikes+extraLikes).toString()),
                    ],
                  ),
                  // Inani Labangamthandayo - 5
                  Row(
                    children: [
                      Text(Language.dislikesByCustomers[specialist.specialistLanguageIndex]),
                      Text(' - ' + (specialist.numberOfDislikes).toString()),
                    ],
                  ),
                  // Igama Lomsizi - D5
                  Row(
                    children: [
                      Text(Language.specialistName[specialist.specialistLanguageIndex]),
                      Text(' - ' + (specialist.generatedName).toString()),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width:200,
                height: 200,
                child: Image.asset(
                  'images/ms2.jpg'),
              ),
            ],
          );
    
  }
}

class Language{

// ------------------------Customer's Point Of View-------------------------------
  static const types = ['Uhlobo Lomsizi']; // E.g. - Type
  static const likesByCustomers = ['Inani Labamthandayo'];
  static const dislikesByCustomers = ['Inani Labamthandayo'];
  static const recievedReqeusts = ['Inani Lasebesiziwe'];
  static const specialistName = ['Igame Lomsizi'];
// -------------------------------------------------------------------------------

  static const specialistTypes = 
  [
    ['Inyanga'],
    ['Isangoma'],
    ['Isiyoni'],
    ['Umfundisi Shembe'],
    ['Umfundisi Chibini'],
    ['Umfundisi Ziyoni'],
    ['Umfundisi Postoli'],
    ['Umfundisi ZCC'],
    ['Umfundisi Weseli'],
    ['Umfundisi Christian'],
    [''],
  ];
}