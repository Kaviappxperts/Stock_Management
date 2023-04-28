import 'dart:convert';

import 'package:flutter_sample_design/core/baseurls.dart';
import 'package:flutter_sample_design/core/networkutils.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

Future getsubNews(productid) async {
  var url = "${baseUrl}Getbycode?OrganizationId=1&ProductId=$productid";
  return handleResponse(await http.get(
    Uri.parse(url),
  ));
}

Future updateStockDetail(req) async {
  var url = "${baseUrl}UpdateInventory";
  return handleResponse(
      await http.post(Uri.parse(url), body: json.encode(req), headers: {
    'Content-Type': 'application/json',
  }));
}
