import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/model/albums_model.dart';
import 'package:json_app/utils/json_helper.dart';

class AlbumsProvider with ChangeNotifier{

  List<AlbumsModel> albumsl2=[];
  Future<void> getData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    List<AlbumsModel> albumsl1 = await jsonHelper.albumsToList();
    albumsl2=albumsl1;
    notifyListeners();
  }
}