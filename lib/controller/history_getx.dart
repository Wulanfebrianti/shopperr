import 'package:get/get.dart';

class ControllerHistory extends GetxController{

  var pageHistory = 0.obs;

  page1(){
    return pageHistory.value =0;
  }
  page2(){
    return pageHistory.value =1;
  }
  page3(){
    return pageHistory.value =2;
  }



}