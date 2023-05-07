import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/palette.dart';
import '../../controller/history_getx.dart';

class BuildNavigationBar extends StatelessWidget {
  BuildNavigationBar({Key? key}) : super(key: key);
  final ControllerHistory c = Get.put(ControllerHistory());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _tile(index: 0),
          _tile(index: 1),
          _tile(index: 2),
        ],
      ),);
  }
  _tile({index}){
    return Obx(
          () => InkWell(
          onTap: () {
            index==0? c.page1():
            index==1? c.page2():c.page3();
          },
          child: c.pageHistory == index
              ? Container(
            decoration: BoxDecoration(
                color: Palette.activeColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.only(left: index==1? 20: 15, right: index==1? 20: 15, top: 10, bottom: 10),
              child: Text(
                c.pageHistory==0?
                'Berlangsung':c.pageHistory==1?
                'Berhasil':c.pageHistory==2?
                'Dibatalkan':'',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          )
              : Container(
            decoration: BoxDecoration(
                color: Palette.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.only(left: index==1? 20: 15, right: index==1? 20: 15, top: 10, bottom: 10),
              child: Text(
                index==0?
                'Berlangsung':index==1?
                'Berhasil':index==2?
                'Dibatalkan':'',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          )),
    );
  }

}


