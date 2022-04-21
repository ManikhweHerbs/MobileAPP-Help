import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikhwe_herbs/models/service_management.dart';

class ServiceView extends StatefulWidget{

  final SpecialistService specialistService;

  const ServiceView(this.specialistService, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ServiceViewState();
  }
  
}

class _ServiceViewState extends State<ServiceView>{

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Ukuyolahla Isilwane
        Text(widget.specialistService.name),
        ElevatedButton(
          // Funda Incazelo
          child: Text(Language.viewDescription[widget.specialistService.languageIndex]),
          onPressed: (){
            
          },
        ),
        Text(
          widget.specialistService.numberOfServiceRequests.toString()
        ),
        Text(
          'R' + widget.specialistService.price.toString()
        ),
        Checkbox(
          value: widget.specialistService.isSelected, 
          onChanged: (isSelected){
            widget.specialistService.isSelected = !widget.specialistService.isSelected;
          }
        ),
      ],
    );
  }
  
}

class Language {
  static const viewDescription = ['Funda Incazelo'];
  static const select = ['Thola Lolusizo?'];
}