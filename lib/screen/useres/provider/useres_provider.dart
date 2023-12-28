import 'package:flutter/material.dart';
import 'package:json_app/screen/useres/model/useres_model.dart';
import 'package:json_app/utils/json_helper.dart';

class UseresProvider with ChangeNotifier{

  UseresModel? useresModel =UseresModel();

  Future<void> useresgetData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    UseresModel useresl1 = await jsonHelper.UserJsonModel();
    useresModel=useresl1;
    notifyListeners();
  }
}