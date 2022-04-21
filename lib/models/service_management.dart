import 'package:manikhwe_herbs/models/product_management.dart';

import 'customer_management.dart';

enum Specialist_Type{
  inyanga, 
  isangoma, 
  isiyoni, 
  umfundisiShembe,
  umfundisiChibini,
  umfundisiZiyoni,
  umfundisiPostoli,
  umfundisiZCC,
  umfundisiWeseli,
  umfundisiChristian

}

class Specialist{
  String name;
  String surname;
  String identityNumber;
  bool hasCertificate;
  List<SpecialistService> specialistServices = [];
  List<Product> specialistProducts = [];
  int specialistLanguageIndex;

  Specialist_Type type;
  int numberOfLikes;
  int numberOfDislikes;
  int numberOfRequests;
  String generatedName;

  Specialist(this.name,this.surname,
  this.identityNumber,this.specialistLanguageIndex,
  this.type,this.hasCertificate,
  {this.numberOfDislikes=0,
  this.numberOfLikes=0,
  this.numberOfRequests=0,
  this.generatedName=''});

  bool addService(SpecialistService service){
    if(specialistServices.length<3 || identityNumber=='9302155792089') {
      specialistServices.add(service);
      return true;
    }
    return false;
  }

  void generateSpecialistName(){
    
  }

  bool removeService(int serviceIndex){
    if(specialistServices.isNotEmpty 
    && serviceIndex>=0 && serviceIndex<specialistServices.length){
      specialistServices.removeAt(serviceIndex);
      return true;
    }
    return false;
  }

  bool addProduct(Product product){
    if(specialistProducts.length<3 || identityNumber=='9302155792089'){
      specialistProducts.add(product);
      return true;
    }
    return false;
  }

  bool removeProduct(int productIndex){
    if(specialistProducts.isNotEmpty &&
      productIndex>=0 && productIndex<specialistProducts.length){
      specialistProducts.removeAt(productIndex);
      return true;
    }
    return false;
  }
}


class Service{

  DateTime proposedDate;
  Specialist specialist;
  Customer customer;
  int noOfPeopleToHelp;
  var isProvided;
  Service(this.customer,this.specialist,this.noOfPeopleToHelp,this.proposedDate){
    isProvided = false;
  }

  double getCost(){
    return 0;
  }
}

class SpecialistService extends Product{
  String serviceDescription;
  DateTime registrationDate = DateTime.now();
  int numberOfServiceRequests = 0;
  List<String> servicePurposes;
  List<String> serviceRequirements;
  String serviceDirectionOfUse;
  double specialistServicePrice;
  bool isSelected = false;

  SpecialistService(
    int languageIndex,
    String serviceName,
    this.serviceDescription,
    this.serviceDirectionOfUse,
    this.specialistServicePrice,
    this.servicePurposes,
    this.serviceRequirements
    ) : super(languageIndex,name:serviceName);

  void increaseNumbeOfServiceRequests(){
    numberOfServiceRequests = numberOfServiceRequests + 1;
  }

  @override
  List<String> findPurpose() {
    return servicePurposes;
  }

  @override
  String howToUse() {
    return serviceDirectionOfUse;
  }

  void addServicePurpose(String purpose){
    servicePurposes.add(purpose);
  }

  void removeServicePurpose(int pursposeIndex){
    servicePurposes.removeAt(pursposeIndex);
  }

  void addServiceRequirements(String requirement){
    serviceRequirements.add(requirement);
  }

  void removeServiceRequirements(int requirementIndex){
    serviceRequirements.removeAt(requirementIndex);
  }
}

class SpecialistProduct extends Product{
  DateTime registrationDate = DateTime.now();
  String specialistProductName;
  List<String> specialistProductPurpose;
  String specialistDirectionOfUse;
  int numberOfSoldItems = 0;
  double specialistProductPrice;

  SpecialistProduct(int languageIndex, this.specialistProductName,
  this.specialistProductPurpose, this.specialistDirectionOfUse,
  this.specialistProductPrice) : super(languageIndex);

  void increaseSoldItems(){
    numberOfSoldItems = numberOfSoldItems + 1;
  }

  @override
  List<String> findPurpose() {
    
    return specialistProductPurpose;
  }

  @override
  String howToUse() {
    return specialistDirectionOfUse;
  }
}