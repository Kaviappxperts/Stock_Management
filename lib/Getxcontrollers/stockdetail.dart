import 'package:flutter_sample_design/apiservices/apiservice.dart';
import 'package:flutter_sample_design/model/stockmodel.dart';
import 'package:flutter_sample_design/pages/stockupdatepage.dart';
import 'package:get/get.dart';

import 'dart:developer' as log;

class DataController extends GetxController {
  List<StockDetails> products = [];
 
  RxString type = "".obs;

  var isDataLoading = false.obs;

  @override
  void onInit() {
   
    super.onInit();
  }


  getProduct(type) {
    getsubNews(type).then((value) {
      //  print("Here comess${value["data"]}");
      products = List<Map<String, dynamic>>.from(value["Data"])
          .map((e) => StockDetails.fromJson(e))
          .toList();
      print("Here comess${products.length}");
       isDataLoading(true);
      Get.to(StockUpdateDetais());
     
      print("Here comess:$isDataLoading");
    });
  }
}
