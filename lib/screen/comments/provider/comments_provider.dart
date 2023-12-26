import 'package:flutter/material.dart';
import 'package:json_app/screen/comments/model/comments_model.dart';
import 'package:json_app/utils/json_helper.dart';

class CommentsProvider with ChangeNotifier{

  List<CommentsModel> commentsl2=[];
  Future<void> getData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    List<CommentsModel> commentsl1 = await jsonHelper.commentsToList();
    commentsl2=commentsl1;
    notifyListeners();
  }
}