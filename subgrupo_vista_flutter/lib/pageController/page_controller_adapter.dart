
import 'package:subgrupo_vista_flutter/pageController/page_controller.dart';

abstract class ConsultPageControllerAdapter<E> implements ConsultPageController<E>{
  late ConsultPageController<E> controller;

  @override
  Future<dynamic> get(E value);

}