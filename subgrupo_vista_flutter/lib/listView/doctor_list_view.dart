import 'package:flutter/material.dart';
import 'package:subgrupo_vista_flutter/listView/list_view.dart';
import '../itemView/doctor_item_view.dart';



// ignore: must_be_immutable
class DoctorListView extends Listview{
  
  DoctorListView(Map<String, dynamic> contex, {Key? key}) : super(contex,key: key);

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: items[index],
          ),
        );
      },
    );

  }

  @override
  void createItems(Map<String, dynamic> items) {
    List<dynamic> itemsView = items['doctors'];

    for (var item in itemsView) {
      this.items.add(DoctorItemView(item['name'], item['gender'], item['photo']));
    }
  }

  
}