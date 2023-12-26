import 'package:flutter/material.dart';
import 'package:json_app/screen/posts/model/posts_model.dart';
import 'package:json_app/utils/json_helper.dart';

class PostsProvider with ChangeNotifier{

  List<PostsModel> postsl2=[];
  Future<void> getData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    List<PostsModel> postsl1 = await jsonHelper.postsToList();
    postsl2=postsl1;
    notifyListeners();
  }
}