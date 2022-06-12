import 'package:flutter/material.dart';
import '../listView/doctor_list_view.dart';
import 'consult_page_state.dart';

class DoctorConsultPageState extends ConsultPageState {
  var dropdownValue= "Todos";

  @override
  Widget build(BuildContext context) {
    List<String> itemsView = contex['specialities'];

    //Barra de Filtro
    var filter = Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black, width: 1)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {dropdownValue = newValue!;});
                            },
                            items: itemsView.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(value: value, child: Text(value),);
                            }).toList(),
                            isExpanded: true,
                            //isDense: true,
                            iconSize: 36,
                            icon: Icon(Icons.arrow_drop_down_rounded, color: Colors.black,),
                          ),
                        ),
                      );

    // Retorna el contenido de la pagina
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctores"),
      ),

      body: Column(
        children: <Widget>[
           //Align(
              //alignment: Alignment.centerRight,
              //child: 
              filter,
            //),
          Expanded(
            child: DoctorListView(contex)
          )
        ],
      ),
    );
  }
}
