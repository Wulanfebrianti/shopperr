import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/palette.dart';
import '../../controller/history_getx.dart';

class TileCard extends StatelessWidget {
  final ControllerHistory c = Get.put(ControllerHistory());
  var category, estimate,product_1, product_quantity, hasnotes, notes_1, status, date;

  TileCard({Key? key, this.date,this.category, this.estimate,this.product_1, this.product_quantity, this.hasnotes, this.notes_1, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10,left: 10, right: 10,),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
          children: [
            _leading(category: category, estimate: estimate),
            _title(product_1: product_1, product_quantity: product_quantity,hasnotes: hasnotes,notes_1: notes_1,status: status),
            SizedBox(width: 10,)

          ],
        )
    );
  }

  _leading({category, estimate}){
    return Column(
      children: [
        _image(category: category),
        _estimate(time: estimate),
        SizedBox(height: 15,),
      ],
    );
  }

  _title({product_1, product_quantity, hasnotes, notes_1, status}){
    return Expanded(
        child: ConstrainedBox(
          constraints:new BoxConstraints(
            minHeight: 35.0,
            maxHeight: 100.0,
          ),
          child: Stack(
            children: [
              _status(status: status),
              _product(product_1: product_1, product_quantity: product_quantity, hasnotes: hasnotes, notes_1: notes_1),
              SizedBox(height: 5,),
              _finishButton(status: status)
            ],
          ),
        ));
  }

  _status({status}){
    return Align(
      child: Container(
        child: Container(
          margin: EdgeInsets.only(bottom: 2, top: 2, left: 15, right: 15),
          child: c.pageHistory==0?Text(status==0?'diproses':status==1?'diperjalanan':status==2?'sudah tiba':'',style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 15), ):Text(date,style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 15), ),
        ),
        decoration: BoxDecoration(
            color: c.pageHistory==0?status==0?Palette.transparent2:status==1?Palette.transparent:status==2?Palette.transparent:Colors.white:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),
      ),
      alignment: Alignment.topRight,
    );
  }
  _product({product_1, product_quantity, bool? hasnotes, notes_1}){
    notes_1!=null?notes_1 = notes_1.substring(0,17):null;
    hasnotes==null ? hasnotes=false:hasnotes;
    product_quantity==1?product_quantity=0: product_quantity -= 1;
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            children: [
              Text(product_1, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),

              hasnotes?Icon(Icons.sticky_note_2_sharp,size: 15,color: Colors.black54,):SizedBox()
            ],
          ),
          SizedBox(height: 5,),
          product_quantity!=0?Text('+ ${product_quantity} barang lainnya', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal, fontSize: 15),):hasnotes?Text('${notes_1}...', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal, fontSize: 15),):Text('Tidak ada notes', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal, fontSize: 15),)
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
  _image({category}){
    return Container(
      child: Container(
        child:Image.asset(category, fit: BoxFit.cover),
        height: 50,
        width: 50,
        margin: EdgeInsets.all(10),
      ),
      decoration: BoxDecoration(
          color: Palette.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      margin: EdgeInsets.all(10),
    );
  }
  _finishButton({status}){
    return Align(
      child: Container(
        child: Container(
          margin: EdgeInsets.only(bottom: 2, top: 2, left: 15, right: 15),
          child: Text(c.pageHistory==0?status==2?'Selesaikan pesanan':'':c.pageHistory==1?status==1?'Ulas':'':'Pesan Lagi',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15), ),
        ),
        decoration: BoxDecoration(
            color: c.pageHistory==0?status==2?Palette.activeColor:Colors.white:status==1?Palette.activeColor:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
      ),
      alignment: Alignment.bottomRight,
    );
  }
  _estimate({time}){
    return Row(
      children: [
        c.pageHistory==0?Icon(Icons.timelapse, size: 15, color: Colors.black54,):
        Icon(Icons.history, size: 15, color: Colors.black54, ),
        Text('${time} menit', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 15),),
      ],
    );
  }
}
