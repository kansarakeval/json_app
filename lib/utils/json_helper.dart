import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_app/screen/photos/model/photos_model.dart';

class JsonHelper {
  Future<List<PhotosModel>> photosToList() async {
    //assets -> Variable
    var photosString = await rootBundle.loadString("assets/json/photos.json");
    //String -> json
    List photo = jsonDecode(photosString);

   List<PhotosModel> photosModelList = photo.map((e) => PhotosModel.mapToModel(e)).toList();

   return photosModelList;
  }
}
