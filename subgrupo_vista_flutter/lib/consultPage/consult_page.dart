
import 'package:flutter/cupertino.dart';
import 'package:subgrupo_vista_flutter/consultPage/consult_page_state.dart';

abstract class ConsultPage extends StatefulWidget {
  
  final String title;
  const ConsultPage(this.title,{Key? key}) : super(key: key);

  @override
  ConsultPageState createState();


}
