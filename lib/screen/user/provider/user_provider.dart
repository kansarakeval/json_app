import 'package:flutter/material.dart';
import 'package:json_app/utils/json_helper.dart';

import '../model/user_model.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> userl2 = [];

  Future<void> getUserData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<UserModel> userl1 = await jsonHelper.userToList();
    userl2 = userl1;
    notifyListeners();
  }
}
