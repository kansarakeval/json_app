import 'package:flutter/widgets.dart';
import 'package:json_app/screen/photos/model/photos_model.dart';
import 'package:json_app/utils/json_helper.dart';

class PhotosProvider with ChangeNotifier{

  List<PhotosModel> l2=[];
  Future<void> getData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    List<PhotosModel> l1 = await jsonHelper.photosToList();
    l2=l1;
    notifyListeners();
  }
}