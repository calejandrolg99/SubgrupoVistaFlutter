import 'package:flutter/material.dart';
import '../listView/doctor_list_view.dart';
import '../pageController/doctor_controller.dart';
import 'consult_page_state.dart';

class DoctorConsultPageState extends ConsultPageState {
  var dropdownValue= "Todos";

  List<String> assignDrowpDownItems(){
    List<String> assignDrowpDownItems = [
        'Todos',
        'Traumatologia',
        'Pediatria',
        'Cardiologia',
        'Neurologia',
        'Dermatologia',
        'Urologia',
        'Oftalmologia',
        'Cirugia',
        'Radiologia',
        'Gastroenterologia'
    ];
    return assignDrowpDownItems;
  }

  Widget createFilter(){

    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
              setContex(dropdownValue);
            });
          },
          items: assignDrowpDownItems().map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          isExpanded: true,
          //isDense: true,
          iconSize: 36,
          icon: const Icon(
            Icons.arrow_drop_down_rounded,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  void assignController(){
    controller = DoctorConsultController();
  }


  @override
  Widget build(BuildContext context) {
    assignController();

    //Barra de Filtro
    var filter = createFilter();

    // Retorna el contenido de la pagina
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctores"),
      ),
      body: Column(
        children: <Widget>[
            filter,
          Expanded(
            child: DoctorListView(contex)
          )
        ],
      ),
    );
  }
}
