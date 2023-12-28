import 'package:flutter/material.dart';
import 'package:json_app/screen/useres/model/useres_model.dart';
import 'package:json_app/utils/json_helper.dart';

class UseresProvider with ChangeNotifier{

  UseresModel? useresl2;

  Future<void> getData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    UseresModel useresl1 = await jsonHelper.UseresJsonModel();
    useresl2=useresl1;
    notifyListeners();
  }
}