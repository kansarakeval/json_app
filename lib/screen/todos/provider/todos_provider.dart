import 'package:flutter/material.dart';
import 'package:json_app/screen/todos/model/todos_model.dart';
import 'package:json_app/utils/json_helper.dart';

class TodosProvider with ChangeNotifier{

  List<TodoModel> todosl2=[];
  Future<void> getData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    List<TodoModel> todosl1 = await jsonHelper.todosToList();
    todosl2=todosl1;
    notifyListeners();
  }
}