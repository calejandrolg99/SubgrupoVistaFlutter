import 'package:flutter/material.dart';
import '../itemView/item_view.dart';


abstract class Listview extends StatelessWidget {

  @protected
  late List<ItemView> items;

  Listview(List<dynamic> contex, {Key? key}) : super(key: key) {
    items = [];
    createItems(contex);
  }

  void createItems(List<dynamic> items);

  @override
  Widget build(BuildContext context);
   
}
