import 'package:flutter/cupertino.dart';
import '../pageController/page_controller.dart';
import 'consult_page.dart';

abstract class ConsultPageState extends State<ConsultPage> {
  late ConsultPageController controller;

  dynamic contex;

  void setContex(value) {
    setState(() {
      contex = controller.get(value);
    });
  }

  @override
  Widget build(BuildContext context);

  void assignController();
}
