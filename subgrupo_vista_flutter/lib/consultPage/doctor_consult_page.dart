
import 'package:flutter/cupertino.dart';
import 'package:subgrupo_vista_flutter/consultPage/consult_page.dart';
import 'doctor_consult_page_state.dart';

class DoctorConsultPage extends ConsultPage {
  const DoctorConsultPage(title,{Key? key}) : super(title, key: key);

  @override
  DoctorConsultPageState createState() {
    return DoctorConsultPageState();
  }

}


