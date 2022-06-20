import 'package:flutter/material.dart';
import 'package:subgrupo_vista_flutter/pageController/doctor_controller_adapter.dart';
import 'package:subgrupo_vista_flutter/pageController/specialties_controller_adapter.dart';
import '../listView/doctor_list_view.dart';
import 'consult_page_state.dart';

class DoctorConsultPageState extends ConsultPageState {
  dynamic dropdownValue;

  @override
  Widget build(BuildContext context) {
    //Barra de Filtro
    var bodyfilter = createBodyFilter();
    var bodydoctors = createBodyDoctors();

    // Retorna el contenido de la pagina
    return Scaffold(
        appBar: AppBar(
          title: const Text("Doctores"),
        ),
        body: Column(
            children: <Widget>[bodyfilter, Expanded(child: bodydoctors)]
        )
    );
  }

//////////////// Widgets individuales
  ///
  ///
  ///
  ///
  Widget createBodyFilter() {
    controller = SpecialtiesControllerAdapter();

    return FutureBuilder<List<dynamic>?>(
      future: super.setContex("Todos"),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<dynamic>?> snapshotSpecialties,
      ) {
          if (snapshotSpecialties.connectionState == ConnectionState.waiting) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
              ],
            );
          } else if (snapshotSpecialties.connectionState ==
              ConnectionState.done) {
            if (snapshotSpecialties.hasError) {
              return const Text('Error');
            } else if (snapshotSpecialties.hasData) {
              return
                  ////////////////////////////////////////////////////////////////Filtro
                  Container(
                      margin: const EdgeInsets.all(5),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                controller = DoctorControllerAdapter();
                                contex=super.setContex(dropdownValue);
                              });
                            },
                            items: List.generate(
                              snapshotSpecialties.data!.length,
                              (index) => DropdownMenuItem(
                                value: snapshotSpecialties.data![index]["name"],
                                child: Text(
                                  snapshotSpecialties.data![index]["name"],
                                ),
                              ),
                            )),
                      )
                  ); ///////////////////////////////Fin del Filtro
            } else {
              return const Text('Empty data');
            }
          } else {
            return const Center(
              child: Text(
                '??',
                style: TextStyle(fontSize: 25),
              )
            );
          }
        },
    );
  }

//Widget para el Future
  Widget createBodyDoctors() {
    controller = DoctorControllerAdapter();

    return FutureBuilder<List<dynamic>?>(
      future: contex,
          //super.setContex("Todos"),
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
          } else {
            return const Text('Empty data');
          }
        } else {
          return const Center(
              child: Text(
            'Seleccione un Filtro',
            style: TextStyle(fontSize: 25),
          ));
        }
      },
    );
  }
}
