class SalesPerson{
  String name;
  String surname;
  String phoneNumber;
  String southAfricanIDNumber;
  String accountNumber;
  String generatedRefId;

  SalesPerson(
    {
      required this.name,
      required this.surname,
      required this.phoneNumber,
      required this.southAfricanIDNumber,
      required this.accountNumber,
      required this.generatedRefId,
    }
  );

  Map<String,dynamic> toJson(){
    return {
      'Promoter\'s Name' : name,
      'Promoter\'s Surname': surname,
      'Promoter\'s Phone Number' : phoneNumber,
      'Promoter\'s Id Number': southAfricanIDNumber,
      'Promoter\'s Acc Number' : accountNumber,
      'Promoter\'s Ref ID' : generatedRefId,
    };
  }
}