import 'package:flutter/material.dart';

import '../tile/tile.dart';

class CanceledPage extends StatelessWidget {
  CanceledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return TileCard(
          category: data[index]['category'],
          product_1: data[index]['product_1'],
          product_quantity: data[index]['product_quantity'],
          hasnotes: data[index]['hasnotes'],
          notes_1: data[index]['notes_1'],
          status: data[index]['status'],
          date: data[index]['date'],
          estimate: data[index]['estimate'],);
      },);
  }

  List<Map<String, dynamic>> data = [
    {
      'category': 'assets/images/friedrice.png',
      'estimate': 12,
      'product_1': 'Nasi Goreng',
      'product_quantity': 8,
      'date': '1 Apr 2023',
      'hasnotes': false,
      'notes_1':null,
      'status' : 0
    },
    {
      'category': 'assets/images/friedrice.png',
      'estimate': 12,
      'product_1': 'Nasi Goreng',
      'date': '1 Apr 2023',
      'product_quantity': 5,
      'hasnotes': true,
      'notes_1':null,
      'status' : 1
    },
    {
      'category': 'assets/images/friedrice.png',
      'estimate': 15,
      'product_1': 'Nasi Goreng',
      'date': '1 Apr 2023',
      'product_quantity': 3,
      'hasnotes': false,
      'notes_1':null,
      'status' : 1
    },

  ];
}
