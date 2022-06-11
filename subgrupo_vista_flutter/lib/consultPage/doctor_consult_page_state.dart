
import 'package:flutter/material.dart';
import '../listView/doctor_list_view.dart';
import 'consult_page_state.dart';

class DoctorConsultPageState extends ConsultPageState {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          heightFactor: 10,
          child: DoctorListView(contex)
              ),
    );
  }
}