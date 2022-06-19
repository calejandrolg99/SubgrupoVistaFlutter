import 'package:flutter/material.dart';
import '../listView/doctor_list_view.dart';
import '../pageController/doctor_controller.dart';
import 'consult_page_state.dart';

class DoctorConsultPageState extends ConsultPageState {
  dynamic dropdownValue;

  List<String> assignDrowpDownItems() {
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
      'Gastroenterologia',
      'Ginecologia'
    ];
    return assignDrowpDownItems;
  }

  @override
  Widget build(BuildContext context) {
    assignController();

    //Barra de Filtro
    var filter = createFilter();
    var fbuilder = createFutureBuilder();

    // Retorna el contenido de la pagina
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctores"),
      ),
      body: Column(
        children: <Widget>[
          filter, 
          Expanded(
            child: fbuilder
          )
        ],
      ),
    );
  }

  @override
  void assignController() {
    controller = DoctorConsultController();
  }

//////////////// Widgets individuales

//Widget para el Future
  Widget createFutureBuilder() {
    return FutureBuilder<List<dynamic>?>(
      future: contex,
      builder: (
        BuildContext context,
        AsyncSnapshot<List<dynamic>?> snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
            ],
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text('Error');
          } else if (snapshot.hasData) {
            return DoctorListView(snapshot.data);
          } else  {
            return const Text('Empty data');
          }
        } else {
          return const Center(child: Text('Seleccione un Filtro', style: TextStyle(fontSize: 25),));
        }
      },
    );
  }

  //Widget para el Filtro
  Widget createFilter() {
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
              super.setContex(
                  dropdownValue); 
            });
          },
          items: assignDrowpDownItems()
              .map<DropdownMenuItem<String>>((String value) {
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
}
