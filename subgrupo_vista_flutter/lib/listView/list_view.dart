import 'package:flutter/material.dart';
import '../itemView/item_view.dart';


// ignore: must_be_immutable
abstract class Listview extends StatelessWidget {

  @protected
  late List<ItemView> items;

  Listview(Map<String,dynamic> contex, {Key? key}) : super(key: key) {
    items = [];
    createItems(contex);
  }

  void createItems(Map<String,dynamic> items);

  @override
  Widget build(BuildContext context);
   
}
