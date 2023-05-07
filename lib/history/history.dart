import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/palette.dart';
import '../controller/history_getx.dart';
import 'canceled/canceled.dart';
import 'going_on/going_on.dart';
import 'navbar/navbar_history_build.dart';
import 'succes/succes.dart';

class HistoryPage extends StatelessWidget {
   HistoryPage({Key? key}) : super(key: key);
  final ControllerHistory c = Get.put(ControllerHistory());
  String food = 'assets/images/friedrice.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width- 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Transaksi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Icon(
                              Icons.filter_list_alt,
                              color: Colors.black,
                              size: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              BuildNavigationBar(),
              SizedBox(height: 10,),
              Obx(()=> Expanded(
                child:
                c.pageHistory==0?GoingOnPage():
                c.pageHistory==1?SuccesPage():
                c.pageHistory==2?CanceledPage():
                SizedBox(),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




