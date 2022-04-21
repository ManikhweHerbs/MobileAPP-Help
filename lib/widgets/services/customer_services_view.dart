import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/customer_management.dart';
import 'package:manikhwe_herbs/models/service_management.dart';
import 'package:manikhwe_herbs/widgets/services/service_view.dart';
import 'package:manikhwe_herbs/widgets/services/specialist_profile_two.dart';

class CustomerServicesView extends StatelessWidget{
  
  final Customer customer;
  final Specialist specialist;

  const CustomerServicesView(this.specialist, this.customer, {Key? key}) : super(key: key);

  List<ServiceView> _getServiceViews(){
    
    List<ServiceView> serviceViews = [];
    List<SpecialistService> specialistServices = specialist.specialistServices;

    for(var i = 0; i < specialistServices.length;i++){
      serviceViews.add(ServiceView(specialistServices[i]));
    }

    return serviceViews;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          SpecialistProfile2(
            specialist,
            customer
          ),
          //Service Name    Service Description    No Of Reqeusts    Price    Select
          Row(
            children: [
              Text(Language.serviceName[specialist.specialistLanguageIndex]),
              Text(Language.serviceDescription[specialist.specialistLanguageIndex]),
              Text(Language.serviceNumberOfRequests[specialist.specialistLanguageIndex]),
              Text(Language.servicePrice[specialist.specialistLanguageIndex]),
              Text(Language.serviceSelect[specialist.specialistLanguageIndex]),
            ],
          ),
          Column(
            children: _getServiceViews(),
          ),
          ElevatedButton(
          // Thola Usizo
          child: Text(Language.serviceNeeded[specialist.specialistLanguageIndex]),
          onPressed: (){
            
          },
        ),
        ],
      ),
    );
  }
}

class Language{

  static const serviceName = ['Okwenziwayo'];
  static const serviceDescription = ['Incazelo'];
  static const serviceNumberOfRequests = ['Inani Lasebethole Usizo'];
  static const servicePrice = ['Imalini'];
  static const serviceSelect = ['Khetha Ulidingayo'];
  static const serviceNeeded = ['Thola Usizo'];
}