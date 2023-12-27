import 'package:flutter/material.dart';
import 'package:json_app/screen/conuntry/model/cuntry_model.dart';
import 'package:json_app/utils/json_helper.dart';


class CountryProvider with ChangeNotifier {
  List<CuntryModel> counteryl2 = [];

  Future<void> getCounteryData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CuntryModel> counteryl1 = await jsonHelper.contryToList();
    counteryl2 = counteryl1;
    notifyListeners();
  }
}
